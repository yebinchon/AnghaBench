; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_report_lock_contended_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_report_lock_contended_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.lock_stat = type { i32, i32, i32, i32 }
%struct.thread_stat = type { i32 }
%struct.lock_seq_stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lockdep_addr\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bad_hist = common dso_local global i32* null, align 8
@BROKEN_CONTENDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unknown state of lock sequence found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*)* @report_lock_contended_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_lock_contended_event(%struct.evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_stat*, align 8
  %8 = alloca %struct.thread_stat*, align 8
  %9 = alloca %struct.lock_seq_stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %12 = load %struct.evsel*, %struct.evsel** %4, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %14 = call i8* @perf_evsel__strval(%struct.evsel* %12, %struct.perf_sample* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %10, align 8
  %15 = load %struct.evsel*, %struct.evsel** %4, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %17 = call i32 @perf_evsel__intval(%struct.evsel* %15, %struct.perf_sample* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = call i32 @memcpy(i8** %6, i32* %11, i32 8)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.lock_stat* @lock_stat_findnew(i8* %19, i8* %20)
  store %struct.lock_stat* %21, %struct.lock_stat** %7, align 8
  %22 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %23 = icmp ne %struct.lock_stat* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %29 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %95

33:                                               ; preds = %27
  %34 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.thread_stat* @thread_stat_findnew(i32 %36)
  store %struct.thread_stat* %37, %struct.thread_stat** %8, align 8
  %38 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %39 = icmp ne %struct.thread_stat* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %95

43:                                               ; preds = %33
  %44 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call %struct.lock_seq_stat* @get_seq(%struct.thread_stat* %44, i8* %45)
  store %struct.lock_seq_stat* %46, %struct.lock_seq_stat** %9, align 8
  %47 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %48 = icmp ne %struct.lock_seq_stat* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %95

52:                                               ; preds = %43
  %53 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %54 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %71 [
    i32 128, label %56
    i32 132, label %57
    i32 129, label %58
    i32 133, label %58
    i32 130, label %58
    i32 131, label %58
  ]

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %95

57:                                               ; preds = %52
  br label %73

58:                                               ; preds = %52, %52, %52, %52
  %59 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %60 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i32*, i32** @bad_hist, align 8
  %62 = load i64, i64* @BROKEN_CONTENDED, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %67 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %66, i32 0, i32 2
  %68 = call i32 @list_del_init(i32* %67)
  %69 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %70 = call i32 @free(%struct.lock_seq_stat* %69)
  br label %94

71:                                               ; preds = %52
  %72 = call i32 @BUG_ON(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %57
  %74 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %75 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %74, i32 0, i32 0
  store i32 131, i32* %75, align 4
  %76 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %77 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %81 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %84 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  %87 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %88 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %90 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %93 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %73, %58
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %56, %49, %40, %32, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @perf_evsel__strval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

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
