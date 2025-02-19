; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i32* }

@TWL4030_CACHEREGNUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @twl4030_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_read(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twl4030_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.twl4030_priv* %9, %struct.twl4030_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TWL4030_CACHEREGNUM, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %27 [
    i32 133, label %18
    i32 129, label %18
    i32 128, label %18
    i32 131, label %18
    i32 130, label %18
    i32 132, label %18
  ]

18:                                               ; preds = %16, %16, %16, %16, %16, %16
  %19 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %20 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 133
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @twl_i2c_read_u8(i32 %28, i32* %7, i32 %29)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
