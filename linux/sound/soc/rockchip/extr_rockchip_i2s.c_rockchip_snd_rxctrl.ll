; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_snd_rxctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_snd_rxctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2s_dev = type { i32, i32, i32, i32 }

@I2S_DMACR = common dso_local global i32 0, align 4
@I2S_DMACR_RDE_ENABLE = common dso_local global i32 0, align 4
@I2S_XFER = common dso_local global i32 0, align 4
@I2S_XFER_TXS_START = common dso_local global i32 0, align 4
@I2S_XFER_RXS_START = common dso_local global i32 0, align 4
@I2S_DMACR_RDE_DISABLE = common dso_local global i32 0, align 4
@I2S_XFER_TXS_STOP = common dso_local global i32 0, align 4
@I2S_XFER_RXS_STOP = common dso_local global i32 0, align 4
@I2S_CLR = common dso_local global i32 0, align 4
@I2S_CLR_TXC = common dso_local global i32 0, align 4
@I2S_CLR_RXC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fail to clear\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_i2s_dev*, i32)* @rockchip_snd_rxctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_snd_rxctrl(%struct.rk_i2s_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rk_i2s_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_i2s_dev* %0, %struct.rk_i2s_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2S_DMACR, align 4
  %14 = load i32, i32* @I2S_DMACR_RDE_ENABLE, align 4
  %15 = load i32, i32* @I2S_DMACR_RDE_ENABLE, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2S_XFER, align 4
  %21 = load i32, i32* @I2S_XFER_TXS_START, align 4
  %22 = load i32, i32* @I2S_XFER_RXS_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I2S_XFER_TXS_START, align 4
  %25 = load i32, i32* @I2S_XFER_RXS_START, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %94

30:                                               ; preds = %2
  %31 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2S_DMACR, align 4
  %37 = load i32, i32* @I2S_DMACR_RDE_ENABLE, align 4
  %38 = load i32, i32* @I2S_DMACR_RDE_DISABLE, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %93, label %44

44:                                               ; preds = %30
  %45 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I2S_XFER, align 4
  %49 = load i32, i32* @I2S_XFER_TXS_START, align 4
  %50 = load i32, i32* @I2S_XFER_RXS_START, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @I2S_XFER_TXS_STOP, align 4
  %53 = load i32, i32* @I2S_XFER_RXS_STOP, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %51, i32 %54)
  %56 = call i32 @udelay(i32 150)
  %57 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I2S_CLR, align 4
  %61 = load i32, i32* @I2S_CLR_TXC, align 4
  %62 = load i32, i32* @I2S_CLR_RXC, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @I2S_CLR_TXC, align 4
  %65 = load i32, i32* @I2S_CLR_RXC, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %69 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I2S_CLR, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %5)
  br label %73

73:                                               ; preds = %91, %44
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %78 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I2S_CLR, align 4
  %81 = call i32 @regmap_read(i32 %79, i32 %80, i32* %5)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %92

91:                                               ; preds = %76
  br label %73

92:                                               ; preds = %86, %73
  br label %93

93:                                               ; preds = %92, %30
  br label %94

94:                                               ; preds = %93, %9
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
