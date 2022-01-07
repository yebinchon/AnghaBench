; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_ctdp_display_information.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_isst_ctdp_display_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp = type { i32, %struct.isst_pkg_ctdp_level_info* }
%struct.isst_pkg_ctdp_level_info = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i64, i32, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"perf-profile-level-%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cpu-count\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"enable-cpu-mask\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"enable-cpu-list\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"thermal-design-power-ratio\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"base-frequency(MHz)\00", align 1
@DISP_FREQ_MULTIPLIER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"speed-select-turbo-freq\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"speed-select-base-freq\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"thermal-design-power(W)\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"tjunction-max(C)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"turbo-ratio-limits-sse\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"bucket-%d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"core-count\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"max-turbo-frequency(MHz)\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"turbo-ratio-limits-avx\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"turbo-ratio-limits-avx512\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isst_ctdp_display_information(i32 %0, i32* %1, i32 %2, %struct.isst_pkg_ctdp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_pkg_ctdp*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.isst_pkg_ctdp_level_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.isst_pkg_ctdp* %3, %struct.isst_pkg_ctdp** %8, align 8
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @print_package_info(i32 %15, i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %410, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %8, align 8
  %21 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %413

24:                                               ; preds = %18
  %25 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %8, align 8
  %26 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %25, i32 0, i32 1
  %27 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %27, i64 %29
  store %struct.isst_pkg_ctdp_level_info* %30, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %31 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %32 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %410

36:                                               ; preds = %24
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %38 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %39 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 3
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %46 = call i32 @format_and_print(i32* %42, i32 %44, i8* %45, i8* null)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @get_physical_die_id(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @get_physical_die_id(i32 %51)
  %53 = call i32 @get_cpu_count(i32 %50, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %62 = call i32 @format_and_print(i32* %57, i32 %59, i8* %60, i8* %61)
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %64 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %66 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %67 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %70 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @printcpumask(i32 256, i8* %65, i32 %68, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 4
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %78 = call i32 @format_and_print(i32* %73, i32 %75, i8* %76, i8* %77)
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %82 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %83 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %82, i32 0, i32 15
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %86 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %85, i32 0, i32 14
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @printcpulist(i32 256, i8* %81, i32 %84, i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 4
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %94 = call i32 @format_and_print(i32* %89, i32 %91, i8* %92, i8* %93)
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %95, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %98 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %99 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 4
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %107 = call i32 @format_and_print(i32* %102, i32 %104, i8* %105, i8* %106)
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %109 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %111 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %112 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 4
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %122 = call i32 @format_and_print(i32* %117, i32 %119, i8* %120, i8* %121)
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %123, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %126 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %36
  %130 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %131 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %130, i32 0, i32 13
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %136 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %135, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %140

137:                                              ; preds = %129
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %139 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %138, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %134
  br label %144

141:                                              ; preds = %36
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %143 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %140
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 4
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %150 = call i32 @format_and_print(i32* %145, i32 %147, i8* %148, i8* %149)
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %152 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %151, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %153 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %154 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %153, i32 0, i32 11
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %144
  %158 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %159 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %158, i32 0, i32 12
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %164 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %163, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %168

165:                                              ; preds = %157
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %167 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %166, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %162
  br label %172

169:                                              ; preds = %144
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %171 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %170, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %168
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 4
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %178 = call i32 @format_and_print(i32* %173, i32 %175, i8* %176, i8* %177)
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %180 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %179, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %182 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %183 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %181, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 4
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %191 = call i32 @format_and_print(i32* %186, i32 %188, i8* %189, i8* %190)
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %193 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %192, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %195 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %196 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %194, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 4
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %204 = call i32 @format_and_print(i32* %199, i32 %201, i8* %202, i8* %203)
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %206 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %205, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 4
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %211 = call i32 @format_and_print(i32* %207, i32 %209, i8* %210, i8* null)
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %260, %172
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %213, 8
  br i1 %214, label %215, label %263

215:                                              ; preds = %212
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %217 = load i32, i32* %14, align 4
  %218 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %216, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 5
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %223 = call i32 @format_and_print(i32* %219, i32 %221, i8* %222, i8* null)
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %225 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %224, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %227 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %228 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = mul nsw i32 %230, 8
  %232 = ashr i32 %229, %231
  %233 = and i32 %232, 255
  %234 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %226, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %233)
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 6
  %238 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %240 = call i32 @format_and_print(i32* %235, i32 %237, i8* %238, i8* %239)
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %242 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %241, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %244 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %245 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %244, i32 0, i32 5
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %252 = mul nsw i32 %250, %251
  %253 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %243, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 6
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %258 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %259 = call i32 @format_and_print(i32* %254, i32 %256, i8* %257, i8* %258)
  br label %260

260:                                              ; preds = %215
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %212

263:                                              ; preds = %212
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %265 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %264, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 4
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %270 = call i32 @format_and_print(i32* %266, i32 %268, i8* %269, i8* null)
  store i32 0, i32* %14, align 4
  br label %271

271:                                              ; preds = %319, %263
  %272 = load i32, i32* %14, align 4
  %273 = icmp slt i32 %272, 8
  br i1 %273, label %274, label %322

274:                                              ; preds = %271
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %276 = load i32, i32* %14, align 4
  %277 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %275, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %276)
  %278 = load i32*, i32** %6, align 8
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 5
  %281 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %282 = call i32 @format_and_print(i32* %278, i32 %280, i8* %281, i8* null)
  %283 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %284 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %283, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %285 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %286 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %287 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = mul nsw i32 %289, 8
  %291 = ashr i32 %288, %290
  %292 = and i32 %291, 255
  %293 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %285, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %292)
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 6
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %299 = call i32 @format_and_print(i32* %294, i32 %296, i8* %297, i8* %298)
  %300 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %301 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %300, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %303 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %304 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %303, i32 0, i32 6
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %311 = mul nsw i32 %309, %310
  %312 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %302, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %311)
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 6
  %316 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %317 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %318 = call i32 @format_and_print(i32* %313, i32 %315, i8* %316, i8* %317)
  br label %319

319:                                              ; preds = %274
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %14, align 4
  br label %271

322:                                              ; preds = %271
  %323 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %324 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %323, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %325 = load i32*, i32** %6, align 8
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, 4
  %328 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %329 = call i32 @format_and_print(i32* %325, i32 %327, i8* %328, i8* null)
  store i32 0, i32* %14, align 4
  br label %330

330:                                              ; preds = %378, %322
  %331 = load i32, i32* %14, align 4
  %332 = icmp slt i32 %331, 8
  br i1 %332, label %333, label %381

333:                                              ; preds = %330
  %334 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %335 = load i32, i32* %14, align 4
  %336 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %334, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %335)
  %337 = load i32*, i32** %6, align 8
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 5
  %340 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %341 = call i32 @format_and_print(i32* %337, i32 %339, i8* %340, i8* null)
  %342 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %343 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %342, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %344 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %345 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %346 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %14, align 4
  %349 = mul nsw i32 %348, 8
  %350 = ashr i32 %347, %349
  %351 = and i32 %350, 255
  %352 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %344, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %351)
  %353 = load i32*, i32** %6, align 8
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %354, 6
  %356 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %357 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %358 = call i32 @format_and_print(i32* %353, i32 %355, i8* %356, i8* %357)
  %359 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %360 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %359, i32 256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %361 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %362 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %363 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %362, i32 0, i32 7
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %14, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @DISP_FREQ_MULTIPLIER, align 4
  %370 = mul nsw i32 %368, %369
  %371 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %361, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %370)
  %372 = load i32*, i32** %6, align 8
  %373 = load i32, i32* %12, align 4
  %374 = add nsw i32 %373, 6
  %375 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %376 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %377 = call i32 @format_and_print(i32* %372, i32 %374, i8* %375, i8* %376)
  br label %378

