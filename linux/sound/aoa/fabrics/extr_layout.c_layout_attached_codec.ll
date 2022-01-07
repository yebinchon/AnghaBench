; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/fabrics/extr_layout.c_layout_attached_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/fabrics/extr_layout.c_layout_attached_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_dev = type { i32, i32, i32, i32, %struct.snd_kcontrol*, %struct.TYPE_9__, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i32 (i32*)*, i32*)*, i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)* }
%struct.snd_kcontrol = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.layout_dev*, i32)*, i64 }
%struct.aoa_codec = type { %struct.layout_dev*, %struct.codec_connection* }
%struct.codec_connection = type { i32 }

@layout_device = common dso_local global %struct.layout_dev* null, align 8
@AOA_NOTIFY_HEADPHONE = common dso_local global i32 0, align 4
@AOA_NOTIFY_LINE_OUT = common dso_local global i32 0, align 4
@master_ctl = common dso_local global i32 0, align 4
@CC_SPEAKERS = common dso_local global i32 0, align 4
@speakers_ctl = common dso_local global i32 0, align 4
@CC_HEADPHONE = common dso_local global i32 0, align 4
@headphone_ctl = common dso_local global i32 0, align 4
@headphone_detect_choice = common dso_local global i32 0, align 4
@headphone_detected = common dso_local global i32 0, align 4
@CC_LINEOUT = common dso_local global i32 0, align 4
@lineout_ctl = common dso_local global i32 0, align 4
@CC_LINEOUT_LABELLED_HEADPHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@lineout_detect_choice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Headphone Detect Autoswitch\00", align 1
@lineout_detected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Headphone Detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoa_codec*)* @layout_attached_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_attached_codec(%struct.aoa_codec* %0) #0 {
  %2 = alloca %struct.aoa_codec*, align 8
  %3 = alloca %struct.codec_connection*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.layout_dev*, align 8
  store %struct.aoa_codec* %0, %struct.aoa_codec** %2, align 8
  %8 = load %struct.layout_dev*, %struct.layout_dev** @layout_device, align 8
  store %struct.layout_dev* %8, %struct.layout_dev** %7, align 8
  %9 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %10 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %9, i32 0, i32 1
  %11 = load %struct.codec_connection*, %struct.codec_connection** %10, align 8
  store %struct.codec_connection* %11, %struct.codec_connection** %3, align 8
  %12 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %13 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %12, i32 0, i32 0
  %14 = load %struct.layout_dev*, %struct.layout_dev** %13, align 8
  %15 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %14, i32 0, i32 11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)** %17, align 8
  %19 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %20 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %19, i32 0, i32 0
  %21 = load %struct.layout_dev*, %struct.layout_dev** %20, align 8
  %22 = load i32, i32* @AOA_NOTIFY_HEADPHONE, align 4
  %23 = call i32 %18(%struct.layout_dev* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %25 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %24, i32 0, i32 0
  %26 = load %struct.layout_dev*, %struct.layout_dev** %25, align 8
  %27 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %26, i32 0, i32 11
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)** %29, align 8
  %31 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %32 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %31, i32 0, i32 0
  %33 = load %struct.layout_dev*, %struct.layout_dev** %32, align 8
  %34 = load i32, i32* @AOA_NOTIFY_LINE_OUT, align 4
  %35 = call i32 %30(%struct.layout_dev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %37 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %36, i32 0, i32 0
  %38 = load %struct.layout_dev*, %struct.layout_dev** %37, align 8
  %39 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %38, i32 0, i32 11
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %46 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %45, i32 0, i32 0
  %47 = load %struct.layout_dev*, %struct.layout_dev** %46, align 8
  %48 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @master_ctl, %struct.layout_dev* %47)
  store %struct.snd_kcontrol* %48, %struct.snd_kcontrol** %4, align 8
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %50 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %51 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %50, i32 0, i32 10
  store %struct.snd_kcontrol* %49, %struct.snd_kcontrol** %51, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %53 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %52)
  br label %54

54:                                               ; preds = %44, %1
  br label %55

55:                                               ; preds = %263, %54
  %56 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %57 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %266

60:                                               ; preds = %55
  %61 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %62 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CC_SPEAKERS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %75 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)** %78, align 8
  %80 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %81 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %80, i32 0, i32 0
  %82 = load %struct.layout_dev*, %struct.layout_dev** %81, align 8
  %83 = call i32 %79(%struct.layout_dev* %82, i32 1)
  br label %84

84:                                               ; preds = %73, %70, %67
  %85 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %86 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %85, i32 0, i32 0
  %87 = load %struct.layout_dev*, %struct.layout_dev** %86, align 8
  %88 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @speakers_ctl, %struct.layout_dev* %87)
  store %struct.snd_kcontrol* %88, %struct.snd_kcontrol** %4, align 8
  %89 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %90 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %91 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %90, i32 0, i32 9
  store %struct.snd_kcontrol* %89, %struct.snd_kcontrol** %91, align 8
  %92 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %93 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %92)
  br label %94

94:                                               ; preds = %84, %60
  %95 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %96 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CC_HEADPHONE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %159

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %106 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)** %109, align 8
  %111 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %112 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %111, i32 0, i32 0
  %113 = load %struct.layout_dev*, %struct.layout_dev** %112, align 8
  %114 = call i32 %110(%struct.layout_dev* %113, i32 1)
  br label %115

