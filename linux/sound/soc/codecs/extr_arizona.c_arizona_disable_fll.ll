; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_disable_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_disable_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { i64, %struct.arizona* }
%struct.arizona = type { i32, i32 }

@ARIZONA_FLL1_FREERUN = common dso_local global i32 0, align 4
@ARIZONA_FLL1_ENA = common dso_local global i32 0, align 4
@ARIZONA_FLL1_SYNC_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_fll*)* @arizona_disable_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_disable_fll(%struct.arizona_fll* %0) #0 {
  %2 = alloca %struct.arizona_fll*, align 8
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %2, align 8
  %6 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %7 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %6, i32 0, i32 1
  %8 = load %struct.arizona*, %struct.arizona** %7, align 8
  store %struct.arizona* %8, %struct.arizona** %3, align 8
  %9 = load %struct.arizona*, %struct.arizona** %3, align 8
  %10 = getelementptr inbounds %struct.arizona, %struct.arizona* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %13 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %17 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %18 = call i32 @regmap_update_bits_async(i32 %11, i64 %15, i32 %16, i32 %17)
  %19 = load %struct.arizona*, %struct.arizona** %3, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %23 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @ARIZONA_FLL1_ENA, align 4
  %27 = call i32 @regmap_update_bits_check(i32 %21, i64 %25, i32 %26, i32 0, i32* %4)
  %28 = load %struct.arizona*, %struct.arizona** %3, align 8
  %29 = getelementptr inbounds %struct.arizona, %struct.arizona* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %32 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 17
  %35 = load i32, i32* @ARIZONA_FLL1_SYNC_ENA, align 4
  %36 = call i32 @regmap_update_bits_check(i32 %30, i64 %34, i32 %35, i32 0, i32* %5)
  %37 = load %struct.arizona*, %struct.arizona** %3, align 8
  %38 = getelementptr inbounds %struct.arizona, %struct.arizona* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %41 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load i32, i32* @ARIZONA_FLL1_FREERUN, align 4
  %45 = call i32 @regmap_update_bits_async(i32 %39, i64 %43, i32 %44, i32 0)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %50 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %51 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 16
  %54 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %49, i64 %53, i32 0)
  br label %55

55:                                               ; preds = %48, %1
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %60 = load %struct.arizona_fll*, %struct.arizona_fll** %2, align 8
  %61 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @arizona_set_fll_clks(%struct.arizona_fll* %59, i64 %62, i32 0)
  %64 = load %struct.arizona*, %struct.arizona** %3, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_runtime_put_autosuspend(i32 %66)
  br label %68

68:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @regmap_update_bits_async(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_update_bits_check(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @arizona_set_fll_clks(%struct.arizona_fll*, i64, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
