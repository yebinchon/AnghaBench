; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_default_vref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_get_default_vref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_VERB_GET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@AC_PINCAP_VREF = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_SHIFT = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_80 = common dso_local global i32 0, align 4
@PIN_VREF50 = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_80 = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_50 = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_50 = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_100 = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_100 = common dso_local global i32 0, align 4
@AC_PINCAP_VREF_GRD = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_GRD = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_HIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_get_default_vref(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AC_VERB_GET_PIN_WIDGET_CONTROL, align 4
  %11 = call i32 @snd_hda_codec_read(%struct.hda_codec* %8, i32 %9, i32 0, i32 %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AC_PINCAP_VREF, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @AC_PINCAP_VREF_SHIFT, align 4
  %19 = lshr i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AC_PINCAP_VREF_80, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PIN_VREF50, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AC_PINCTL_VREF_80, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AC_PINCAP_VREF_50, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @AC_PINCTL_VREF_50, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AC_PINCAP_VREF_100, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @AC_PINCTL_VREF_100, align 4
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AC_PINCAP_VREF_GRD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @AC_PINCTL_VREF_GRD, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @AC_PINCTL_VREF_HIZ, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49, %42, %35, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