378:                                              ; preds = %333
  %379 = load i32, i32* %14, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %14, align 4
  br label %330

381:                                              ; preds = %330
  %382 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %383 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %382, i32 0, i32 11
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %395

386:                                              ; preds = %381
  %387 = load i32, i32* %5, align 4
  %388 = load i32*, i32** %6, align 8
  %389 = load i32, i32* %11, align 4
  %390 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %391 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %390, i32 0, i32 10
  %392 = load i32, i32* %12, align 4
  %393 = add nsw i32 %392, 4
  %394 = call i32 @_isst_pbf_display_information(i32 %387, i32* %388, i32 %389, i32* %391, i32 %393)
  br label %395

395:                                              ; preds = %386, %381
  %396 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %397 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %396, i32 0, i32 9
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %395
  %401 = load i32, i32* %5, align 4
  %402 = load i32*, i32** %6, align 8
  %403 = load i32, i32* %11, align 4
  %404 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %13, align 8
  %405 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %404, i32 0, i32 8
  %406 = load i32, i32* %12, align 4
  %407 = add nsw i32 %406, 4
  %408 = call i32 @_isst_fact_display_information(i32 %401, i32* %402, i32 %403, i32 255, i32 255, i32* %405, i32 %407)
  br label %409

409:                                              ; preds = %400, %395
  br label %410

410:                                              ; preds = %409, %35
  %411 = load i32, i32* %11, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %11, align 4
  br label %18

413:                                              ; preds = %18
  %414 = load i32*, i32** %6, align 8
  %415 = call i32 @format_and_print(i32* %414, i32 1, i8* null, i8* null)
  ret void
}

declare dso_local i32 @print_package_info(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @format_and_print(i32*, i32, i8*, i8*) #1

declare dso_local i32 @get_cpu_count(i32, i32) #1

declare dso_local i32 @get_physical_die_id(i32) #1

declare dso_local i32 @printcpumask(i32, i8*, i32, i32) #1

declare dso_local i32 @printcpulist(i32, i8*, i32, i32) #1

declare dso_local i32 @_isst_pbf_display_information(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @_isst_fact_display_information(i32, i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
