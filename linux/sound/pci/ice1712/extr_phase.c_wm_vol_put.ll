; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_wm_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_phase.c_wm_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { %struct.phase28_spec* }
%struct.phase28_spec = type { i32*, i32* }

@WM_VOL_MUTE = common dso_local global i32 0, align 4
@WM_DAC_ATTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.phase28_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ice1712* %14, %struct.snd_ice1712** %5, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = load %struct.phase28_spec*, %struct.phase28_spec** %16, align 8
  store %struct.phase28_spec* %17, %struct.phase28_spec** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %27 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %105, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %28
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ugt i32 %42, 127
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %105

45:                                               ; preds = %32
  %46 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %47 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WM_VOL_MUTE, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %61 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %59, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %45
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %73 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %71, i32* %79, align 4
  %80 = load i32, i32* @WM_DAC_ATTEN, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %88 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.phase28_spec*, %struct.phase28_spec** %6, align 8
  %97 = getelementptr inbounds %struct.phase28_spec, %struct.phase28_spec* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @wm_set_vol(%struct.snd_ice1712* %85, i32 %86, i32 %95, i32 %102)
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %70, %45
  br label %105

105:                                              ; preds = %104, %44
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %28

108:                                              ; preds = %28
  %109 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %110 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %109)
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i32, i32, i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
