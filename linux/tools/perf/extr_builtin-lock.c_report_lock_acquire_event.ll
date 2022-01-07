; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_report_lock_acquire_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_report_lock_acquire_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.lock_stat = type { i32, i32, i32, i32, i32 }
%struct.thread_stat = type { i32 }
%struct.lock_seq_stat = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lockdep_addr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TRY_LOCK = common dso_local global i32 0, align 4
@READ_LOCK = common dso_local global i32 0, align 4
@bad_hist = common dso_local global i32* null, align 8
@BROKEN_ACQUIRE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Unknown state of lock sequence found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*)* @report_lock_acquire_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_lock_acquire_event(%struct.evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_stat*, align 8
  %8 = alloca %struct.thread_stat*, align 8
  %9 = alloca %struct.lock_seq_stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %13 = load %struct.evsel*, %struct.evsel** %4, align 8
  %14 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %15 = call i8* @perf_evsel__strval(%struct.evsel* %13, %struct.perf_sample* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %10, align 8
  %16 = load %struct.evsel*, %struct.evsel** %4, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %18 = call i8* @perf_evsel__intval(%struct.evsel* %16, %struct.perf_sample* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %11, align 8
  %19 = load %struct.evsel*, %struct.evsel** %4, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %21 = call i8* @perf_evsel__intval(%struct.evsel* %19, %struct.perf_sample* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = call i32 @memcpy(i8** %6, i8** %11, i32 8)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.lock_stat* @lock_stat_findnew(i8* %24, i8* %25)
  store %struct.lock_stat* %26, %struct.lock_stat** %7, align 8
  %27 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %28 = icmp ne %struct.lock_stat* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %139

32:                                               ; preds = %2
  %33 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %34 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %139

38:                                               ; preds = %32
  %39 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %40 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.thread_stat* @thread_stat_findnew(i32 %41)
  store %struct.thread_stat* %42, %struct.thread_stat** %8, align 8
  %43 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %44 = icmp ne %struct.thread_stat* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %139

48:                                               ; preds = %38
  %49 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call %struct.lock_seq_stat* @get_seq(%struct.thread_stat* %49, i8* %50)
  store %struct.lock_seq_stat* %51, %struct.lock_seq_stat** %9, align 8
  %52 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %53 = icmp ne %struct.lock_seq_stat* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %139

57:                                               ; preds = %48
  %58 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %59 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %126 [
    i32 128, label %61
    i32 129, label %61
    i32 130, label %97
    i32 133, label %112
    i32 132, label %112
    i32 131, label %112
  ]

61:                                               ; preds = %57, %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %66 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %65, i32 0, i32 0
  store i32 132, i32* %66, align 4
  br label %96

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @TRY_LOCK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %74 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @READ_LOCK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %84 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %89 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %88, i32 0, i32 0
  store i32 130, i32* %89, align 4
  %90 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %91 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %93 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %87, %64
  br label %128

97:                                               ; preds = %57
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @READ_LOCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %104 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %108 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %138

111:                                              ; preds = %97
  br label %113

112:                                              ; preds = %57, %57, %57
  br label %113

113:                                              ; preds = %112, %111
  %114 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %115 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i32*, i32** @bad_hist, align 8
  %117 = load i64, i64* @BROKEN_ACQUIRE, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %122 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %121, i32 0, i32 3
  %123 = call i32 @list_del_init(i32* %122)
  %124 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %125 = call i32 @free(%struct.lock_seq_stat* %124)
  br label %138

126:                                              ; preds = %57
  %127 = call i32 @BUG_ON(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %96
  %129 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %130 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %134 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %137 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %128, %113, %102
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %54, %45, %37, %29
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i8* @perf_evsel__strval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i8* @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local %struct.lock_stat* @lock_stat_findnew(i8*, i8*) #1

declare dso_local %struct.thread_stat* @thread_stat_findnew(i32) #1

declare dso_local %struct.lock_seq_stat* @get_seq(%struct.thread_stat*, i8*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @free(%struct.lock_seq_stat*) #1

declare dso_local i32 @BUG_ON(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
