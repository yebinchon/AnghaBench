; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rsnd_kctrl_cfg = type { i32, i32, i32* }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @rsnd_kctrl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_kctrl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.rsnd_kctrl_cfg*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.rsnd_kctrl_cfg* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.rsnd_kctrl_cfg* %7, %struct.rsnd_kctrl_cfg** %5, align 8
  %8 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %2
  %13 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %14 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %12
  %38 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %12
  %47 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlcpy(i32 %51, i32 %62, i32 4)
  br label %93

64:                                               ; preds = %2
  %65 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %66 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %69 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %75 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %5, align 8
  %82 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %64
  %86 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 4
  br label %89

87:                                               ; preds = %64
  %88 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %46
  ret i32 0
}

declare dso_local %struct.rsnd_kctrl_cfg* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
