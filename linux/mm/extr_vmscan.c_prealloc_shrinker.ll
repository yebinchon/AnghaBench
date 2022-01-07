; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_prealloc_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_prealloc_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32, i32* }

@SHRINKER_NUMA_AWARE = common dso_local global i32 0, align 4
@nr_node_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHRINKER_MEMCG_AWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prealloc_shrinker(%struct.shrinker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shrinker*, align 8
  %4 = alloca i32, align 4
  store %struct.shrinker* %0, %struct.shrinker** %3, align 8
  store i32 4, i32* %4, align 4
  %5 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %6 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SHRINKER_NUMA_AWARE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @nr_node_ids, align 4
  %13 = load i32, i32* %4, align 4
  %14 = mul i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %20 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %22 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %15
  %29 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %30 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SHRINKER_MEMCG_AWARE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %37 = call i64 @prealloc_memcg_shrinker(%struct.shrinker* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %28
  store i32 0, i32* %2, align 4
  br label %51

42:                                               ; preds = %39
  %43 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %44 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.shrinker*, %struct.shrinker** %3, align 8
  %48 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %41, %25
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @prealloc_memcg_shrinker(%struct.shrinker*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
