; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HDSPM_ClockModeMaster = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Warning: device is not running as a clock master.\0A\00", align 1
@HDSPM_AUTOSYNC_FROM_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected no External Sync\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Warning: No AutoSync source for requested rate\0A\00", align 1
@HDSPM_SPEED_SINGLE = common dso_local global i32 0, align 4
@HDSPM_SPEED_DOUBLE = common dso_local global i32 0, align 4
@HDSPM_SPEED_QUAD = common dso_local global i32 0, align 4
@HDSPM_Frequency32KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency44_1KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency48KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency64KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency88_2KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency96KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency128KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency176_4KHz = common dso_local global i32 0, align 4
@HDSPM_Frequency192KHz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"cannot change from %s speed to %s speed mode (capture PID = %d, playback PID = %d)\0A\00", align 1
@hdspm_speed_names = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@HDSPM_FrequencyMask = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@AES32 = common dso_local global i64 0, align 8
@HDSPM_eeprom_wr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32, i32)* @hdspm_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_rate(%struct.hdspm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %15 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HDSPM_ClockModeMaster, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %25 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %24, i32 0, i32 29
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %57

30:                                               ; preds = %20
  %31 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %32 = call i32 @hdspm_external_sample_rate(%struct.hdspm* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %34 = call i64 @hdspm_autosync_ref(%struct.hdspm* %33)
  %35 = load i64, i64* @HDSPM_AUTOSYNC_FROM_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %39 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %38, i32 0, i32 29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %56

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %50 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %49, i32 0, i32 29
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %60 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 48000
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @HDSPM_SPEED_SINGLE, align 4
  store i32 %65, i32* %11, align 4
  br label %74

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %67, 96000
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @HDSPM_SPEED_DOUBLE, align 4
  store i32 %70, i32* %11, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @HDSPM_SPEED_QUAD, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %75, 48000
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @HDSPM_SPEED_SINGLE, align 4
  store i32 %78, i32* %12, align 4
  br label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 96000
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @HDSPM_SPEED_DOUBLE, align 4
  store i32 %83, i32* %12, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @HDSPM_SPEED_QUAD, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %107 [
    i32 32000, label %89
    i32 44100, label %91
    i32 48000, label %93
    i32 64000, label %95
    i32 88200, label %97
    i32 96000, label %99
    i32 128000, label %101
    i32 176400, label %103
    i32 192000, label %105
  ]

89:                                               ; preds = %87
  %90 = load i32, i32* @HDSPM_Frequency32KHz, align 4
  store i32 %90, i32* %9, align 4
  br label %110

91:                                               ; preds = %87
  %92 = load i32, i32* @HDSPM_Frequency44_1KHz, align 4
  store i32 %92, i32* %9, align 4
  br label %110

93:                                               ; preds = %87
  %94 = load i32, i32* @HDSPM_Frequency48KHz, align 4
  store i32 %94, i32* %9, align 4
  br label %110

95:                                               ; preds = %87
  %96 = load i32, i32* @HDSPM_Frequency64KHz, align 4
  store i32 %96, i32* %9, align 4
  br label %110

97:                                               ; preds = %87
  %98 = load i32, i32* @HDSPM_Frequency88_2KHz, align 4
  store i32 %98, i32* %9, align 4
  br label %110

99:                                               ; preds = %87
  %100 = load i32, i32* @HDSPM_Frequency96KHz, align 4
  store i32 %100, i32* %9, align 4
  br label %110

101:                                              ; preds = %87
  %102 = load i32, i32* @HDSPM_Frequency128KHz, align 4
  store i32 %102, i32* %9, align 4
  br label %110

103:                                              ; preds = %87
  %104 = load i32, i32* @HDSPM_Frequency176_4KHz, align 4
  store i32 %104, i32* %9, align 4
  br label %110

105:                                              ; preds = %87
  %106 = load i32, i32* @HDSPM_Frequency192KHz, align 4
  store i32 %106, i32* %9, align 4
  br label %110

107:                                              ; preds = %87
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %291

110:                                              ; preds = %105, %103, %101, %99, %97, %95, %93, %91, %89
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %149

114:                                              ; preds = %110
  %115 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %116 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %121 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %119, %114
  %125 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %126 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %125, i32 0, i32 29
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @hdspm_speed_names, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @hdspm_speed_names, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %141 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %144 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %139, i64 %142, i64 %145)
  %147 = load i32, i32* @EBUSY, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %291

149:                                              ; preds = %119, %110
  %150 = load i32, i32* @HDSPM_FrequencyMask, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %153 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %158 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %162 = load i32, i32* @HDSPM_controlRegister, align 4
  %163 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %164 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @hdspm_write(%struct.hdspm* %161, i32 %162, i32 %165)
  %167 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @hdspm_set_dds_value(%struct.hdspm* %167, i32 %168)
  %170 = load i64, i64* @AES32, align 8
  %171 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %172 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %149
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %181 = load i32, i32* @HDSPM_eeprom_wr, align 4
  %182 = call i32 @hdspm_write(%struct.hdspm* %180, i32 %181, i32 0)
  br label %183

183:                                              ; preds = %179, %175, %149
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %186 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp sle i32 %187, 48000
  br i1 %188, label %189, label %220

189:                                              ; preds = %183
  %190 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %191 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %190, i32 0, i32 28
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %194 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %193, i32 0, i32 16
  store i32 %192, i32* %194, align 4
  %195 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %196 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %195, i32 0, i32 27
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %199 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %198, i32 0, i32 14
  store i32 %197, i32* %199, align 4
  %200 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %201 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %200, i32 0, i32 26
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %204 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %203, i32 0, i32 12
  store i32 %202, i32* %204, align 4
  %205 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %206 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %205, i32 0, i32 25
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %209 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 4
  %210 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %211 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %210, i32 0, i32 24
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %214 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 4
  %215 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %216 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %215, i32 0, i32 23
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %219 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %218, i32 0, i32 6
  store i32 %217, i32* %219, align 4
  br label %286

220:                                              ; preds = %183
  %221 = load i32, i32* %6, align 4
  %222 = icmp sle i32 %221, 96000
  br i1 %222, label %223, label %254

223:                                              ; preds = %220
  %224 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %225 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %224, i32 0, i32 22
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %228 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %227, i32 0, i32 16
  store i32 %226, i32* %228, align 4
  %229 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %230 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %229, i32 0, i32 21
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %233 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %232, i32 0, i32 14
  store i32 %231, i32* %233, align 4
  %234 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %235 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %234, i32 0, i32 20
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %238 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %237, i32 0, i32 12
  store i32 %236, i32* %238, align 4
  %239 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %240 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %239, i32 0, i32 19
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %243 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %242, i32 0, i32 10
  store i32 %241, i32* %243, align 4
  %244 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %245 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %244, i32 0, i32 18
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %248 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %247, i32 0, i32 8
  store i32 %246, i32* %248, align 4
  %249 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %250 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %249, i32 0, i32 17
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %253 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  br label %285

254:                                              ; preds = %220
  %255 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %256 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %259 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %258, i32 0, i32 16
  store i32 %257, i32* %259, align 4
  %260 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %261 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %260, i32 0, i32 13
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %264 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %263, i32 0, i32 14
  store i32 %262, i32* %264, align 4
  %265 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %266 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %265, i32 0, i32 11
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %269 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %268, i32 0, i32 12
  store i32 %267, i32* %269, align 4
  %270 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %271 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %274 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 4
  %275 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %276 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %279 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %278, i32 0, i32 8
  store i32 %277, i32* %279, align 4
  %280 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %281 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %284 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %254, %223
  br label %286

286:                                              ; preds = %285, %189
  %287 = load i32, i32* %10, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 -1, i32* %4, align 4
  br label %291

290:                                              ; preds = %286
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %289, %124, %107
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @hdspm_external_sample_rate(%struct.hdspm*) #1

declare dso_local i64 @hdspm_autosync_ref(%struct.hdspm*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_set_dds_value(%struct.hdspm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
