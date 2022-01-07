; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_update_runtime_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_update_runtime_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_runtime = type { i64, i64, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"time travel: wakeup time for task > previous sched_switch event\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"time travel: last sched out time for task > previous sched_switch event\0A\00", align 1
@TASK_RUNNING = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_runtime*, i64, i64)* @timehist_update_runtime_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timehist_update_runtime_stats(%struct.thread_runtime* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.thread_runtime*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.thread_runtime* %0, %struct.thread_runtime** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %9 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %24, i32 0, i32 11
  store i64 %23, i64* %25, align 8
  %26 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %32 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %46

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %44, i32 0, i32 9
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %36
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %92

55:                                               ; preds = %47
  %56 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %57 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* %7, align 8
  %66 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %67 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TASK_RUNNING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %74 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  br label %90

75:                                               ; preds = %60
  %76 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TASK_UNINTERRUPTIBLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  br label %89

85:                                               ; preds = %75
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %88 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %87, i32 0, i32 7
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %55
  br label %92

92:                                               ; preds = %91, %53
  br label %93

93:                                               ; preds = %92, %3
  %94 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %95 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %94, i32 0, i32 13
  %96 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %97 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %96, i32 0, i32 11
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @update_stats(i32* %95, i64 %98)
  %100 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %101 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %100, i32 0, i32 11
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %104 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  %109 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %110 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %109, i32 0, i32 9
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %113 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %119 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %122 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  %127 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %128 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %131 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 8
  %136 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %137 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.thread_runtime*, %struct.thread_runtime** %4, align 8
  %140 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @update_stats(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
