; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-pipe.c_worker_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-pipe.c_worker_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32, i32 }

@loops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @worker_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @worker_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.thread_data*
  store %struct.thread_data* %8, %struct.thread_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %57, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @loops, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %15 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %20 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @read(i32 %21, i32* %4, i32 4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %29 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write(i32 %30, i32* %4, i32 4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  br label %56

37:                                               ; preds = %13
  %38 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %39 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @write(i32 %40, i32* %4, i32 4)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 4
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %48 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @read(i32 %49, i32* %4, i32 4)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  br label %56

56:                                               ; preds = %37, %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %9

60:                                               ; preds = %9
  ret i8* null
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
