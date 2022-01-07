; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_flush.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2s_in = type { i32 }

@IMG_I2S_IN_CH_CTL = common dso_local global i32 0, align 4
@IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2s_in*)* @img_i2s_in_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2s_in_flush(%struct.img_i2s_in* %0) #0 {
  %2 = alloca %struct.img_i2s_in*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.img_i2s_in* %0, %struct.img_i2s_in** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.img_i2s_in*, %struct.img_i2s_in** %2, align 8
  %8 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %5
  %12 = load %struct.img_i2s_in*, %struct.img_i2s_in** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %15 = call i32 @img_i2s_in_ch_readl(%struct.img_i2s_in* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.img_i2s_in*, %struct.img_i2s_in** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %23 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @IMG_I2S_IN_CH_CTL_FIFO_FLUSH_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.img_i2s_in*, %struct.img_i2s_in** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IMG_I2S_IN_CH_CTL, align 4
  %32 = call i32 @img_i2s_in_ch_writel(%struct.img_i2s_in* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @img_i2s_in_ch_readl(%struct.img_i2s_in*, i32, i32) #1

declare dso_local i32 @img_i2s_in_ch_writel(%struct.img_i2s_in*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
