; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_tw4030_init_ctl_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_tw4030_init_ctl_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_priv = type { i32* }

@TWL4030_REG_EAR_CTL = common dso_local global i32 0, align 4
@TWL4030_REG_PRECKR_CTL = common dso_local global i32 0, align 4
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_priv*)* @tw4030_init_ctl_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw4030_init_ctl_cache(%struct.twl4030_priv* %0) #0 {
  %2 = alloca %struct.twl4030_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.twl4030_priv* %0, %struct.twl4030_priv** %2, align 8
  %5 = load i32, i32* @TWL4030_REG_EAR_CTL, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TWL4030_REG_PRECKR_CTL, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @twl_i2c_read_u8(i32 %11, i32* %4, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.twl4030_priv*, %struct.twl4030_priv** %2, align 8
  %16 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TWL4030_REG_EAR_CTL, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32 %14, i32* %22, align 4
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %6

26:                                               ; preds = %6
  ret void
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
