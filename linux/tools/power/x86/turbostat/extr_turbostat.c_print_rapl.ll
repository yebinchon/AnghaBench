; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_rapl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_rapl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@do_rapl = common dso_local global i32 0, align 4
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not migrate to CPU %d\0A\00", align 1
@RAPL_AMD_F17H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MSR_RAPL_PWR_UNIT\00", align 1
@MSR_RAPL_PWR_UNIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"MSR_RAPL_POWER_UNIT\00", align 1
@MSR_RAPL_POWER_UNIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"cpu%d: %s: 0x%08llx (%f Watts, %f Joules, %f sec.)\0A\00", align 1
@rapl_power_units = common dso_local global i64 0, align 8
@rapl_energy_units = common dso_local global i32 0, align 4
@rapl_time_units = common dso_local global i64 0, align 8
@RAPL_PKG_POWER_INFO = common dso_local global i32 0, align 4
@MSR_PKG_POWER_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"cpu%d: MSR_PKG_POWER_INFO: 0x%08llx (%.0f W TDP, RAPL %.0f - %.0f W, %f sec.)\0A\00", align 1
@RAPL_POWER_GRANULARITY = common dso_local global i64 0, align 8
@RAPL_TIME_GRANULARITY = common dso_local global i64 0, align 8
@RAPL_PKG = common dso_local global i32 0, align 4
@MSR_PKG_POWER_LIMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"cpu%d: MSR_PKG_POWER_LIMIT: 0x%08llx (%slocked)\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PKG Limit #1\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"cpu%d: PKG Limit #2: %sabled (%f Watts, %f* sec, clamp %sabled)\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DIS\00", align 1
@RAPL_DRAM_POWER_INFO = common dso_local global i32 0, align 4
@MSR_DRAM_POWER_INFO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [81 x i8] c"cpu%d: MSR_DRAM_POWER_INFO,: 0x%08llx (%.0f W TDP, RAPL %.0f - %.0f W, %f sec.)\0A\00", align 1
@RAPL_DRAM = common dso_local global i32 0, align 4
@MSR_DRAM_POWER_LIMIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"cpu%d: MSR_DRAM_POWER_LIMIT: 0x%08llx (%slocked)\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DRAM Limit\00", align 1
@RAPL_CORE_POLICY = common dso_local global i32 0, align 4
@MSR_PP0_POLICY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"cpu%d: MSR_PP0_POLICY: %lld\0A\00", align 1
@RAPL_CORES_POWER_LIMIT = common dso_local global i32 0, align 4
@MSR_PP0_POWER_LIMIT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"cpu%d: MSR_PP0_POWER_LIMIT: 0x%08llx (%slocked)\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Cores Limit\00", align 1
@RAPL_GFX = common dso_local global i32 0, align 4
@MSR_PP1_POLICY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"cpu%d: MSR_PP1_POLICY: %lld\0A\00", align 1
@MSR_PP1_POWER_LIMIT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [49 x i8] c"cpu%d: MSR_PP1_POWER_LIMIT: 0x%08llx (%slocked)\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"GFX Limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_rapl(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %11 = load i32, i32* @do_rapl, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %312

14:                                               ; preds = %3
  %15 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %16 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %23 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %312

29:                                               ; preds = %21
  %30 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %31 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @cpu_migrate(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @outf, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %312

40:                                               ; preds = %29
  %41 = load i32, i32* @do_rapl, align 4
  %42 = load i32, i32* @RAPL_AMD_F17H, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MSR_RAPL_PWR_UNIT, align 4
  %48 = call i64 @get_msr(i32 %46, i32 %47, i64* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %312

51:                                               ; preds = %45
  br label %59

52:                                               ; preds = %40
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @MSR_RAPL_POWER_UNIT, align 4
  %55 = call i64 @get_msr(i32 %53, i32 %54, i64* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %312

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* @outf, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @rapl_power_units, align 8
  %65 = load i32, i32* @rapl_energy_units, align 4
  %66 = load i64, i64* @rapl_time_units, align 8
  %67 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %61, i8* %62, i64 %63, i64 %64, i32 %65, i64 %66)
  %68 = load i32, i32* @do_rapl, align 4
  %69 = load i32, i32* @RAPL_PKG_POWER_INFO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MSR_PKG_POWER_INFO, align 4
  %75 = call i64 @get_msr(i32 %73, i32 %74, i64* %8)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -5, i32* %4, align 4
  br label %312

78:                                               ; preds = %72
  %79 = load i32, i32* @outf, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = lshr i64 %82, 0
  %84 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %85 = and i64 %83, %84
  %86 = load i64, i64* @rapl_power_units, align 8
  %87 = mul i64 %85, %86
  %88 = load i64, i64* %8, align 8
  %89 = lshr i64 %88, 16
  %90 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @rapl_power_units, align 8
  %93 = mul i64 %91, %92
  %94 = load i64, i64* %8, align 8
  %95 = lshr i64 %94, 32
  %96 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @rapl_power_units, align 8
  %99 = mul i64 %97, %98
  %100 = load i64, i64* %8, align 8
  %101 = lshr i64 %100, 48
  %102 = load i64, i64* @RAPL_TIME_GRANULARITY, align 8
  %103 = and i64 %101, %102
  %104 = load i64, i64* @rapl_time_units, align 8
  %105 = mul i64 %103, %104
  %106 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %80, i64 %81, i64 %87, i64 %93, i64 %99, i64 %105)
  br label %107

107:                                              ; preds = %78, %59
  %108 = load i32, i32* @do_rapl, align 4
  %109 = load i32, i32* @RAPL_PKG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %168

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @MSR_PKG_POWER_LIMIT, align 4
  %115 = call i64 @get_msr(i32 %113, i32 %114, i64* %8)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 -9, i32* %4, align 4
  br label %312

118:                                              ; preds = %112
  %119 = load i32, i32* @outf, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = lshr i64 %122, 63
  %124 = and i64 %123, 1
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %128 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %120, i64 %121, i8* %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @print_power_limit_msr(i32 %129, i64 %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @outf, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i64, i64* %8, align 8
  %135 = lshr i64 %134, 47
  %136 = and i64 %135, 1
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %140 = load i64, i64* %8, align 8
  %141 = lshr i64 %140, 32
  %142 = and i64 %141, 32767
  %143 = load i64, i64* @rapl_power_units, align 8
  %144 = mul i64 %142, %143
  %145 = load i64, i64* %8, align 8
  %146 = lshr i64 %145, 54
  %147 = and i64 %146, 3
  %148 = uitofp i64 %147 to double
  %149 = fdiv double %148, 4.000000e+00
  %150 = fadd double 1.000000e+00, %149
  %151 = load i64, i64* %8, align 8
  %152 = lshr i64 %151, 49
  %153 = and i64 %152, 31
  %154 = trunc i64 %153 to i32
  %155 = shl i32 1, %154
  %156 = sitofp i32 %155 to double
  %157 = fmul double %150, %156
  %158 = load i64, i64* @rapl_time_units, align 8
  %159 = uitofp i64 %158 to double
  %160 = fmul double %157, %159
  %161 = load i64, i64* %8, align 8
  %162 = lshr i64 %161, 48
  %163 = and i64 %162, 1
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %167 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %139, i64 %144, double %160, i8* %166)
  br label %168

168:                                              ; preds = %118, %107
  %169 = load i32, i32* @do_rapl, align 4
  %170 = load i32, i32* @RAPL_DRAM_POWER_INFO, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %208

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @MSR_DRAM_POWER_INFO, align 4
  %176 = call i64 @get_msr(i32 %174, i32 %175, i64* %8)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 -6, i32* %4, align 4
  br label %312

179:                                              ; preds = %173
  %180 = load i32, i32* @outf, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %8, align 8
  %184 = lshr i64 %183, 0
  %185 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %186 = and i64 %184, %185
  %187 = load i64, i64* @rapl_power_units, align 8
  %188 = mul i64 %186, %187
  %189 = load i64, i64* %8, align 8
  %190 = lshr i64 %189, 16
  %191 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %192 = and i64 %190, %191
  %193 = load i64, i64* @rapl_power_units, align 8
  %194 = mul i64 %192, %193
  %195 = load i64, i64* %8, align 8
  %196 = lshr i64 %195, 32
  %197 = load i64, i64* @RAPL_POWER_GRANULARITY, align 8
  %198 = and i64 %196, %197
  %199 = load i64, i64* @rapl_power_units, align 8
  %200 = mul i64 %198, %199
  %201 = load i64, i64* %8, align 8
  %202 = lshr i64 %201, 48
  %203 = load i64, i64* @RAPL_TIME_GRANULARITY, align 8
  %204 = and i64 %202, %203
  %205 = load i64, i64* @rapl_time_units, align 8
  %206 = mul i64 %204, %205
  %207 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0), i32 %181, i64 %182, i64 %188, i64 %194, i64 %200, i64 %206)
  br label %208

