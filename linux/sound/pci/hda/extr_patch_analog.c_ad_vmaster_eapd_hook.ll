; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad_vmaster_eapd_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad_vmaster_eapd_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32 }

@AC_VERB_SET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ad_vmaster_eapd_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_vmaster_eapd_hook(i8* %0, i32 %1) #0 {
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
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %10, align 8
  store %struct.ad198x_spec* %11, %struct.ad198x_spec** %6, align 8
  %12 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %29 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  %30 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AC_VERB_SET_EAPD_BTLENABLE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 0
  %37 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %28, i32 %31, i32 0, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
