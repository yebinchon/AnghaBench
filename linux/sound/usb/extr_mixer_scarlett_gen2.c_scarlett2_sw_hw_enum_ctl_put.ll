; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_sw_hw_enum_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_sw_hw_enum_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.TYPE_11__*, %struct.scarlett2_mixer_data* }
%struct.TYPE_11__ = type { i32 }
%struct.scarlett2_mixer_data = type { i32*, i32*, i32, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@SCARLETT2_CONFIG_LINE_OUT_VOLUME = common dso_local global i32 0, align 4
@SCARLETT2_VOLUME_BIAS = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@SCARLETT2_CONFIG_SW_HW_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @scarlett2_sw_hw_enum_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_sw_hw_enum_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca %struct.scarlett2_mixer_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %13, align 8
  store %struct.usb_mixer_elem_info* %14, %struct.usb_mixer_elem_info** %5, align 8
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %17, align 8
  store %struct.usb_mixer_interface* %18, %struct.usb_mixer_interface** %6, align 8
  %19 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %19, i32 0, i32 1
  %21 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %20, align 8
  store %struct.scarlett2_mixer_data* %21, %struct.scarlett2_mixer_data** %7, align 8
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %26 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %29 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %134

50:                                               ; preds = %2
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %53 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %50
  %61 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %64 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %63, i32 0, i32 4
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %62
  store i32 %75, i32* %73, align 4
  br label %91

76:                                               ; preds = %50
  %77 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %78 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %79 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %80, i64 %82
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %77
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %76, %60
  %92 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %93 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %96 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %102 = load i32, i32* @SCARLETT2_CONFIG_LINE_OUT_VOLUME, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %105 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SCARLETT2_VOLUME_BIAS, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @scarlett2_usb_set_config(%struct.usb_mixer_interface* %101, i32 %102, i32 %103, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  br label %134

113:                                              ; preds = %91
  %114 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %115 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %120 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %121 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %120, i32 0, i32 4
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %122, i64 %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = call i32 @snd_ctl_notify(i32 %118, i32 %119, i32* %127)
  %129 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %130 = load i32, i32* @SCARLETT2_CONFIG_SW_HW_SWITCH, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @scarlett2_usb_set_config(%struct.usb_mixer_interface* %129, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %113, %112, %49
  %135 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %136 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %135, i32 0, i32 3
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %11, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scarlett2_usb_set_config(%struct.usb_mixer_interface*, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
