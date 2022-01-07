; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_spdif_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_spdif_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@snd_vt1724_mixer_pro_spdif_route = common dso_local global i32 0, align 4
@snd_vt1724_spdif_switch = common dso_local global i32 0, align 4
@snd_vt1724_spdif_default = common dso_local global i32 0, align 4
@snd_vt1724_spdif_maskc = common dso_local global i32 0, align 4
@snd_vt1724_spdif_maskp = common dso_local global i32 0, align 4
@snd_vt1724_spdif_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_vt1724_spdif_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_spdif_build_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %27 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_vt1724_mixer_pro_spdif_route, %struct.snd_ice1712* %26)
  %28 = call i32 @snd_ctl_add(i32 %25, %struct.snd_kcontrol* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %103

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %39 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_vt1724_spdif_switch, %struct.snd_ice1712* %38)
  %40 = call i32 @snd_ctl_add(i32 %37, %struct.snd_kcontrol* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %103

45:                                               ; preds = %34
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %50 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_vt1724_spdif_default, %struct.snd_ice1712* %49)
  store %struct.snd_kcontrol* %50, %struct.snd_kcontrol** %5, align 8
  %51 = call i32 @snd_ctl_add(i32 %48, %struct.snd_kcontrol* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %103

56:                                               ; preds = %45
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_vt1724_spdif_maskc, %struct.snd_ice1712* %68)
  store %struct.snd_kcontrol* %69, %struct.snd_kcontrol** %5, align 8
  %70 = call i32 @snd_ctl_add(i32 %67, %struct.snd_kcontrol* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %103

75:                                               ; preds = %56
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %77 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %85 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %88 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_vt1724_spdif_maskp, %struct.snd_ice1712* %87)
  store %struct.snd_kcontrol* %88, %struct.snd_kcontrol** %5, align 8
  %89 = call i32 @snd_ctl_add(i32 %86, %struct.snd_kcontrol* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %103

94:                                               ; preds = %75
  %95 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %96 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %101 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %94, %92, %73, %54, %43, %31, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
