; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__clone_map_groups.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__clone_map_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"broken map groups on thread %d/%d parent %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread*, i32)* @thread__clone_map_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread__clone_map_groups(%struct.thread* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.thread*, %struct.thread** %5, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.thread*, %struct.thread** %6, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = call i32 @thread__prepare_access(%struct.thread* %16)
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %32, i64 %35, i32 %38)
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %18
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = load %struct.thread*, %struct.thread** %6, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @map_groups__clone(%struct.thread* %44, i64 %47)
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 0, %49 ]
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %26, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @thread__prepare_access(%struct.thread*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @map_groups__clone(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
