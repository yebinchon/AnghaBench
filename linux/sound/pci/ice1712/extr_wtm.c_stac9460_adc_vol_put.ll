; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_adc_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_adc_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_MIC_L_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_adc_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_adc_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 1
  %17 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = load i32, i32* @STAC946X_MIC_L_VOLUME, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 15
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @stac9460_get(%struct.snd_ice1712* %39, i32 %40)
  %42 = sub nsw i32 15, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 15
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %24
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 15, %57
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, -16
  %62 = or i32 %58, %61
  %63 = call i32 @stac9460_put(%struct.snd_ice1712* %54, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %53, %24
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %21

68:                                               ; preds = %21
  br label %118

69:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %114, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %73, label %117

73:                                               ; preds = %70
  %74 = load i32, i32* @STAC946X_MIC_L_VOLUME, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %10, align 1
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @stac9460_2_get(%struct.snd_ice1712* %88, i32 %89)
  %91 = sub nsw i32 15, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %9, align 1
  %93 = load i8, i8* %9, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 15
  %96 = load i8, i8* %10, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %73
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 15, %106
  %108 = load i8, i8* %9, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, -16
  %111 = or i32 %107, %110
  %112 = call i32 @stac9460_2_put(%struct.snd_ice1712* %103, i32 %104, i32 %111)
  br label %113

113:                                              ; preds = %102, %73
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %70

117:                                              ; preds = %70
  br label %118

118:                                              ; preds = %117, %68
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
