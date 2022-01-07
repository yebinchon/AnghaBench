; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_apply_vpbr_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_apply_vpbr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l36_private = type { i32, %struct.cs35l36_platform_data }
%struct.cs35l36_platform_data = type { %struct.cs35l36_vpbr_cfg }
%struct.cs35l36_vpbr_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CS35L36_PWR_CTRL3 = common dso_local global i32 0, align 4
@CS35L36_VPBR_EN_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_EN_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_CFG = common dso_local global i32 0, align 4
@CS35L36_VPBR_THLD_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_THLD_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_MAX_ATTN_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_MAX_ATTN_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_ATK_VOL_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_ATK_VOL_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_ATK_RATE_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_ATK_RATE_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_WAIT_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_WAIT_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_REL_RATE_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_REL_RATE_SHIFT = common dso_local global i32 0, align 4
@CS35L36_VPBR_MUTE_EN_MASK = common dso_local global i32 0, align 4
@CS35L36_VPBR_MUTE_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs35l36_private*)* @cs35l36_apply_vpbr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs35l36_apply_vpbr_config(%struct.cs35l36_private* %0) #0 {
  %2 = alloca %struct.cs35l36_private*, align 8
  %3 = alloca %struct.cs35l36_platform_data*, align 8
  %4 = alloca %struct.cs35l36_vpbr_cfg*, align 8
  store %struct.cs35l36_private* %0, %struct.cs35l36_private** %2, align 8
  %5 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %6 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %5, i32 0, i32 1
  store %struct.cs35l36_platform_data* %6, %struct.cs35l36_platform_data** %3, align 8
  %7 = load %struct.cs35l36_platform_data*, %struct.cs35l36_platform_data** %3, align 8
  %8 = getelementptr inbounds %struct.cs35l36_platform_data, %struct.cs35l36_platform_data* %7, i32 0, i32 0
  store %struct.cs35l36_vpbr_cfg* %8, %struct.cs35l36_vpbr_cfg** %4, align 8
  %9 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %10 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CS35L36_PWR_CTRL3, align 4
  %13 = load i32, i32* @CS35L36_VPBR_EN_MASK, align 4
  %14 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CS35L36_VPBR_EN_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %18)
  %20 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %21 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %24 = load i32, i32* @CS35L36_VPBR_THLD_MASK, align 4
  %25 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS35L36_VPBR_THLD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %29)
  %31 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %32 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %35 = load i32, i32* @CS35L36_VPBR_MAX_ATTN_MASK, align 4
  %36 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CS35L36_VPBR_MAX_ATTN_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %40)
  %42 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %43 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %46 = load i32, i32* @CS35L36_VPBR_ATK_VOL_MASK, align 4
  %47 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CS35L36_VPBR_ATK_VOL_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %51)
  %53 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %54 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %57 = load i32, i32* @CS35L36_VPBR_ATK_RATE_MASK, align 4
  %58 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS35L36_VPBR_ATK_RATE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %62)
  %64 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %65 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %68 = load i32, i32* @CS35L36_VPBR_WAIT_MASK, align 4
  %69 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS35L36_VPBR_WAIT_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %73)
  %75 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %76 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %79 = load i32, i32* @CS35L36_VPBR_REL_RATE_MASK, align 4
  %80 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CS35L36_VPBR_REL_RATE_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %84)
  %86 = load %struct.cs35l36_private*, %struct.cs35l36_private** %2, align 8
  %87 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CS35L36_VPBR_CFG, align 4
  %90 = load i32, i32* @CS35L36_VPBR_MUTE_EN_MASK, align 4
  %91 = load %struct.cs35l36_vpbr_cfg*, %struct.cs35l36_vpbr_cfg** %4, align 8
  %92 = getelementptr inbounds %struct.cs35l36_vpbr_cfg, %struct.cs35l36_vpbr_cfg* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CS35L36_VPBR_MUTE_EN_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %95)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
