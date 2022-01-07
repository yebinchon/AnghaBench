; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_activate_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_activate_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32 }
%struct.snd_kcontrol = type { %struct.snd_kcontrol_volatile* }
%struct.snd_kcontrol_volatile = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ctl_activate_id(%struct.snd_card* %0, %struct.snd_ctl_elem_id* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ctl_elem_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol_volatile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_ctl_elem_id* %1, %struct.snd_ctl_elem_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %15 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %5, align 8
  %16 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %14, %struct.snd_ctl_elem_id* %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %7, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %18 = icmp eq %struct.snd_kcontrol* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %24 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %5, align 8
  %25 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %23, %struct.snd_ctl_elem_id* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %28, i64 %30
  store %struct.snd_kcontrol_volatile* %31, %struct.snd_kcontrol_volatile** %8, align 8
  store i32 0, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %22
  %35 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %68

42:                                               ; preds = %34
  %43 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %63

49:                                               ; preds = %22
  %50 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %68

57:                                               ; preds = %49
  %58 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %59 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %8, align 8
  %60 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %42
  %64 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %5, align 8
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id* %64, %struct.snd_kcontrol* %65, i32 %66)
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %56, %41, %19
  %69 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 0
  %71 = call i32 @up_write(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %76 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %77 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %5, align 8
  %78 = call i32 @snd_ctl_notify(%struct.snd_card* %75, i32 %76, %struct.snd_ctl_elem_id* %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
