; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_num_devices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_num_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32 }

@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_PAR_DEVLIST_LEN = common dso_local global i32 0, align 4
@AC_DEV_LIST_LEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_get_num_devices(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @get_wcaps(%struct.hda_codec* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @get_wcaps_type(i32 %21)
  %23 = load i64, i64* @AC_WID_PIN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %20
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AC_PAR_DEVLIST_LEN, align 4
  %31 = call i32 @snd_hdac_read_parm_uncached(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AC_DEV_LIST_LEN_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @snd_hdac_read_parm_uncached(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
