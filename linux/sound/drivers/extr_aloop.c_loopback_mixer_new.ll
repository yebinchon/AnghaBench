; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_mixer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_mixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback = type { %struct.loopback_setup**, %struct.snd_pcm**, %struct.snd_card* }
%struct.loopback_setup = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }

@.str = private unnamed_addr constant [15 x i8] c"Loopback Mixer\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@NO_PITCH = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@loopback_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback*, i32)* @loopback_mixer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_mixer_new(%struct.loopback* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loopback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.loopback_setup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.loopback* %0, %struct.loopback** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.loopback*, %struct.loopback** %4, align 8
  %16 = getelementptr inbounds %struct.loopback, %struct.loopback* %15, i32 0, i32 2
  %17 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  store %struct.snd_card* %17, %struct.snd_card** %6, align 8
  %18 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %141, %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %144

25:                                               ; preds = %22
  %26 = load %struct.loopback*, %struct.loopback** %4, align 8
  %27 = getelementptr inbounds %struct.loopback, %struct.loopback* %26, i32 0, i32 1
  %28 = load %struct.snd_pcm**, %struct.snd_pcm*** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %28, i64 %30
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %31, align 8
  store %struct.snd_pcm* %32, %struct.snd_pcm** %7, align 8
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %137, %25
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %140

44:                                               ; preds = %40
  %45 = load %struct.loopback*, %struct.loopback** %4, align 8
  %46 = getelementptr inbounds %struct.loopback, %struct.loopback* %45, i32 0, i32 0
  %47 = load %struct.loopback_setup**, %struct.loopback_setup*** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.loopback_setup*, %struct.loopback_setup** %47, i64 %49
  %51 = load %struct.loopback_setup*, %struct.loopback_setup** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %51, i64 %53
  store %struct.loopback_setup* %54, %struct.loopback_setup** %9, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %57 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @NO_PITCH, align 4
  %59 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %60 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %62 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %63 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %65 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %64, i32 0, i32 1
  store i32 48000, i32* %65, align 4
  %66 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %67 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %66, i32 0, i32 2
  store i32 2, i32* %67, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %133, %44
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** @loopback_controls, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %68
  %74 = load i32*, i32** @loopback_controls, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.loopback*, %struct.loopback** %4, align 8
  %79 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %77, %struct.loopback* %78)
  store %struct.snd_kcontrol* %79, %struct.snd_kcontrol** %8, align 8
  %80 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %81 = icmp ne %struct.snd_kcontrol* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %145

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %92 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  switch i32 %94, label %123 [
    i32 131, label %95
    i32 129, label %102
    i32 128, label %109
    i32 130, label %116
  ]

95:                                               ; preds = %85
  %96 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %97 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %96, i32 0, i32 6
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %99 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %98, i32 0, i32 0
  %100 = bitcast %struct.TYPE_4__* %97 to i8*
  %101 = bitcast %struct.TYPE_4__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  br label %124

102:                                              ; preds = %85
  %103 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %104 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %103, i32 0, i32 5
  %105 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %106 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %105, i32 0, i32 0
  %107 = bitcast %struct.TYPE_4__* %104 to i8*
  %108 = bitcast %struct.TYPE_4__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 8, i1 false)
  br label %124

109:                                              ; preds = %85
  %110 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %111 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %110, i32 0, i32 4
  %112 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %113 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %112, i32 0, i32 0
  %114 = bitcast %struct.TYPE_4__* %111 to i8*
  %115 = bitcast %struct.TYPE_4__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 8, i1 false)
  br label %124

116:                                              ; preds = %85
  %117 = load %struct.loopback_setup*, %struct.loopback_setup** %9, align 8
  %118 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %117, i32 0, i32 3
  %119 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %120 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %119, i32 0, i32 0
  %121 = bitcast %struct.TYPE_4__* %118 to i8*
  %122 = bitcast %struct.TYPE_4__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 8, i1 false)
  br label %124

123:                                              ; preds = %85
  br label %124

124:                                              ; preds = %123, %116, %109, %102, %95
  %125 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %126 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %127 = call i32 @snd_ctl_add(%struct.snd_card* %125, %struct.snd_kcontrol* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %145

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %68

136:                                              ; preds = %68
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %40

140:                                              ; preds = %40
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %22

144:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %130, %82
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.loopback*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
