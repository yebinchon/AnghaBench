; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@REG_SPDIF_SCR = common dso_local global i32 0, align 4
@SCR_SOFT_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_spdif_priv*)* @spdif_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_softreset(%struct.fsl_spdif_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_spdif_priv*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %3, align 8
  %7 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %7, i32 0, i32 0
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  store i32 1000, i32* %6, align 4
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = call i32 @regcache_cache_bypass(%struct.regmap* %10, i32 1)
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = load i32, i32* @REG_SPDIF_SCR, align 4
  %14 = load i32, i32* @SCR_SOFT_RESET, align 4
  %15 = call i32 @regmap_write(%struct.regmap* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %29, %1
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = load i32, i32* @REG_SPDIF_SCR, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %5)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SCR_SOFT_RESET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %26, 0
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %16, label %31

31:                                               ; preds = %29
  %32 = load %struct.regmap*, %struct.regmap** %4, align 8
  %33 = call i32 @regcache_cache_bypass(%struct.regmap* %32, i32 0)
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = call i32 @regcache_mark_dirty(%struct.regmap* %34)
  %36 = load %struct.regmap*, %struct.regmap** %4, align 8
  %37 = call i32 @regcache_sync(%struct.regmap* %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regcache_cache_bypass(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regcache_mark_dirty(%struct.regmap*) #1

declare dso_local i32 @regcache_sync(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
