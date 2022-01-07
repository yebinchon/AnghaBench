; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_cs2000_registers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_cs2000_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32* }

@CS2000_GLOBAL_CFG = common dso_local global i64 0, align 8
@CS2000_FREEZE = common dso_local global i32 0, align 4
@CS2000_DEV_CTRL = common dso_local global i64 0, align 8
@CS2000_DEV_CFG_1 = common dso_local global i64 0, align 8
@CS2000_R_MOD_SEL_1 = common dso_local global i32 0, align 4
@CS2000_R_SEL_SHIFT = common dso_local global i32 0, align 4
@CS2000_AUX_OUT_SRC_REF_CLK = common dso_local global i32 0, align 4
@CS2000_EN_DEV_CFG_1 = common dso_local global i32 0, align 4
@CS2000_DEV_CFG_2 = common dso_local global i64 0, align 8
@CS2000_LOCK_CLK_SHIFT = common dso_local global i32 0, align 4
@CS2000_FRAC_N_SRC_STATIC = common dso_local global i32 0, align 4
@CS2000_RATIO_0 = common dso_local global i32 0, align 4
@CS2000_FUN_CFG_1 = common dso_local global i64 0, align 8
@CS2000_FUN_CFG_2 = common dso_local global i64 0, align 8
@CS2000_EN_DEV_CFG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @cs2000_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs2000_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %5, align 8
  store %struct.xonar_pcm179x* %6, %struct.xonar_pcm179x** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i64, i64* @CS2000_GLOBAL_CFG, align 8
  %9 = load i32, i32* @CS2000_FREEZE, align 4
  %10 = call i32 @cs2000_write(%struct.oxygen* %7, i64 %8, i32 %9)
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = load i64, i64* @CS2000_DEV_CTRL, align 8
  %13 = call i32 @cs2000_write(%struct.oxygen* %11, i64 %12, i32 0)
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = load i64, i64* @CS2000_DEV_CFG_1, align 8
  %16 = load i32, i32* @CS2000_R_MOD_SEL_1, align 4
  %17 = load i32, i32* @CS2000_R_SEL_SHIFT, align 4
  %18 = shl i32 0, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @CS2000_AUX_OUT_SRC_REF_CLK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CS2000_EN_DEV_CFG_1, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cs2000_write(%struct.oxygen* %14, i64 %15, i32 %23)
  %25 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %26 = load i64, i64* @CS2000_DEV_CFG_2, align 8
  %27 = load i32, i32* @CS2000_LOCK_CLK_SHIFT, align 4
  %28 = shl i32 0, %27
  %29 = load i32, i32* @CS2000_FRAC_N_SRC_STATIC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @cs2000_write(%struct.oxygen* %25, i64 %26, i32 %30)
  %32 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %33 = load i32, i32* @CS2000_RATIO_0, align 4
  %34 = add nsw i32 %33, 0
  %35 = sext i32 %34 to i64
  %36 = call i32 @cs2000_write(%struct.oxygen* %32, i64 %35, i32 0)
  %37 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %38 = load i32, i32* @CS2000_RATIO_0, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = call i32 @cs2000_write(%struct.oxygen* %37, i64 %40, i32 16)
  %42 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %43 = load i32, i32* @CS2000_RATIO_0, align 4
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = call i32 @cs2000_write(%struct.oxygen* %42, i64 %45, i32 0)
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = load i32, i32* @CS2000_RATIO_0, align 4
  %49 = add nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = call i32 @cs2000_write(%struct.oxygen* %47, i64 %50, i32 0)
  %52 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %53 = load i64, i64* @CS2000_FUN_CFG_1, align 8
  %54 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %55 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @CS2000_FUN_CFG_1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cs2000_write(%struct.oxygen* %52, i64 %53, i32 %59)
  %61 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %62 = load i64, i64* @CS2000_FUN_CFG_2, align 8
  %63 = call i32 @cs2000_write(%struct.oxygen* %61, i64 %62, i32 0)
  %64 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %65 = load i64, i64* @CS2000_GLOBAL_CFG, align 8
  %66 = load i32, i32* @CS2000_EN_DEV_CFG_2, align 4
  %67 = call i32 @cs2000_write(%struct.oxygen* %64, i64 %65, i32 %66)
  %68 = call i32 @msleep(i32 3)
  ret void
}

declare dso_local i32 @cs2000_write(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
