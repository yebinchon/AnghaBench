; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.soc_bytes_ext = type { i32 }
%struct.wm_coeff_ctl = type { i32, i32 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@WM_ADSP_ACKED_CTL_MIN_VALUE = common dso_local global i32 0, align 4
@WM_ADSP_ACKED_CTL_MAX_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @wm_coeff_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.soc_bytes_ext*, align 8
  %6 = alloca %struct.wm_coeff_ctl*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %10, %struct.soc_bytes_ext** %5, align 8
  %11 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %5, align 8
  %12 = call %struct.wm_coeff_ctl* @bytes_ext_to_ctl(%struct.soc_bytes_ext* %11)
  store %struct.wm_coeff_ctl* %12, %struct.wm_coeff_ctl** %6, align 8
  %13 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %14 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %36 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %18 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @WM_ADSP_ACKED_CTL_MIN_VALUE, align 4
  %21 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @WM_ADSP_ACKED_CTL_MAX_VALUE, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %45

36:                                               ; preds = %2
  %37 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %38 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %41 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %16
  ret i32 0
}

declare dso_local %struct.wm_coeff_ctl* @bytes_ext_to_ctl(%struct.soc_bytes_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
