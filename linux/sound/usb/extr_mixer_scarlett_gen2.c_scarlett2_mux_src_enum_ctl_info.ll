; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_enum_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_enum_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32*, i8*, i64 }
%struct.snd_ctl_elem_info = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@SCARLETT2_PORT_TYPE_COUNT = common dso_local global i32 0, align 4
@SCARLETT2_PORT_IN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @scarlett2_mux_src_enum_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_mux_src_enum_ctl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.usb_mixer_elem_info*, align 8
  %7 = alloca %struct.scarlett2_mixer_data*, align 8
  %8 = alloca %struct.scarlett2_ports*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %13, align 8
  store %struct.usb_mixer_elem_info* %14, %struct.usb_mixer_elem_info** %6, align 8
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %19, align 8
  store %struct.scarlett2_mixer_data* %20, %struct.scarlett2_mixer_data** %7, align 8
  %21 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %22 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %24, align 8
  store %struct.scarlett2_ports* %25, %struct.scarlett2_ports** %8, align 8
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %32 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %6, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %2
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  store i32 %52, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %2
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %108, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @SCARLETT2_PORT_TYPE_COUNT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %64, i64 %66
  %68 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %63, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %62
  %75 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %80, i64 %82
  %84 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %88, i64 %90
  %92 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %87, %93
  %95 = call i32 @sprintf(i32 %79, i8* %85, i64 %94)
  store i32 0, i32* %3, align 4
  br label %114

96:                                               ; preds = %62
  %97 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %97, i64 %99
  %101 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %58

111:                                              ; preds = %58
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %74
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @sprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
