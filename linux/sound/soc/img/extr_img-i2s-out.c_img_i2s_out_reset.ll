; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2s_out = type { i32, i32, i32, i32 }

@IMG_I2S_OUT_CTL = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_ME_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_DATA_EN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_CLK_EN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CH_CTL = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CHAN_CTL_ME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2s_out*)* @img_i2s_out_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2s_out_reset(%struct.img_i2s_out* %0) #0 {
  %2 = alloca %struct.img_i2s_out*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.img_i2s_out* %0, %struct.img_i2s_out** %2, align 8
  %6 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %7 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %8 = call i32 @img_i2s_out_readl(%struct.img_i2s_out* %6, i32 %7)
  %9 = load i32, i32* @IMG_I2S_OUT_CTL_ME_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @IMG_I2S_OUT_CTL_DATA_EN_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %16 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_EN_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %26 = load i32, i32* @IMG_I2S_OUT_CH_CTL, align 4
  %27 = call i32 @img_i2s_out_ch_readl(%struct.img_i2s_out* %25, i32 0, i32 %26)
  %28 = load i32, i32* @IMG_I2S_OUT_CHAN_CTL_ME_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %32 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_assert(i32 %33)
  %35 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %36 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_deassert(i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %24
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %42 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IMG_I2S_OUT_CH_CTL, align 4
  %50 = call i32 @img_i2s_out_ch_writel(%struct.img_i2s_out* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %39

54:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %58 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @img_i2s_out_ch_enable(%struct.img_i2s_out* %62, i32 %63)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %72 = call i32 @img_i2s_out_writel(%struct.img_i2s_out* %69, i32 %70, i32 %71)
  %73 = load %struct.img_i2s_out*, %struct.img_i2s_out** %2, align 8
  %74 = call i32 @img_i2s_out_enable(%struct.img_i2s_out* %73)
  ret void
}

declare dso_local i32 @img_i2s_out_readl(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_ch_readl(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @img_i2s_out_ch_writel(%struct.img_i2s_out*, i32, i32, i32) #1

declare dso_local i32 @img_i2s_out_ch_enable(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_writel(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @img_i2s_out_enable(%struct.img_i2s_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
