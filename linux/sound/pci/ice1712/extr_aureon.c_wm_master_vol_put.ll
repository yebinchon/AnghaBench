; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_master_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_master_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32, %struct.aureon_spec* }
%struct.aureon_spec = type { i32*, i32* }

@WM_VOL_MAX = common dso_local global i32 0, align 4
@WM_VOL_MUTE = common dso_local global i32 0, align 4
@WM_DAC_ATTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_master_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_master_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.aureon_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  %15 = load %struct.aureon_spec*, %struct.aureon_spec** %14, align 8
  store %struct.aureon_spec* %15, %struct.aureon_spec** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %17 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %102, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %105

21:                                               ; preds = %18
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @WM_VOL_MAX, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @WM_VOL_MAX, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %21
  %37 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %38 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WM_VOL_MUTE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %50 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %60 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %97, %57
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %73 = load i64, i64* @WM_DAC_ATTEN, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %81 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %90 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wm_set_vol(%struct.snd_ice1712* %72, i64 %79, i32 %88, i32 %95)
  br label %97

97:                                               ; preds = %71
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %10, align 4
  br label %65

100:                                              ; preds = %65
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %36
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %18

105:                                              ; preds = %18
  %106 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %107 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %106)
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @wm_set_vol(%struct.snd_ice1712*, i64, i32, i32) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
