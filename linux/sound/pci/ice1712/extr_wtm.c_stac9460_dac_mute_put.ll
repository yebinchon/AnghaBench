; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @stac9460_dac_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9460_dac_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  %18 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %19, i32 %20)
  store i8 %21, i8* %7, align 1
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = shl i32 %29, 7
  %31 = and i32 %30, 128
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, -129
  %35 = or i32 %31, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %6, align 1
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %17
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @stac9460_put(%struct.snd_ice1712* %46, i32 %47, i8 zeroext %48)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i8, i8* %6, align 1
  %53 = call i32 @stac9460_2_put(%struct.snd_ice1712* %50, i32 %51, i8 zeroext %52)
  br label %54

54:                                               ; preds = %45, %17
  br label %114

55:                                               ; preds = %2
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 1
  %59 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %56, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %66, i32 %67)
  store i8 %68, i8* %7, align 1
  br label %74

69:                                               ; preds = %55
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 6
  %73 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %70, i32 %72)
  store i8 %73, i8* %7, align 1
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = shl i32 %82, 7
  %84 = and i32 %83, 128
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, -129
  %88 = or i32 %84, %87
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %6, align 1
  %90 = load i8, i8* %6, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %7, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %91, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %74
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i8, i8* %6, align 1
  %105 = call i32 @stac9460_put(%struct.snd_ice1712* %102, i32 %103, i8 zeroext %104)
  br label %112

106:                                              ; preds = %98
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 6
  %110 = load i8, i8* %6, align 1
  %111 = call i32 @stac9460_2_put(%struct.snd_ice1712* %107, i32 %109, i8 zeroext %110)
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %74
  br label %114

114:                                              ; preds = %113, %54
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
