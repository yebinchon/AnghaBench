; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_interval_tree_test.c_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_interval_tree_test.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@nnodes = common dso_local global i32 0, align 4
@rnd = common dso_local global i32 0, align 4
@max_endpoint = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_2__* null, align 8
@nsearches = common dso_local global i32 0, align 4
@queries = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @nnodes, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = call i32 @prandom_u32_state(i32* @rnd)
  %10 = ashr i32 %9, 4
  %11 = load i32, i32* @max_endpoint, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %2, align 4
  %13 = call i32 @prandom_u32_state(i32* @rnd)
  %14 = ashr i32 %13, 4
  %15 = load i32, i32* %2, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %4

32:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @nsearches, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = call i32 @prandom_u32_state(i32* @rnd)
  %39 = ashr i32 %38, 4
  %40 = load i32, i32* @max_endpoint, align 4
  %41 = srem i32 %39, %40
  %42 = load i32*, i32** @queries, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %33

49:                                               ; preds = %33
  ret void
}

declare dso_local i32 @prandom_u32_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
