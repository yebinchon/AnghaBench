; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_out_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_out_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.hda_codec = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hda_spdif_out = type { i64, i16 }

@EINVAL = common dso_local global i32 0, align 4
@AC_DIG1_ENABLE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hda_spdif_out_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_spdif_out_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_spdif_out*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %2
  %30 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 1
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_6__* %34, i32 %35)
  store %struct.hda_spdif_out* %36, %struct.hda_spdif_out** %8, align 8
  %37 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %8, align 8
  %38 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %8, align 8
  %41 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @AC_DIG1_ENABLE, align 2
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %10, align 2
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %29
  %58 = load i16, i16* @AC_DIG1_ENABLE, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* %10, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %10, align 2
  br label %64

64:                                               ; preds = %57, %29
  %65 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %8, align 8
  %66 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 8
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %10, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %68, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i16, i16* %10, align 2
  %74 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %8, align 8
  %75 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %74, i32 0, i32 1
  store i16 %73, i16* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, -1
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i16, i16* %10, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i16
  %88 = call i32 @set_spdif_ctls(%struct.hda_codec* %82, i64 %83, i16 zeroext %87, i32 -1)
  br label %89

89:                                               ; preds = %81, %78, %64
  %90 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %26
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_spdif_ctls(%struct.hda_codec*, i64, i16 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
