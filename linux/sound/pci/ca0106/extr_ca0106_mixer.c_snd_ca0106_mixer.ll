; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_ca0106 = type { %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32 }

@snd_ca0106_mixer.ca0106_remove_ctls = internal global [22 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [28 x i8] c"Master Mono Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Master Mono Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"3D Control - Switch\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"3D Control Sigmatel - Depth\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"CD Playback Switch\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"CD Playback Volume\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Phone Playback Switch\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Phone Playback Volume\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Video Playback Switch\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Video Playback Volume\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Beep Playback Switch\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Beep Playback Volume\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Mono Output Select\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Capture Switch\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"External Amplifier\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Sigmatel 4-Speaker Stereo Playback Switch\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Surround Phase Inversion Playback Switch\00", align 1
@snd_ca0106_mixer.ca0106_rename_ctls = internal global [21 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* null], align 16
@.str.21 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Line Playback Switch\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"AC97 Line Capture Switch\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Line Playback Volume\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"AC97 Line Capture Volume\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Aux Playback Switch\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"AC97 Aux Capture Switch\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Aux Playback Volume\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"AC97 Aux Capture Volume\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Mic Playback Switch\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"AC97 Mic Capture Switch\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Mic Playback Volume\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"AC97 Mic Capture Volume\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Mic Select\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"AC97 Mic Select\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Mic Boost (+20dB)\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"AC97 Mic Boost (+20dB)\00", align 1
@snd_ca0106_volume_ctls = common dso_local global i32 0, align 4
@snd_ca0106_volume_i2c_adc_ctls = common dso_local global i32 0, align 4
@snd_ca0106_capture_mic_line_in = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_ca0106_capture_line_in_side_out = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_ca0106_master_db_scale = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@slave_vols = common dso_local global i32 0, align 4
@slave_sws = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"CA0106\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ca0106_mixer(%struct.snd_ca0106* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ca0106*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_kcontrol_new, align 4
  %10 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %3, align 8
  %11 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %11, i32 0, i32 1
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %5, align 8
  store i8** getelementptr inbounds ([22 x i8*], [22 x i8*]* @snd_ca0106_mixer.ca0106_remove_ctls, i64 0, i64 0), i8*** %6, align 8
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @remove_ctl(%struct.snd_card* %19, i8* %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %6, align 8
  br label %14

26:                                               ; preds = %14
  store i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @snd_ca0106_mixer.ca0106_rename_ctls, i64 0, i64 0), i8*** %6, align 8
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @rename_ctl(%struct.snd_card* %32, i8* %35, i8* %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8** %42, i8*** %6, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %45 = load i32, i32* @snd_ca0106_volume_ctls, align 4
  %46 = call i32 @ADD_CTLS(%struct.snd_ca0106* %44, i32 %45)
  %47 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %79

53:                                               ; preds = %43
  %54 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %55 = load i32, i32* @snd_ca0106_volume_i2c_adc_ctls, align 4
  %56 = call i32 @ADD_CTLS(%struct.snd_ca0106* %54, i32 %55)
  %57 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %65 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %66 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ca0106_capture_mic_line_in, %struct.snd_ca0106* %65)
  %67 = call i32 @snd_ctl_add(%struct.snd_card* %64, %struct.snd_kcontrol* %66)
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %53
  %69 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %70 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %71 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ca0106_capture_line_in_side_out, %struct.snd_ca0106* %70)
  %72 = call i32 @snd_ctl_add(%struct.snd_card* %69, %struct.snd_kcontrol* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %166

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %81 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %89 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @snd_ca0106_volume_spi_dac_ctl(%struct.TYPE_2__* %90, i32 %91)
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = bitcast %struct.snd_kcontrol_new* %9 to i8*
  %95 = bitcast %struct.snd_kcontrol_new* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  br label %113

100:                                              ; preds = %87
  %101 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %102 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %103 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %9, %struct.snd_ca0106* %102)
  %104 = call i32 @snd_ctl_add(%struct.snd_card* %101, %struct.snd_kcontrol* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %166

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %87

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113, %79
  %115 = load i32*, i32** @snd_ca0106_master_db_scale, align 8
  %116 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32* %115)
  store %struct.snd_kcontrol* %116, %struct.snd_kcontrol** %7, align 8
  %117 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %118 = icmp ne %struct.snd_kcontrol* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %166

122:                                              ; preds = %114
  %123 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %124 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %125 = call i32 @snd_ctl_add(%struct.snd_card* %123, %struct.snd_kcontrol* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %166

130:                                              ; preds = %122
  %131 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %132 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %133 = load i32, i32* @slave_vols, align 4
  %134 = call i32 @add_slaves(%struct.snd_card* %131, %struct.snd_kcontrol* %132, i32 %133)
  %135 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %136 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %130
  %142 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32* null)
  store %struct.snd_kcontrol* %142, %struct.snd_kcontrol** %7, align 8
  %143 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %144 = icmp ne %struct.snd_kcontrol* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %166

148:                                              ; preds = %141
  %149 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %150 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %151 = call i32 @snd_ctl_add(%struct.snd_card* %149, %struct.snd_kcontrol* %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %166

156:                                              ; preds = %148
  %157 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %158 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %159 = load i32, i32* @slave_sws, align 4
  %160 = call i32 @add_slaves(%struct.snd_card* %157, %struct.snd_kcontrol* %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %130
  %162 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %163 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @strcpy(i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %161, %154, %145, %128, %119, %107, %76
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @remove_ctl(%struct.snd_card*, i8*) #1

declare dso_local i32 @rename_ctl(%struct.snd_card*, i8*, i8*) #1

declare dso_local i32 @ADD_CTLS(%struct.snd_ca0106*, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ca0106*) #1

declare dso_local i32 @snd_ca0106_volume_spi_dac_ctl(%struct.TYPE_2__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32*) #1

declare dso_local i32 @add_slaves(%struct.snd_card*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
