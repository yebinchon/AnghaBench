; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_refill_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xtensa/extr_xtfpga-i2s.c_xtfpga_pcm_refill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtfpga_i2s = type { i32, i32, i32 }

@XTFPGA_I2S_INT_STATUS = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_VALID = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_LEVEL = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_MASK = common dso_local global i32 0, align 4
@XTFPGA_I2S_INT_UNDERRUN = common dso_local global i32 0, align 4
@XTFPGA_I2S_CONFIG = common dso_local global i32 0, align 4
@XTFPGA_I2S_CONFIG_INT_ENABLE = common dso_local global i32 0, align 4
@XTFPGA_I2S_CONFIG_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xtfpga_i2s*)* @xtfpga_pcm_refill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtfpga_pcm_refill_fifo(%struct.xtfpga_i2s* %0) #0 {
  %2 = alloca %struct.xtfpga_i2s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xtfpga_i2s* %0, %struct.xtfpga_i2s** %2, align 8
  %6 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %7 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XTFPGA_I2S_INT_STATUS, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %3)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %16 = call i32 @xtfpga_pcm_push_tx(%struct.xtfpga_i2s* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %18 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XTFPGA_I2S_INT_STATUS, align 4
  %21 = load i32, i32* @XTFPGA_I2S_INT_VALID, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %27 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XTFPGA_I2S_INT_STATUS, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %3)
  br label %31

31:                                               ; preds = %25, %14
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @XTFPGA_I2S_INT_LEVEL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %31
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %42 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %45 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %11

49:                                               ; preds = %39, %11
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @XTFPGA_I2S_INT_LEVEL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %56 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @XTFPGA_I2S_INT_MASK, align 4
  %59 = load i32, i32* @XTFPGA_I2S_INT_VALID, align 4
  %60 = call i32 @regmap_write(i32 %57, i32 %58, i32 %59)
  br label %74

61:                                               ; preds = %49
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @XTFPGA_I2S_INT_UNDERRUN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %68 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @XTFPGA_I2S_INT_MASK, align 4
  %71 = load i32, i32* @XTFPGA_I2S_INT_UNDERRUN, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @XTFPGA_I2S_INT_UNDERRUN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %81 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @XTFPGA_I2S_CONFIG, align 4
  %84 = load i32, i32* @XTFPGA_I2S_CONFIG_INT_ENABLE, align 4
  %85 = load i32, i32* @XTFPGA_I2S_CONFIG_TX_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @XTFPGA_I2S_CONFIG_INT_ENABLE, align 4
  %88 = load i32, i32* @XTFPGA_I2S_CONFIG_TX_ENABLE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %86, i32 %89)
  br label %100

91:                                               ; preds = %74
  %92 = load %struct.xtfpga_i2s*, %struct.xtfpga_i2s** %2, align 8
  %93 = getelementptr inbounds %struct.xtfpga_i2s, %struct.xtfpga_i2s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XTFPGA_I2S_CONFIG, align 4
  %96 = load i32, i32* @XTFPGA_I2S_CONFIG_INT_ENABLE, align 4
  %97 = load i32, i32* @XTFPGA_I2S_CONFIG_TX_ENABLE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %91, %79
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @xtfpga_pcm_push_tx(%struct.xtfpga_i2s*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
