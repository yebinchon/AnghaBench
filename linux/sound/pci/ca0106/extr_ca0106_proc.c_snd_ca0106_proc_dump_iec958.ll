; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_dump_iec958.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_proc.c_snd_ca0106_proc_dump_iec958.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Mode: consumer\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"audio\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"non-audio\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Rate: \00", align 1
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"44100 Hz\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"48000 Hz\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"32000 Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Copyright: \00", align 1
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"permitted\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"protected\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Emphasis: \00", align 1
@IEC958_AES0_CON_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"50/15us\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Category: \00", align 1
@snd_ca0106_con_category = common dso_local global %struct.TYPE_3__* null, align 8
@IEC958_AES1_CON_CATEGORY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"unknown 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Original: \00", align 1
@IEC958_AES1_CON_ORIGINAL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"original\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"1st generation\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Clock: \00", align 1
@IEC958_AES3_CON_CLOCK = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"1000 ppm\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"50 ppm\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"variable pitch\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Mode: professional\0A\00", align 1
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"Rate Locked: \00", align 1
@IEC958_AES0_PRO_FREQ_UNLOCKED = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"yes\0A\00", align 1
@IEC958_AES0_PRO_EMPHASIS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"CCITT J.17\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Stereophonic: \00", align 1
@IEC958_AES1_PRO_MODE = common dso_local global i32 0, align 4
@IEC958_AES1_PRO_MODE_STEREOPHONIC = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"stereo\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"not indicated\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Userbits: \00", align 1
@IEC958_AES1_PRO_USERBITS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"192bit\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"user-defined\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Sample Bits: \00", align 1
@IEC958_AES2_PRO_SBITS = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"20 bit\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"24 bit\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"user defined\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"Word Length: \00", align 1
@IEC958_AES2_PRO_WORDLEN = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [18 x i8] c"22 bit or 18 bit\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"23 bit or 19 bit\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"24 bit or 20 bit\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"20 bit or 16 bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, i32)* @snd_ca0106_proc_dump_iec958 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_proc_dump_iec958(%struct.snd_info_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_info_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %170, label %27

27:                                               ; preds = %2
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %42 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %59 [
    i32 129, label %50
    i32 128, label %53
    i32 130, label %56
  ]

50:                                               ; preds = %43
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %62

53:                                               ; preds = %43
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %62

56:                                               ; preds = %43
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %58 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %62

59:                                               ; preds = %43
  %60 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %61 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56, %53, %50
  %63 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %64 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %78 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32, i32* @IEC958_AES0_CON_EMPHASIS, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %87 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %91

88:                                               ; preds = %76
  %89 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %90 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %93 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %121, %91
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snd_ca0106_con_category, align 8
  %97 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IEC958_AES1_CON_CATEGORY, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snd_ca0106_con_category, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %103, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snd_ca0106_con_category, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %118)
  br label %124

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %94

124:                                              ; preds = %111, %94
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snd_ca0106_con_category, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %126)
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IEC958_AES1_CON_CATEGORY, align 4
  %134 = and i32 %132, %133
  %135 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %138 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IEC958_AES1_CON_ORIGINAL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %146 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %150

147:                                              ; preds = %136
  %148 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %149 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %152 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IEC958_AES3_CON_CLOCK, align 4
  %156 = and i32 %154, %155
  switch i32 %156, label %166 [
    i32 133, label %157
    i32 132, label %160
    i32 131, label %163
  ]

157:                                              ; preds = %150
  %158 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %159 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %169

160:                                              ; preds = %150
  %161 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %162 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %169

163:                                              ; preds = %150
  %164 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %165 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %169

166:                                              ; preds = %150
  %167 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %168 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %163, %160, %157
  br label %312

170:                                              ; preds = %2
  %171 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %172 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %173 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %174 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %170
  %181 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %182 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %186

183:                                              ; preds = %170
  %184 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %185 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  %187 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %188 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %192 = and i32 %190, %191
  switch i32 %192, label %202 [
    i32 144, label %193
    i32 143, label %196
    i32 145, label %199
  ]

193:                                              ; preds = %186
  %194 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %195 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %205

196:                                              ; preds = %186
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %198 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %205

199:                                              ; preds = %186
  %200 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %201 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %205

202:                                              ; preds = %186
  %203 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %204 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %199, %196, %193
  %206 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %207 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %209 = load i32, i32* %208, align 16
  %210 = load i32, i32* @IEC958_AES0_PRO_FREQ_UNLOCKED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %215 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %219

216:                                              ; preds = %205
  %217 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %221 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %223 = load i32, i32* %222, align 16
  %224 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS, align 4
  %225 = and i32 %223, %224
  switch i32 %225, label %236 [
    i32 148, label %226
    i32 147, label %229
    i32 149, label %232
    i32 146, label %235
  ]

226:                                              ; preds = %219
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %228 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  br label %239

229:                                              ; preds = %219
  %230 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %231 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %239

232:                                              ; preds = %219
  %233 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %234 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %239

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %219, %235
  %237 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %238 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %232, %229, %226
  %240 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %241 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IEC958_AES1_PRO_MODE, align 4
  %245 = and i32 %243, %244
  %246 = load i32, i32* @IEC958_AES1_PRO_MODE_STEREOPHONIC, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %250 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  br label %254

251:                                              ; preds = %239
  %252 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %253 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %252, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %248
  %255 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %256 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %255, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @IEC958_AES1_PRO_USERBITS, align 4
  %260 = and i32 %258, %259
  switch i32 %260, label %267 [
    i32 142, label %261
    i32 141, label %264
  ]

261:                                              ; preds = %254
  %262 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %263 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  br label %270

264:                                              ; preds = %254
  %265 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %266 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %265, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0))
  br label %270

267:                                              ; preds = %254
  %268 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %269 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %264, %261
  %271 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %272 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @IEC958_AES2_PRO_SBITS, align 4
  %276 = and i32 %274, %275
  switch i32 %276, label %286 [
    i32 140, label %277
    i32 139, label %280
    i32 138, label %283
  ]

277:                                              ; preds = %270
  %278 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %279 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0))
  br label %289

280:                                              ; preds = %270
  %281 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %282 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %281, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0))
  br label %289

283:                                              ; preds = %270
  %284 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %285 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0))
  br label %289

286:                                              ; preds = %270
  %287 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %288 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %283, %280, %277
  %290 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %291 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0))
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @IEC958_AES2_PRO_WORDLEN, align 4
  %295 = and i32 %293, %294
  switch i32 %295, label %308 [
    i32 136, label %296
    i32 135, label %299
    i32 134, label %302
    i32 137, label %305
  ]

296:                                              ; preds = %289
  %297 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %298 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %297, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0))
  br label %311

299:                                              ; preds = %289
  %300 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %301 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  br label %311

302:                                              ; preds = %289
  %303 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %304 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %303, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  br label %311

305:                                              ; preds = %289
  %306 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %307 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %306, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0))
  br label %311

308:                                              ; preds = %289
  %309 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %3, align 8
  %310 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %309, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308, %305, %302, %299, %296
  br label %312

312:                                              ; preds = %311, %169
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
