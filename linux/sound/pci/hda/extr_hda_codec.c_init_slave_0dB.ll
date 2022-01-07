; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_init_slave_0dB.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_init_slave_0dB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.slave_init_arg = type { i32, i32 }

@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@snd_hda_mixer_amp_tlv = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Unexpected TLV callback for slave %s:%d\0A\00", align 1
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVO_TYPE = common dso_local global i64 0, align 8
@SNDRV_CTL_TLVT_DB_SCALE = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP = common dso_local global i64 0, align 8
@TLV_DB_SCALE_MUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Mismatching dB step for vmaster slave (%d!=%d)\0A\00", align 1
@SNDRV_CTL_TLVO_DB_SCALE_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_kcontrol*, i8*)* @init_slave_0dB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slave_0dB(%struct.snd_kcontrol* %0, %struct.snd_kcontrol* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.slave_init_arg*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.slave_init_arg*
  store %struct.slave_init_arg* %14, %struct.slave_init_arg** %8, align 8
  store i32* null, i32** %10, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @snd_hda_mixer_amp_tlv, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %33 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @codec_err(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  store i32 0, i32* %4, align 4
  br label %127

44:                                               ; preds = %24
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %47 = call i32 @get_ctl_amp_tlv(%struct.snd_kcontrol* %45, i32* %46)
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %48, i32** %10, align 8
  br label %65

49:                                               ; preds = %3
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  br label %64

64:                                               ; preds = %59, %49
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* @SNDRV_CTL_TLVO_TYPE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SNDRV_CTL_TLVT_DB_SCALE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %65
  store i32 0, i32* %4, align 4
  br label %127

76:                                               ; preds = %68
  %77 = load i32*, i32** %10, align 8
  %78 = load i64, i64* @SNDRV_CTL_TLVO_DB_SCALE_MUTE_AND_STEP, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @TLV_DB_SCALE_MUTE, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %127

88:                                               ; preds = %76
  %89 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %90 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %95 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %101 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %104 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @codec_err(i32 %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106)
  store i32 0, i32* %4, align 4
  br label %127

108:                                              ; preds = %93, %88
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.slave_init_arg*, %struct.slave_init_arg** %8, align 8
  %111 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i64, i64* @SNDRV_CTL_TLVO_DB_SCALE_MIN, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 0, %115
  %117 = load i32, i32* %11, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @put_kctl_with_value(%struct.snd_kcontrol* %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %127

126:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %121, %99, %87, %75, %31
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @codec_err(i32, i8*, i32, i32) #1

declare dso_local i32 @get_ctl_amp_tlv(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @put_kctl_with_value(%struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
