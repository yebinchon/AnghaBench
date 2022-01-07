; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_add_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_add_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.wm_coeff_ctl = type { i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_kcontrol_new = type { i64, i32, i32, i32, %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm_coeff_info = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@snd_soc_bytes_tlv_callback = common dso_local global i32 0, align 4
@wm_coeff_get_acked = common dso_local global i32 0, align 4
@wm_coeff_put_acked = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@wm_coeff_tlv_get = common dso_local global i32 0, align 4
@wm_coeff_tlv_put = common dso_local global i32 0, align 4
@wm_coeff_get = common dso_local global i32 0, align 4
@wm_coeff_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, %struct.wm_coeff_ctl*)* @wmfw_add_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmfw_add_ctl(%struct.wm_adsp* %0, %struct.wm_coeff_ctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm_adsp*, align 8
  %5 = alloca %struct.wm_coeff_ctl*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %4, align 8
  store %struct.wm_coeff_ctl* %1, %struct.wm_coeff_ctl** %5, align 8
  %8 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %9 = icmp ne %struct.wm_coeff_ctl* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %12 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.snd_kcontrol_new* @kzalloc(i32 40, i32 %19)
  store %struct.snd_kcontrol_new* %20, %struct.snd_kcontrol_new** %6, align 8
  %21 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %22 = icmp ne %struct.snd_kcontrol_new* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %18
  %27 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %28 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %30, i32 0, i32 7
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @wm_coeff_info, align 4
  %33 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %36 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @snd_soc_bytes_tlv_callback, align 4
  %39 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %43 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %42, i32 0, i32 1
  %44 = ptrtoint %struct.TYPE_4__* %43 to i64
  %45 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %48 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %51 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wmfw_convert_flags(i32 %49, i32 %52)
  %54 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %57 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %66 [
    i32 128, label %59
  ]

59:                                               ; preds = %26
  %60 = load i32, i32* @wm_coeff_get_acked, align 4
  %61 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %62 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @wm_coeff_put_acked, align 4
  %64 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %65 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %96

66:                                               ; preds = %26
  %67 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %75 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %78 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @wm_coeff_tlv_get, align 4
  %81 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %82 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @wm_coeff_tlv_put, align 4
  %85 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %5, align 8
  %86 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  br label %95

88:                                               ; preds = %66
  %89 = load i32, i32* @wm_coeff_get, align 4
  %90 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %91 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @wm_coeff_put, align 4
  %93 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %94 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %73
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %98 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %101 = call i32 @snd_soc_add_component_controls(i32 %99, %struct.snd_kcontrol_new* %100, i32 1)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %108

105:                                              ; preds = %96
  %106 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %107 = call i32 @kfree(%struct.snd_kcontrol_new* %106)
  store i32 0, i32* %3, align 4
  br label %112

108:                                              ; preds = %104
  %109 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %110 = call i32 @kfree(%struct.snd_kcontrol_new* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %105, %23, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.snd_kcontrol_new* @kzalloc(i32, i32) #1

declare dso_local i32 @wmfw_convert_flags(i32, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(i32, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i32 @kfree(%struct.snd_kcontrol_new*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