208:                                              ; preds = %179, %168
  %209 = load i32, i32* @do_rapl, align 4
  %210 = load i32, i32* @RAPL_DRAM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %208
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @MSR_DRAM_POWER_LIMIT, align 4
  %216 = call i64 @get_msr(i32 %214, i32 %215, i64* %8)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 -9, i32* %4, align 4
  br label %312

219:                                              ; preds = %213
  %220 = load i32, i32* @outf, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* %8, align 8
  %224 = lshr i64 %223, 31
  %225 = and i64 %224, 1
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %229 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %221, i64 %222, i8* %228)
  %230 = load i32, i32* %10, align 4
  %231 = load i64, i64* %8, align 8
  %232 = call i32 @print_power_limit_msr(i32 %230, i64 %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %233

233:                                              ; preds = %219, %208
  %234 = load i32, i32* @do_rapl, align 4
  %235 = load i32, i32* @RAPL_CORE_POLICY, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @MSR_PP0_POLICY, align 4
  %241 = call i64 @get_msr(i32 %239, i32 %240, i64* %8)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 -7, i32* %4, align 4
  br label %312

244:                                              ; preds = %238
  %245 = load i32, i32* @outf, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i64, i64* %8, align 8
  %248 = and i64 %247, 15
  %249 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %246, i64 %248)
  br label %250

