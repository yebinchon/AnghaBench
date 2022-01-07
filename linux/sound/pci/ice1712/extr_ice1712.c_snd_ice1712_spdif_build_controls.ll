; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_spdif_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_spdif_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@snd_ice1712_spdif_default = common dso_local global i32 0, align 4
@snd_ice1712_spdif_maskc = common dso_local global i32 0, align 4
@snd_ice1712_spdif_maskp = common dso_local global i32 0, align 4
@snd_ice1712_spdif_stream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ice1712_spdif_build_controls(%struct.snd_ice1712* %0) #0 {
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
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_ice1712_spdif_default, %struct.snd_ice1712* %21)
  store %struct.snd_kcontrol* %22, %struct.snd_kcontrol** %5, align 8
  %23 = call i32 @snd_ctl_add(i32 %20, %struct.snd_kcontrol* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %98

28:                                               ; preds = %17
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_ice1712_spdif_maskc, %struct.snd_ice1712* %40)
  store %struct.snd_kcontrol* %41, %struct.snd_kcontrol** %5, align 8
  %42 = call i32 @snd_ctl_add(i32 %39, %struct.snd_kcontrol* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %28
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %54 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %60 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_ice1712_spdif_maskp, %struct.snd_ice1712* %59)
  store %struct.snd_kcontrol* %60, %struct.snd_kcontrol** %5, align 8
  %61 = call i32 @snd_ctl_add(i32 %58, %struct.snd_kcontrol* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %98

66:                                               ; preds = %47
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %76 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %79 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_ice1712_spdif_stream, %struct.snd_ice1712* %78)
  store %struct.snd_kcontrol* %79, %struct.snd_kcontrol** %5, align 8
  %80 = call i32 @snd_ctl_add(i32 %77, %struct.snd_kcontrol* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %98

85:                                               ; preds = %66
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %92 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %95 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %96 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.snd_kcontrol* %94, %struct.snd_kcontrol** %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %85, %83, %64, %45, %26, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
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
