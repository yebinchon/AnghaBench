; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__poll_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__poll_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.mmap*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.mmap = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%union.perf_event = type { i32 }
%struct.evsel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%union.perf_event*, i32)* }

@CLONE_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cannot locate proper evsel for the side band event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @perf_evlist__poll_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @perf_evlist__poll_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmap*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca %struct.evsel*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.evlist*
  store %struct.evlist* %12, %struct.evlist** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @CLONE_FS, align 4
  %14 = call i32 @unshare(i32 %13)
  br label %15

15:                                               ; preds = %97, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %98

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %20 = load %struct.evlist*, %struct.evlist** %3, align 8
  %21 = getelementptr inbounds %struct.evlist, %struct.evlist* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.evlist*, %struct.evlist** %3, align 8
  %31 = call i32 @evlist__poll(%struct.evlist* %30, i32 1000)
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %87, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.evlist*, %struct.evlist** %3, align 8
  %36 = getelementptr inbounds %struct.evlist, %struct.evlist* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %33
  %41 = load %struct.evlist*, %struct.evlist** %3, align 8
  %42 = getelementptr inbounds %struct.evlist, %struct.evlist* %41, i32 0, i32 0
  %43 = load %struct.mmap*, %struct.mmap** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mmap, %struct.mmap* %43, i64 %45
  store %struct.mmap* %46, %struct.mmap** %8, align 8
  %47 = load %struct.mmap*, %struct.mmap** %8, align 8
  %48 = call i64 @perf_mmap__read_init(%struct.mmap* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %87

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %81, %51
  %53 = load %struct.mmap*, %struct.mmap** %8, align 8
  %54 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %53)
  store %union.perf_event* %54, %union.perf_event** %9, align 8
  %55 = icmp ne %union.perf_event* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.evlist*, %struct.evlist** %3, align 8
  %58 = load %union.perf_event*, %union.perf_event** %9, align 8
  %59 = call %struct.evsel* @perf_evlist__event2evsel(%struct.evlist* %57, %union.perf_event* %58)
  store %struct.evsel* %59, %struct.evsel** %10, align 8
  %60 = load %struct.evsel*, %struct.evsel** %10, align 8
  %61 = icmp ne %struct.evsel* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.evsel*, %struct.evsel** %10, align 8
  %64 = getelementptr inbounds %struct.evsel, %struct.evsel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32 (%union.perf_event*, i32)*, i32 (%union.perf_event*, i32)** %65, align 8
  %67 = icmp ne i32 (%union.perf_event*, i32)* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.evsel*, %struct.evsel** %10, align 8
  %70 = getelementptr inbounds %struct.evsel, %struct.evsel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32 (%union.perf_event*, i32)*, i32 (%union.perf_event*, i32)** %71, align 8
  %73 = load %union.perf_event*, %union.perf_event** %9, align 8
  %74 = load %struct.evsel*, %struct.evsel** %10, align 8
  %75 = getelementptr inbounds %struct.evsel, %struct.evsel* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %72(%union.perf_event* %73, i32 %77)
  br label %81

79:                                               ; preds = %62, %56
  %80 = call i32 @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %68
  %82 = load %struct.mmap*, %struct.mmap** %8, align 8
  %83 = call i32 @perf_mmap__consume(%struct.mmap* %82)
  store i32 1, i32* %7, align 4
  br label %52

84:                                               ; preds = %52
  %85 = load %struct.mmap*, %struct.mmap** %8, align 8
  %86 = call i32 @perf_mmap__read_done(%struct.mmap* %85)
  br label %87

87:                                               ; preds = %84, %50
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %33

90:                                               ; preds = %33
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %98

97:                                               ; preds = %93, %90
  br label %15

98:                                               ; preds = %96, %15
  ret i8* null
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @evlist__poll(%struct.evlist*, i32) #1

declare dso_local i64 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local %struct.evsel* @perf_evlist__event2evsel(%struct.evlist*, %union.perf_event*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @perf_mmap__consume(%struct.mmap*) #1

declare dso_local i32 @perf_mmap__read_done(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
