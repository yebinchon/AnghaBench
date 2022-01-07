; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_eq_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_us16x08_eq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { %struct.TYPE_5__, %struct.snd_us16x08_eq_store* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_us16x08_eq_store = type { i32*** }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_us16x08_eq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_us16x08_eq_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca %struct.snd_us16x08_eq_store*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %12, align 8
  store %struct.usb_mixer_elem_info* %13, %struct.usb_mixer_elem_info** %6, align 8
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %14, i32 0, i32 1
  %16 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %15, align 8
  store %struct.snd_us16x08_eq_store* %16, %struct.snd_us16x08_eq_store** %7, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @EQ_STORE_BAND_IDX(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @EQ_STORE_PARAM_IDX(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_us16x08_eq_store*, %struct.snd_us16x08_eq_store** %7, align 8
  %33 = getelementptr inbounds %struct.snd_us16x08_eq_store, %struct.snd_us16x08_eq_store* %32, i32 0, i32 0
  %34 = load i32***, i32**** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32**, i32*** %34, i64 %36
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %47, i32* %53, align 4
  ret i32 0
}

declare dso_local i32 @EQ_STORE_BAND_IDX(i32) #1

declare dso_local i32 @EQ_STORE_PARAM_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
