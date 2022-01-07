; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i32* }

@TWL4030_MODULE_AUDIO_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @twl4030_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_write(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.twl4030_priv* %10, %struct.twl4030_priv** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %21 [
    i32 133, label %12
    i32 129, label %12
    i32 128, label %12
    i32 131, label %12
    i32 130, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %3, %3, %3, %3, %3, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %15 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %17, 133
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %13, i32* %20, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @twl4030_can_write_to_chip(%struct.twl4030_priv* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @TWL4030_MODULE_AUDIO_VOICE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @twl_i2c_write_u8(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @twl4030_can_write_to_chip(%struct.twl4030_priv*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
