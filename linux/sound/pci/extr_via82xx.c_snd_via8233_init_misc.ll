; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.via82xx = type { i64, i32, %struct.snd_kcontrol**, %struct.TYPE_11__*, i32 }
%struct.snd_kcontrol = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@TYPE_VIA8233A = common dso_local global i64 0, align 8
@snd_via8233_capture_source = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@snd_via8233_dxs3_spdif_control = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Using DXS as PCM Playback\0A\00", align 1
@snd_via8233_pcmdxs_volume_control = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@snd_via8233_dxs_volume_control = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIA8233_SPDIF_CTRL = common dso_local global i32 0, align 4
@VIA8233_SPDIF_SLOT_MASK = common dso_local global i8 0, align 1
@VIA8233_SPDIF_SLOT_1011 = common dso_local global i8 0, align 1
@VIA8233_SPDIF_DX3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via8233_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_init_misc(%struct.via82xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.snd_ctl_elem_id, align 4
  %9 = alloca %struct.snd_kcontrol*, align 8
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  %10 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %11 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPE_VIA8233A, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 2
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @snd_via8233_capture_source, i32 0, i32 0), align 4
  %23 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %24 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %27 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_10__* @snd_via8233_capture_source, %struct.via82xx* %26)
  %28 = call i32 @snd_ctl_add(%struct.TYPE_11__* %25, %struct.snd_kcontrol* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %159

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %39 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ac97_can_spdif(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %45 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %48 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_10__* @snd_via8233_dxs3_spdif_control, %struct.via82xx* %47)
  %49 = call i32 @snd_ctl_add(%struct.TYPE_11__* %46, %struct.snd_kcontrol* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %159

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %57 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TYPE_VIA8233A, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %130

61:                                               ; preds = %55
  %62 = call i32 @memset(%struct.snd_ctl_elem_id* %8, i32 0, i32 8)
  %63 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcpy(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %67 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %69 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = call i32 @snd_ctl_find_id(%struct.TYPE_11__* %70, %struct.snd_ctl_elem_id* %8)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %61
  %74 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %75 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %81 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %84 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_10__* @snd_via8233_pcmdxs_volume_control, %struct.via82xx* %83)
  %85 = call i32 @snd_ctl_add(%struct.TYPE_11__* %82, %struct.snd_kcontrol* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %159

90:                                               ; preds = %73
  br label %129

91:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %125, %91
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %97 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_10__* @snd_via8233_dxs_volume_control, %struct.via82xx* %96)
  store %struct.snd_kcontrol* %97, %struct.snd_kcontrol** %9, align 8
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %99 = icmp ne %struct.snd_kcontrol* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %159

103:                                              ; preds = %95
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %106 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %109 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %108, i32 0, i32 3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %112 = call i32 @snd_ctl_add(%struct.TYPE_11__* %110, %struct.snd_kcontrol* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %159

117:                                              ; preds = %103
  %118 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %119 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %120 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %119, i32 0, i32 2
  %121 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %121, i64 %123
  store %struct.snd_kcontrol* %118, %struct.snd_kcontrol** %124, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %92

128:                                              ; preds = %92
  br label %129

129:                                              ; preds = %128, %90
  br label %130

130:                                              ; preds = %129, %55
  %131 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %132 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @VIA8233_SPDIF_CTRL, align 4
  %135 = call i32 @pci_read_config_byte(i32 %133, i32 %134, i8* %7)
  %136 = load i8, i8* %7, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @VIA8233_SPDIF_SLOT_MASK, align 1
  %139 = zext i8 %138 to i32
  %140 = xor i32 %139, -1
  %141 = and i32 %137, %140
  %142 = load i8, i8* @VIA8233_SPDIF_SLOT_1011, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %141, %143
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %7, align 1
  %146 = load i8, i8* @VIA8233_SPDIF_DX3, align 1
  %147 = zext i8 %146 to i32
  %148 = xor i32 %147, -1
  %149 = load i8, i8* %7, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, %148
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %7, align 1
  %153 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %154 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @VIA8233_SPDIF_CTRL, align 4
  %157 = load i8, i8* %7, align 1
  %158 = call i32 @pci_write_config_byte(i32 %155, i32 %156, i8 zeroext %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %130, %115, %100, %88, %52, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @snd_ctl_add(%struct.TYPE_11__*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_10__*, %struct.via82xx*) #1

declare dso_local i64 @ac97_can_spdif(i32) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_find_id(%struct.TYPE_11__*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
