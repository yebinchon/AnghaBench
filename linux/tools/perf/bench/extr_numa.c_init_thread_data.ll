; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init_thread_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init_thread_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.thread_data* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.thread_data = type { i32, i32 }

@g = common dso_local global %struct.TYPE_4__* null, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_thread_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_thread_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_data*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call %struct.thread_data* @zalloc_shared_data(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.thread_data* %13, %struct.thread_data** %15, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %52, %0
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.thread_data*, %struct.thread_data** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %26, i64 %28
  store %struct.thread_data* %29, %struct.thread_data** %3, align 8
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %32 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %34 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i32 0, i32 0
  %35 = call i32 @CPU_ZERO(i32* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %48, %23
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.thread_data*, %struct.thread_data** %3, align 8
  %46 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %45, i32 0, i32 0
  %47 = call i32 @CPU_SET(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %36

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %16

55:                                               ; preds = %16
  ret void
}

declare dso_local %struct.thread_data* @zalloc_shared_data(i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
