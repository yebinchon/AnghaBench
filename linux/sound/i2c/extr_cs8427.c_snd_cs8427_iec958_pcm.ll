; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_iec958_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { %struct.TYPE_7__*, %struct.cs8427* }
%struct.TYPE_7__ = type { i32 }
%struct.cs8427 = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@IEC958_AES0_PROFESSIONAL = common dso_local global i8 0, align 1
@IEC958_AES0_PRO_FS = common dso_local global i8 0, align 1
@IEC958_AES0_PRO_FS_32000 = common dso_local global i8 0, align 1
@IEC958_AES0_PRO_FS_44100 = common dso_local global i8 0, align 1
@IEC958_AES0_PRO_FS_48000 = common dso_local global i8 0, align 1
@IEC958_AES0_PRO_FS_NOTID = common dso_local global i8 0, align 1
@IEC958_AES3_CON_FS = common dso_local global i8 0, align 1
@IEC958_AES3_CON_FS_32000 = common dso_local global i8 0, align 1
@IEC958_AES3_CON_FS_44100 = common dso_local global i8 0, align 1
@IEC958_AES3_CON_FS_48000 = common dso_local global i8 0, align 1
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs8427_iec958_pcm(%struct.snd_i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs8427*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %11 = icmp ne %struct.snd_i2c_device* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %172

19:                                               ; preds = %2
  %20 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %21 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %20, i32 0, i32 1
  %22 = load %struct.cs8427*, %struct.cs8427** %21, align 8
  store %struct.cs8427* %22, %struct.cs8427** %6, align 8
  %23 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %24 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %28 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @snd_i2c_lock(%struct.TYPE_7__* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @IEC958_AES0_PROFESSIONAL, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %19
  %40 = load i8, i8* @IEC958_AES0_PRO_FS, align 1
  %41 = sext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, %42
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %77 [
    i32 32000, label %50
    i32 44100, label %59
    i32 48000, label %68
  ]

50:                                               ; preds = %39
  %51 = load i8, i8* @IEC958_AES0_PRO_FS_32000, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = or i32 %56, %52
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %86

59:                                               ; preds = %39
  %60 = load i8, i8* @IEC958_AES0_PRO_FS_44100, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %65, %61
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %86

68:                                               ; preds = %39
  %69 = load i8, i8* @IEC958_AES0_PRO_FS_48000, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = or i32 %74, %70
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  br label %86

77:                                               ; preds = %39
  %78 = load i8, i8* @IEC958_AES0_PRO_FS_NOTID, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = or i32 %83, %79
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  br label %86

86:                                               ; preds = %77, %68, %59, %50
  br label %126

87:                                               ; preds = %19
  %88 = load i8, i8* @IEC958_AES3_CON_FS, align 1
  %89 = sext i8 %88 to i32
  %90 = xor i32 %89, -1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, %90
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  %97 = load i32, i32* %5, align 4
  switch i32 %97, label %125 [
    i32 32000, label %98
    i32 44100, label %107
    i32 48000, label %116
  ]

98:                                               ; preds = %87
  %99 = load i8, i8* @IEC958_AES3_CON_FS_32000, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = or i32 %104, %100
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %102, align 1
  br label %125

107:                                              ; preds = %87
  %108 = load i8, i8* @IEC958_AES3_CON_FS_44100, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = or i32 %113, %109
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  br label %125

116:                                              ; preds = %87
  %117 = load i8, i8* @IEC958_AES3_CON_FS_48000, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = or i32 %122, %118
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 1
  br label %125

125:                                              ; preds = %87, %116, %107, %98
  br label %126

126:                                              ; preds = %125, %86
  %127 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @snd_cs8427_send_corudata(%struct.snd_i2c_device* %127, i32 0, i8* %128, i32 24)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %134 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %139 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %140 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = call i32 @snd_ctl_notify(i32 %137, i32 %138, i32* %143)
  br label %145

145:                                              ; preds = %132, %126
  %146 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %147 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %148, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %154 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %156 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = call i32 @snd_i2c_unlock(%struct.TYPE_7__* %157)
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %145
  %162 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %163 = call i32 @snd_cs8427_reset(%struct.snd_i2c_device* %162)
  br label %164

164:                                              ; preds = %161, %145
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  br label %170

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i32 [ %168, %167 ], [ 0, %169 ]
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %16
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_i2c_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_cs8427_send_corudata(%struct.snd_i2c_device*, i32, i8*, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @snd_i2c_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_cs8427_reset(%struct.snd_i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
