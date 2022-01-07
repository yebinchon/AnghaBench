; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_soc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_soc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { %struct.twl4030_codec_data* }
%struct.twl4030_codec_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @twl4030_soc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_soc_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.twl4030_priv*, align 8
  %4 = alloca %struct.twl4030_codec_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.twl4030_priv* %6, %struct.twl4030_priv** %3, align 8
  %7 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %8 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %7, i32 0, i32 0
  %9 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %8, align 8
  store %struct.twl4030_codec_data* %9, %struct.twl4030_codec_data** %4, align 8
  %10 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %11 = icmp ne %struct.twl4030_codec_data* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %14 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %19 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @gpio_is_valid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.twl4030_codec_data*, %struct.twl4030_codec_data** %4, align 8
  %25 = getelementptr inbounds %struct.twl4030_codec_data, %struct.twl4030_codec_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gpio_free(i32 %26)
  br label %28

28:                                               ; preds = %23, %17, %12, %1
  ret void
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
