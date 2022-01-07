; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_read_pin_sense.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_read_pin_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, i32 }

@AC_PINCAP_TRIG_REQ = common dso_local global i32 0, align 4
@AC_VERB_SET_PIN_SENSE = common dso_local global i32 0, align 4
@AC_VERB_GET_PIN_SENSE = common dso_local global i32 0, align 4
@AC_PINSENSE_PRESENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @read_pin_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pin_sense(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AC_PINCAP_TRIG_REQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AC_VERB_SET_PIN_SENSE, align 4
  %23 = call i32 @snd_hda_codec_read(%struct.hda_codec* %20, i32 %21, i32 0, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AC_VERB_GET_PIN_SENSE, align 4
  %29 = call i32 @snd_hda_codec_read(%struct.hda_codec* %26, i32 %27, i32 0, i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
