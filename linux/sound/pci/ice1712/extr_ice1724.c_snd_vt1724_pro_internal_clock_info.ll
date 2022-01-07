; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.snd_ice1712 = type { %struct.TYPE_6__*, i32*, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32* }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@ICE_EEP2_SPDIF = common dso_local global i64 0, align 8
@VT1724_CFG_SPDIF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_vt1724_pro_internal_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pro_internal_clock_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_ice1712* %8, %struct.snd_ice1712** %5, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %15 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ICE_EEP2_SPDIF, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VT1724_CFG_SPDIF_IN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %28, %2
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %42
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  br label %51

51:                                               ; preds = %39, %28
  %52 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %56, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %51
  %75 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  %83 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %84 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %89 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %90, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcpy(i32 %87, i32 %100)
  br label %122

102:                                              ; preds = %74
  %103 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %104 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %109 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %114 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @sprintf(i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %102, %82
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
