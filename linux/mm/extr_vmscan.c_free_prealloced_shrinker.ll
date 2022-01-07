; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_free_prealloced_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_free_prealloced_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32, i32* }

@SHRINKER_MEMCG_AWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_prealloced_shrinker(%struct.shrinker* %0) #0 {
  %2 = alloca %struct.shrinker*, align 8
  store %struct.shrinker* %0, %struct.shrinker** %2, align 8
  %3 = load %struct.shrinker*, %struct.shrinker** %2, align 8
  %4 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.shrinker*, %struct.shrinker** %2, align 8
  %10 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SHRINKER_MEMCG_AWARE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.shrinker*, %struct.shrinker** %2, align 8
  %17 = call i32 @unregister_memcg_shrinker(%struct.shrinker* %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.shrinker*, %struct.shrinker** %2, align 8
  %20 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.shrinker*, %struct.shrinker** %2, align 8
  %24 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @unregister_memcg_shrinker(%struct.shrinker*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
