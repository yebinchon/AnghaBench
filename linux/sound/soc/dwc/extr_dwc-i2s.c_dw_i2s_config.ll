; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32, i32, i32, %struct.i2s_clk_config_data }
%struct.i2s_clk_config_data = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, i32)* @dw_i2s_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_i2s_config(%struct.dw_i2s_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_i2s_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2s_clk_config_data*, align 8
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %7, i32 0, i32 3
  store %struct.i2s_clk_config_data* %8, %struct.i2s_clk_config_data** %6, align 8
  %9 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @i2s_disable_channels(%struct.dw_i2s_dev* %9, i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %76, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.i2s_clk_config_data*, %struct.i2s_clk_config_data** %6, align 8
  %15 = getelementptr inbounds %struct.i2s_clk_config_data, %struct.i2s_clk_config_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 2
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %25 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TCR(i32 %27)
  %29 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %30 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i2s_write_reg(i32 %26, i32 %28, i32 %31)
  %33 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TFCR(i32 %36)
  %38 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %39 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @i2s_write_reg(i32 %35, i32 %37, i32 %41)
  %43 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @TER(i32 %46)
  %48 = call i32 @i2s_write_reg(i32 %45, i32 %47, i32 1)
  br label %75

49:                                               ; preds = %19
  %50 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %51 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @RCR(i32 %53)
  %55 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %56 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i2s_write_reg(i32 %52, i32 %54, i32 %57)
  %59 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %60 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @RFCR(i32 %62)
  %64 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %65 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @i2s_write_reg(i32 %61, i32 %63, i32 %67)
  %69 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %70 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @RER(i32 %72)
  %74 = call i32 @i2s_write_reg(i32 %71, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %49, %23
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %12

79:                                               ; preds = %12
  ret void
}

declare dso_local i32 @i2s_disable_channels(%struct.dw_i2s_dev*, i32) #1

declare dso_local i32 @i2s_write_reg(i32, i32, i32) #1

declare dso_local i32 @TCR(i32) #1

declare dso_local i32 @TFCR(i32) #1

declare dso_local i32 @TER(i32) #1

declare dso_local i32 @RCR(i32) #1

declare dso_local i32 @RFCR(i32) #1

declare dso_local i32 @RER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