250:                                              ; preds = %244, %233
  %251 = load i32, i32* @do_rapl, align 4
  %252 = load i32, i32* @RAPL_CORES_POWER_LIMIT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %250
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @MSR_PP0_POWER_LIMIT, align 4
  %258 = call i64 @get_msr(i32 %256, i32 %257, i64* %8)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 -9, i32* %4, align 4
  br label %312

261:                                              ; preds = %255
  %262 = load i32, i32* @outf, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i64, i64* %8, align 8
  %265 = load i64, i64* %8, align 8
  %266 = lshr i64 %265, 31
  %267 = and i64 %266, 1
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %271 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %263, i64 %264, i8* %270)
  %272 = load i32, i32* %10, align 4
  %273 = load i64, i64* %8, align 8
  %274 = call i32 @print_power_limit_msr(i32 %272, i64 %273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %275

275:                                              ; preds = %261, %250
  %276 = load i32, i32* @do_rapl, align 4
  %277 = load i32, i32* @RAPL_GFX, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %311

280:                                              ; preds = %275
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* @MSR_PP1_POLICY, align 4
  %283 = call i64 @get_msr(i32 %281, i32 %282, i64* %8)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store i32 -8, i32* %4, align 4
  br label %312

286:                                              ; preds = %280
  %287 = load i32, i32* @outf, align 4
  %288 = load i32, i32* %10, align 4
  %289 = load i64, i64* %8, align 8
  %290 = and i64 %289, 15
  %291 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %287, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %288, i64 %290)
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* @MSR_PP1_POWER_LIMIT, align 4
  %294 = call i64 @get_msr(i32 %292, i32 %293, i64* %8)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %286
  store i32 -9, i32* %4, align 4
  br label %312

297:                                              ; preds = %286
  %298 = load i32, i32* @outf, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load i64, i64* %8, align 8
  %301 = load i64, i64* %8, align 8
  %302 = lshr i64 %301, 31
  %303 = and i64 %302, 1
  %304 = icmp ne i64 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %307 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %298, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 %299, i64 %300, i8* %306)
  %308 = load i32, i32* %10, align 4
  %309 = load i64, i64* %8, align 8
  %310 = call i32 @print_power_limit_msr(i32 %308, i64 %309, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %311

311:                                              ; preds = %297, %275
  store i32 0, i32* %4, align 4
  br label %312

312:                                              ; preds = %311, %296, %285, %260, %243, %218, %178, %117, %77, %57, %50, %36, %28, %13
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i64 @cpu_migrate(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @print_power_limit_msr(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
