; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_activate_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_activate_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8776 = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.snd_kcontrol_volatile* }
%struct.snd_kcontrol_volatile = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wm8776*, i8*, i32)* @snd_wm8776_activate_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wm8776_activate_ctl(%struct.snd_wm8776* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_wm8776*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_kcontrol_volatile*, align 8
  %10 = alloca %struct.snd_ctl_elem_id, align 4
  %11 = alloca i32, align 4
  store %struct.snd_wm8776* %0, %struct.snd_wm8776** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_wm8776*, %struct.snd_wm8776** %4, align 8
  %13 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %12, i32 0, i32 0
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %7, align 8
  %15 = call i32 @memset(%struct.snd_ctl_elem_id* %10, i32 0, i32 8)
  %16 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %10, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlcpy(i32 %17, i8* %18, i32 4)
  %20 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %21 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %23 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %22, %struct.snd_ctl_elem_id* %10)
  store %struct.snd_kcontrol* %23, %struct.snd_kcontrol** %8, align 8
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %25 = icmp ne %struct.snd_kcontrol* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %28, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 1
  %34 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %34, i64 %36
  store %struct.snd_kcontrol_volatile* %37, %struct.snd_kcontrol_volatile** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %53

47:                                               ; preds = %27
  %48 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %49 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %55 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %57 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %56, i32 0, i32 0
  %58 = call i32 @snd_ctl_notify(%struct.snd_card* %54, i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %53, %26
  ret void
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
