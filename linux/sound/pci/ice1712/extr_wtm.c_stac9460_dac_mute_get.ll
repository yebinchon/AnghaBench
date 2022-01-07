; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_ice1712 = type { %struct.wtm_spec* }
%struct.wtm_spec = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_dac_mute_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_mute_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.wtm_spec*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 0
  %14 = load %struct.wtm_spec*, %struct.wtm_spec** %13, align 8
  store %struct.wtm_spec* %14, %struct.wtm_spec** %6, align 8
  %15 = load %struct.wtm_spec*, %struct.wtm_spec** %6, align 8
  %16 = getelementptr inbounds %struct.wtm_spec, %struct.wtm_spec* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 1
  %28 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %25, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %36, i32 %37)
  store i8 %38, i8* %7, align 1
  br label %44

39:                                               ; preds = %32
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 6
  %43 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %40, i32 %42)
  store i8 %43, i8* %7, align 1
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, -1
  %48 = ashr i32 %47, 7
  %49 = and i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %50, i8* %56, align 1
  %57 = load %struct.wtm_spec*, %struct.wtm_spec** %6, align 8
  %58 = getelementptr inbounds %struct.wtm_spec, %struct.wtm_spec* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
