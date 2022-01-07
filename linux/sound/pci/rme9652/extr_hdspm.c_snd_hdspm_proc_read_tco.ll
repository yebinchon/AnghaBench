; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_tco.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_tco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"--- TCO ---\0A\00", align 1
@HDSPM_statusRegister = common dso_local global i64 0, align 8
@HDSPM_tco_detect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"TCO module detected.\0A\00", align 1
@HDSPM_RD_TCO = common dso_local global i64 0, align 8
@HDSPM_TCO1_LTC_Input_valid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"  LTC valid, \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"24 fps, \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"25 fps, \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"29.97 fps, \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"30 fps, \00", align 1
@HDSPM_TCO1_set_drop_frame_flag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"drop frame\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"full frame\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"  no LTC\0A\00", align 1
@HDSPM_TCO1_Video_Input_Format_NTSC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"  Video: NTSC\0A\00", align 1
@HDSPM_TCO1_Video_Input_Format_PAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"  Video: PAL\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"  No video\0A\00", align 1
@HDSPM_TCO1_TCO_lock = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"  Sync: lock\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"  Sync: no lock\0A\00", align 1
@HDSPM_RD_PLL_FREQ = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"    period: %u\0A\00", align 1
@HDSPM_QuadSpeed = common dso_local global i32 0, align 4
@HDSPM_DoubleSpeed = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"  Frequency: %u Hz\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"  LTC In: %02d:%02d:%02d:%02d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"No TCO module detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_tco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_tco(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %17 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %17, i32 0, i32 0
  %19 = load %struct.hdspm*, %struct.hdspm** %18, align 8
  store %struct.hdspm* %19, %struct.hdspm** %5, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %21 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %23 = load i64, i64* @HDSPM_statusRegister, align 8
  %24 = call i8* @hdspm_read(%struct.hdspm* %22, i64 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HDSPM_tco_detect, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %198

33:                                               ; preds = %2
  %34 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %37 = load i64, i64* @HDSPM_RD_TCO, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i8* @hdspm_read(%struct.hdspm* %36, i64 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HDSPM_TCO1_LTC_Input_valid, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %33
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 135
  switch i32 %49, label %59 [
    i32 0, label %50
    i32 132, label %53
    i32 131, label %56
  ]

50:                                               ; preds = %45
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %62

53:                                               ; preds = %45
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %62

59:                                               ; preds = %45
  %60 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %61 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56, %53, %50
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @HDSPM_TCO1_set_drop_frame_flag, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %73

70:                                               ; preds = %62
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  br label %77

74:                                               ; preds = %33
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @HDSPM_TCO1_Video_Input_Format_NTSC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %97

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HDSPM_TCO1_Video_Input_Format_PAL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %92 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %96

93:                                               ; preds = %85
  %94 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %95 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @HDSPM_TCO1_TCO_lock, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %104 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %108

105:                                              ; preds = %97
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %107 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %110 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %115 [
    i32 130, label %112
    i32 134, label %112
    i32 128, label %113
    i32 133, label %113
    i32 129, label %114
  ]

112:                                              ; preds = %108, %108
  store i64 110069313433624, i64* %15, align 8
  br label %115

113:                                              ; preds = %108, %108
  store i64 104857600000000, i64* %15, align 8
  br label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %108, %114, %113, %112
  %116 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %117 = load i64, i64* @HDSPM_RD_PLL_FREQ, align 8
  %118 = call i8* @hdspm_read(%struct.hdspm* %116, i64 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %14, align 4
  %120 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %121)
  %123 = load i64, i64* %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @div_u64(i64 %123, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @HDSPM_QuadSpeed, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = load i32, i32* %16, align 4
  %132 = mul nsw i32 %131, 4
  store i32 %132, i32* %16, align 4
  br label %142

133:                                              ; preds = %115
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @HDSPM_DoubleSpeed, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  %140 = mul nsw i32 %139, 2
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %130
  %143 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %144)
  %146 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %147 = load i64, i64* @HDSPM_RD_TCO, align 8
  %148 = call i8* @hdspm_read(%struct.hdspm* %146, i64 %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 15
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = ashr i32 %152, 4
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 3
  %156 = mul nsw i32 %155, 10
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = ashr i32 %159, 4
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, 15
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = ashr i32 %163, 4
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 7
  %167 = mul nsw i32 %166, 10
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = ashr i32 %170, 4
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, 15
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %9, align 4
  %175 = ashr i32 %174, 4
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = and i32 %176, 7
  %178 = mul nsw i32 %177, 10
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %181, 4
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = and i32 %183, 15
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %9, align 4
  %186 = ashr i32 %185, 4
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = and i32 %187, 3
  %189 = mul nsw i32 %188, 10
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %13, align 4
  %192 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %193, i32 %194, i32 %195, i32 %196)
  br label %201

198:                                              ; preds = %2
  %199 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %200 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %142
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i8* @hdspm_read(%struct.hdspm*, i64) #1

declare dso_local i32 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