115:                                              ; preds = %104, %101
  %116 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %117 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %116, i32 0, i32 0
  %118 = load %struct.layout_dev*, %struct.layout_dev** %117, align 8
  %119 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @headphone_ctl, %struct.layout_dev* %118)
  store %struct.snd_kcontrol* %119, %struct.snd_kcontrol** %4, align 8
  %120 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %121 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %122 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %121, i32 0, i32 8
  store %struct.snd_kcontrol* %120, %struct.snd_kcontrol** %122, align 8
  %123 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %124 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %123)
  %125 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %126 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_9__*, i32, i32 (i32*)*, i32*)*, i32 (%struct.TYPE_9__*, i32, i32 (i32*)*, i32*)** %129, align 8
  %131 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %132 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %131, i32 0, i32 5
  %133 = load i32, i32* @AOA_NOTIFY_HEADPHONE, align 4
  %134 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %135 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %134, i32 0, i32 3
  %136 = call i32 %130(%struct.TYPE_9__* %132, i32 %133, i32 (i32*)* @layout_notify, i32* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %141 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %143 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %115
  %147 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %148 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @headphone_detect_choice, %struct.layout_dev* %147)
  store %struct.snd_kcontrol* %148, %struct.snd_kcontrol** %4, align 8
  %149 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %150 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %149)
  %151 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %152 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @headphone_detected, %struct.layout_dev* %151)
  store %struct.snd_kcontrol* %152, %struct.snd_kcontrol** %4, align 8
  %153 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %154 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %155 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %154, i32 0, i32 7
  store %struct.snd_kcontrol* %153, %struct.snd_kcontrol** %155, align 8
  %156 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %157 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %156)
  br label %158

158:                                              ; preds = %146, %115
  br label %159

159:                                              ; preds = %158, %94
  %160 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %161 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CC_LINEOUT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %263

166:                                              ; preds = %159
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %171 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32 (%struct.layout_dev*, i32)*, i32 (%struct.layout_dev*, i32)** %174, align 8
  %176 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %177 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %176, i32 0, i32 0
  %178 = load %struct.layout_dev*, %struct.layout_dev** %177, align 8
  %179 = call i32 %175(%struct.layout_dev* %178, i32 1)
  br label %180

180:                                              ; preds = %169, %166
  %181 = load %struct.aoa_codec*, %struct.aoa_codec** %2, align 8
  %182 = getelementptr inbounds %struct.aoa_codec, %struct.aoa_codec* %181, i32 0, i32 0
  %183 = load %struct.layout_dev*, %struct.layout_dev** %182, align 8
  %184 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @lineout_ctl, %struct.layout_dev* %183)
  store %struct.snd_kcontrol* %184, %struct.snd_kcontrol** %4, align 8
  %185 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %186 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @CC_LINEOUT_LABELLED_HEADPHONE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %193 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @strlcpy(i32 %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %197

197:                                              ; preds = %191, %180
  %198 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %199 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %200 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %199, i32 0, i32 6
  store %struct.snd_kcontrol* %198, %struct.snd_kcontrol** %200, align 8
  %201 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %202 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %201)
  %203 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %204 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_9__*, i32, i32 (i32*)*, i32*)*, i32 (%struct.TYPE_9__*, i32, i32 (i32*)*, i32*)** %207, align 8
  %209 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %210 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %209, i32 0, i32 5
  %211 = load i32, i32* @AOA_NOTIFY_LINE_OUT, align 4
  %212 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %213 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %212, i32 0, i32 2
  %214 = call i32 %208(%struct.TYPE_9__* %210, i32 %211, i32 (i32*)* @layout_notify, i32* %213)
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %219 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %221 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %262

224:                                              ; preds = %197
  %225 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %226 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @lineout_detect_choice, %struct.layout_dev* %225)
  store %struct.snd_kcontrol* %226, %struct.snd_kcontrol** %4, align 8
  %227 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %228 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @CC_LINEOUT_LABELLED_HEADPHONE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %224
  %234 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %235 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @strlcpy(i32 %237, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %239

239:                                              ; preds = %233, %224
  %240 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %241 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %240)
  %242 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %243 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @lineout_detected, %struct.layout_dev* %242)
  store %struct.snd_kcontrol* %243, %struct.snd_kcontrol** %4, align 8
  %244 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %245 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CC_LINEOUT_LABELLED_HEADPHONE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %239
  %251 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %252 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @strlcpy(i32 %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %256

256:                                              ; preds = %250, %239
  %257 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %258 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %259 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %258, i32 0, i32 4
  store %struct.snd_kcontrol* %257, %struct.snd_kcontrol** %259, align 8
  %260 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %261 = call i32 @aoa_snd_ctl_add(%struct.snd_kcontrol* %260)
  br label %262

262:                                              ; preds = %256, %197
  br label %263

263:                                              ; preds = %262, %159
  %264 = load %struct.codec_connection*, %struct.codec_connection** %3, align 8
  %265 = getelementptr inbounds %struct.codec_connection, %struct.codec_connection* %264, i32 1
  store %struct.codec_connection* %265, %struct.codec_connection** %3, align 8
  br label %55

266:                                              ; preds = %55
  %267 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %268 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %273 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %272, i32 0, i32 3
  %274 = call i32 @layout_notify(i32* %273)
  br label %275

275:                                              ; preds = %271, %266
  %276 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %277 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load %struct.layout_dev*, %struct.layout_dev** %7, align 8
  %282 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %281, i32 0, i32 2
  %283 = call i32 @layout_notify(i32* %282)
  br label %284

284:                                              ; preds = %280, %275
  ret void
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.layout_dev*) #1

declare dso_local i32 @aoa_snd_ctl_add(%struct.snd_kcontrol*) #1

declare dso_local i32 @layout_notify(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
