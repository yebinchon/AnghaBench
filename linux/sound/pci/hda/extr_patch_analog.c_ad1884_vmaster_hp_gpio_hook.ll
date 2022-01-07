; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1884_vmaster_hp_gpio_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1884_vmaster_hp_gpio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { i64 }

@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ad1884_vmaster_hp_gpio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1884_vmaster_hp_gpio_hook(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ad198x_spec*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hda_codec*
  store %struct.hda_codec* %8, %struct.hda_codec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %10, align 8
  store %struct.ad198x_spec* %11, %struct.ad198x_spec** %6, align 8
  %12 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ad_vmaster_eapd_hook(i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %22 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 2
  %27 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %21, i32 1, i32 0, i32 %22, i32 %26)
  ret void
}

declare dso_local i32 @ad_vmaster_eapd_hook(i8*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
