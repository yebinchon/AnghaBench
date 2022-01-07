; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_format_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_format_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.thread_data }
%struct.thread_data = type { i32, i64, double, double, double, double*, double, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { double, double }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { i64, i32, i64, %struct.msr_counter* }
%struct.core_data = type { double, double, double, double, double*, double, i32, i32 }
%struct.pkg_data = type { i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double*, i32, i32, i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@show_core_only = common dso_local global i64 0, align 8
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@show_pkg_only = common dso_local global i64 0, align 8
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@average = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cpu_subset = common dso_local global i64 0, align 8
@cpu_subset_size = common dso_local global i32 0, align 4
@BIC_USEC = common dso_local global i32 0, align 4
@outp = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%5ld\09\00", align 1
@BIC_TOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%10ld.%06ld\09\00", align 1
@tsc_tweak = common dso_local global double 0.000000e+00, align 8
@BIC_Package = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s-\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BIC_Die = common dso_local global i32 0, align 4
@BIC_Node = common dso_local global i32 0, align 4
@BIC_Core = common dso_local global i32 0, align 4
@BIC_CPU = common dso_local global i32 0, align 4
@BIC_APIC = common dso_local global i32 0, align 4
@BIC_X2APIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@cpus = common dso_local global %struct.TYPE_9__* null, align 8
@BIC_Avg_MHz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%s%.0f\00", align 1
@units = common dso_local global double 0.000000e+00, align 8
@BIC_Busy = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%.2f\00", align 1
@BIC_Bzy_MHz = common dso_local global i32 0, align 4
@has_base_hz = common dso_local global i64 0, align 8
@base_hz = common dso_local global double 0.000000e+00, align 8
@BIC_TSC_MHz = common dso_local global i32 0, align 4
@BIC_IRQ = common dso_local global i32 0, align 4
@sums_need_wide_columns = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"%s%8lld\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%lld\00", align 1
@BIC_SMI = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"%s0x%08x\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s0x%016llx\00", align 1
@FORMAT_DELTA = common dso_local global i64 0, align 8
@COUNTER_ITEMS = common dso_local global i64 0, align 8
@FORMAT_PERCENT = common dso_local global i64 0, align 8
@COUNTER_USEC = common dso_local global i64 0, align 8
@BIC_CPU_c1 = common dso_local global i32 0, align 4
@BIC_CPU_c3 = common dso_local global i32 0, align 4
@BIC_CPU_c6 = common dso_local global i32 0, align 4
@BIC_CPU_c7 = common dso_local global i32 0, align 4
@BIC_Mod_c6 = common dso_local global i32 0, align 4
@BIC_CoreTmp = common dso_local global i32 0, align 4
@rapl_joule_counter_range = common dso_local global double 0.000000e+00, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"%6.0f**\00", align 1
@BIC_CorWatt = common dso_local global i32 0, align 4
@do_rapl = common dso_local global i32 0, align 4
@RAPL_PER_CORE_ENERGY = common dso_local global i32 0, align 4
@rapl_energy_units = common dso_local global double 0.000000e+00, align 8
@BIC_Cor_J = common dso_local global i32 0, align 4
@BIC_PkgTmp = common dso_local global i32 0, align 4
@BIC_GFX_rc6 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"%s**.**\00", align 1
@BIC_GFXMHz = common dso_local global i32 0, align 4
@BIC_Totl_c0 = common dso_local global i32 0, align 4
@BIC_Any_c0 = common dso_local global i32 0, align 4
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@BIC_CPUGFX = common dso_local global i32 0, align 4
@BIC_Pkgpc2 = common dso_local global i32 0, align 4
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@BIC_Pkgpc8 = common dso_local global i32 0, align 4
@BIC_Pkgpc9 = common dso_local global i32 0, align 4
@BIC_Pkgpc10 = common dso_local global i32 0, align 4
@BIC_CPU_LPI = common dso_local global i32 0, align 4
@BIC_SYS_LPI = common dso_local global i32 0, align 4
@BIC_PkgWatt = common dso_local global i32 0, align 4
@BIC_GFXWatt = common dso_local global i32 0, align 4
@BIC_RAMWatt = common dso_local global i32 0, align 4
@rapl_dram_energy_units = common dso_local global double 0.000000e+00, align 8
@BIC_Pkg_J = common dso_local global i32 0, align 4
@BIC_GFX_J = common dso_local global i32 0, align 4
@BIC_RAM_J = common dso_local global i32 0, align 4
@BIC_PKG__ = common dso_local global i32 0, align 4
@rapl_time_units = common dso_local global double 0.000000e+00, align 8
@BIC_RAM__ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_counters(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.msr_counter*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 8
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* @show_core_only, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %20 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %2068

26:                                               ; preds = %18, %3
  %27 = load i64, i64* @show_pkg_only, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %31 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %2068

37:                                               ; preds = %29, %26
  %38 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %39 = icmp ne %struct.thread_data* %38, getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @average, i32 0, i32 0)
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i64, i64* @cpu_subset, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %45 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @cpu_subset_size, align 4
  %48 = load i64, i64* @cpu_subset, align 8
  %49 = call i32 @CPU_ISSET_S(i64 %46, i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %2068

52:                                               ; preds = %43, %40, %37
  %53 = load i32, i32* @BIC_USEC, align 4
  %54 = call i64 @DO_BIC(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %58 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %57, i32 0, i32 12
  %59 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %60 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %59, i32 0, i32 13
  %61 = call i32 @timersub(%struct.TYPE_7__* %58, i32* %60, %struct.timeval* %15)
  %62 = load i8*, i8** @outp, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 1000000
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i8*, i8** @outp, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** @outp, align 8
  br label %74

74:                                               ; preds = %56, %52
  %75 = load i32, i32* @BIC_TOD, align 4
  %76 = call i64 @DO_BIC(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i8*, i8** @outp, align 8
  %80 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %81 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %80, i32 0, i32 12
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %85 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87)
  %89 = load i8*, i8** @outp, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** @outp, align 8
  br label %92

92:                                               ; preds = %78, %74
  %93 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %94 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %98 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = fdiv double %100, 1.000000e+06
  %102 = fadd double %96, %101
  store double %102, double* %8, align 8
  %103 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %104 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %103, i32 0, i32 2
  %105 = load double, double* %104, align 8
  %106 = load double, double* @tsc_tweak, align 8
  %107 = fmul double %105, %106
  store double %107, double* %9, align 8
  %108 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %109 = icmp eq %struct.thread_data* %108, getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @average, i32 0, i32 0)
  br i1 %109, label %110, label %237

110:                                              ; preds = %92
  %111 = load i32, i32* @BIC_Package, align 4
  %112 = call i64 @DO_BIC(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i8*, i8** @outp, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i8*, i8** %13, align 8
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %121 ]
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  %125 = load i8*, i8** @outp, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** @outp, align 8
  br label %128

128:                                              ; preds = %122, %110
  %129 = load i32, i32* @BIC_Die, align 4
  %130 = call i64 @DO_BIC(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load i8*, i8** @outp, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  %136 = icmp ne i32 %134, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i8*, i8** %13, align 8
  br label %140

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i8* [ %138, %137 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %139 ]
  %142 = call i32 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  %143 = load i8*, i8** @outp, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** @outp, align 8
  br label %146

146:                                              ; preds = %140, %128
  %147 = load i32, i32* @BIC_Node, align 4
  %148 = call i64 @DO_BIC(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i8*, i8** @outp, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** %13, align 8
  br label %158

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i8* [ %156, %155 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %157 ]
  %160 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** @outp, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** @outp, align 8
  br label %164

164:                                              ; preds = %158, %146
  %165 = load i32, i32* @BIC_Core, align 4
  %166 = call i64 @DO_BIC(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = load i8*, i8** @outp, align 8
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = icmp ne i32 %170, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i8*, i8** %13, align 8
  br label %176

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i8* [ %174, %173 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %175 ]
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %177)
  %179 = load i8*, i8** @outp, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** @outp, align 8
  br label %182

182:                                              ; preds = %176, %164
  %183 = load i32, i32* @BIC_CPU, align 4
  %184 = call i64 @DO_BIC(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load i8*, i8** @outp, align 8
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  %190 = icmp ne i32 %188, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i8*, i8** %13, align 8
  br label %194

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i8* [ %192, %191 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %193 ]
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  %197 = load i8*, i8** @outp, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** @outp, align 8
  br label %200

200:                                              ; preds = %194, %182
  %201 = load i32, i32* @BIC_APIC, align 4
  %202 = call i64 @DO_BIC(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %200
  %205 = load i8*, i8** @outp, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = icmp ne i32 %206, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i8*, i8** %13, align 8
  br label %212

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i8* [ %210, %209 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %211 ]
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %213)
  %215 = load i8*, i8** @outp, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** @outp, align 8
  br label %218

218:                                              ; preds = %212, %200
  %219 = load i32, i32* @BIC_X2APIC, align 4
  %220 = call i64 @DO_BIC(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %218
  %223 = load i8*, i8** @outp, align 8
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  %226 = icmp ne i32 %224, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i8*, i8** %13, align 8
  br label %230

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %229, %227
  %231 = phi i8* [ %228, %227 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %229 ]
  %232 = call i32 (i8*, i8*, ...) @sprintf(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %231)
  %233 = load i8*, i8** @outp, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** @outp, align 8
  br label %236

236:                                              ; preds = %230, %218
  br label %465

237:                                              ; preds = %92
  %238 = load i32, i32* @BIC_Package, align 4
  %239 = call i64 @DO_BIC(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %276

241:                                              ; preds = %237
  %242 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %243 = icmp ne %struct.pkg_data* %242, null
  br i1 %243, label %244, label %261

244:                                              ; preds = %241
  %245 = load i8*, i8** @outp, align 8
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %14, align 4
  %248 = icmp ne i32 %246, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = load i8*, i8** %13, align 8
  br label %252

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi i8* [ %250, %249 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %251 ]
  %254 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %255 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %254, i32 0, i32 23
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %253, i32 %256)
  %258 = load i8*, i8** @outp, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8* %260, i8** @outp, align 8
  br label %275

261:                                              ; preds = %241
  %262 = load i8*, i8** @outp, align 8
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  %265 = icmp ne i32 %263, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i8*, i8** %13, align 8
  br label %269

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %266
  %270 = phi i8* [ %267, %266 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %268 ]
  %271 = call i32 (i8*, i8*, ...) @sprintf(i8* %262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %270)
  %272 = load i8*, i8** @outp, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8* %274, i8** @outp, align 8
  br label %275

275:                                              ; preds = %269, %252
  br label %276

276:                                              ; preds = %275, %237
  %277 = load i32, i32* @BIC_Die, align 4
  %278 = call i64 @DO_BIC(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %319

280:                                              ; preds = %276
  %281 = load %struct.core_data*, %struct.core_data** %6, align 8
  %282 = icmp ne %struct.core_data* %281, null
  br i1 %282, label %283, label %304

283:                                              ; preds = %280
  %284 = load i8*, i8** @outp, align 8
  %285 = load i32, i32* %14, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %14, align 4
  %287 = icmp ne i32 %285, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i8*, i8** %13, align 8
  br label %291

290:                                              ; preds = %283
  br label %291

291:                                              ; preds = %290, %288
  %292 = phi i8* [ %289, %288 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %290 ]
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpus, align 8
  %294 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %295 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, i8*, ...) @sprintf(i8* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %292, i32 %299)
  %301 = load i8*, i8** @outp, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8* %303, i8** @outp, align 8
  br label %318

304:                                              ; preds = %280
  %305 = load i8*, i8** @outp, align 8
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %14, align 4
  %308 = icmp ne i32 %306, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i8*, i8** %13, align 8
  br label %312

311:                                              ; preds = %304
  br label %312

312:                                              ; preds = %311, %309
  %313 = phi i8* [ %310, %309 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %311 ]
  %314 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %313)
  %315 = load i8*, i8** @outp, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** @outp, align 8
  br label %318

318:                                              ; preds = %312, %291
  br label %319

319:                                              ; preds = %318, %276
  %320 = load i32, i32* @BIC_Node, align 4
  %321 = call i64 @DO_BIC(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %362

323:                                              ; preds = %319
  %324 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %325 = icmp ne %struct.thread_data* %324, null
  br i1 %325, label %326, label %347

326:                                              ; preds = %323
  %327 = load i8*, i8** @outp, align 8
  %328 = load i32, i32* %14, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %14, align 4
  %330 = icmp ne i32 %328, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = load i8*, i8** %13, align 8
  br label %334

333:                                              ; preds = %326
  br label %334

334:                                              ; preds = %333, %331
  %335 = phi i8* [ %332, %331 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %333 ]
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpus, align 8
  %337 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %338 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %335, i32 %342)
  %344 = load i8*, i8** @outp, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i8, i8* %344, i64 %345
  store i8* %346, i8** @outp, align 8
  br label %361

347:                                              ; preds = %323
  %348 = load i8*, i8** @outp, align 8
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %14, align 4
  %351 = icmp ne i32 %349, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = load i8*, i8** %13, align 8
  br label %355

354:                                              ; preds = %347
  br label %355

355:                                              ; preds = %354, %352
  %356 = phi i8* [ %353, %352 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %354 ]
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %356)
  %358 = load i8*, i8** @outp, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** @outp, align 8
  br label %361

361:                                              ; preds = %355, %334
  br label %362

362:                                              ; preds = %361, %319
  %363 = load i32, i32* @BIC_Core, align 4
  %364 = call i64 @DO_BIC(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %401

366:                                              ; preds = %362
  %367 = load %struct.core_data*, %struct.core_data** %6, align 8
  %368 = icmp ne %struct.core_data* %367, null
  br i1 %368, label %369, label %386

369:                                              ; preds = %366
  %370 = load i8*, i8** @outp, align 8
  %371 = load i32, i32* %14, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %14, align 4
  %373 = icmp ne i32 %371, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = load i8*, i8** %13, align 8
  br label %377

376:                                              ; preds = %369
  br label %377

377:                                              ; preds = %376, %374
  %378 = phi i8* [ %375, %374 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %376 ]
  %379 = load %struct.core_data*, %struct.core_data** %6, align 8
  %380 = getelementptr inbounds %struct.core_data, %struct.core_data* %379, i32 0, i32 7
  %381 = load i32, i32* %380, align 4
  %382 = call i32 (i8*, i8*, ...) @sprintf(i8* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %378, i32 %381)
  %383 = load i8*, i8** @outp, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** @outp, align 8
  br label %400

386:                                              ; preds = %366
  %387 = load i8*, i8** @outp, align 8
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %14, align 4
  %390 = icmp ne i32 %388, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %386
  %392 = load i8*, i8** %13, align 8
  br label %394

393:                                              ; preds = %386
  br label %394

394:                                              ; preds = %393, %391
  %395 = phi i8* [ %392, %391 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %393 ]
  %396 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %395)
  %397 = load i8*, i8** @outp, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8* %399, i8** @outp, align 8
  br label %400

400:                                              ; preds = %394, %377
  br label %401

401:                                              ; preds = %400, %362
  %402 = load i32, i32* @BIC_CPU, align 4
  %403 = call i64 @DO_BIC(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %422

405:                                              ; preds = %401
  %406 = load i8*, i8** @outp, align 8
  %407 = load i32, i32* %14, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %14, align 4
  %409 = icmp ne i32 %407, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %405
  %411 = load i8*, i8** %13, align 8
  br label %413

412:                                              ; preds = %405
  br label %413

413:                                              ; preds = %412, %410
  %414 = phi i8* [ %411, %410 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %412 ]
  %415 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %416 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = call i32 (i8*, i8*, ...) @sprintf(i8* %406, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %414, i64 %417)
  %419 = load i8*, i8** @outp, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8* %421, i8** @outp, align 8
  br label %422

422:                                              ; preds = %413, %401
  %423 = load i32, i32* @BIC_APIC, align 4
  %424 = call i64 @DO_BIC(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %422
  %427 = load i8*, i8** @outp, align 8
  %428 = load i32, i32* %14, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %14, align 4
  %430 = icmp ne i32 %428, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %426
  %432 = load i8*, i8** %13, align 8
  br label %434

433:                                              ; preds = %426
  br label %434

434:                                              ; preds = %433, %431
  %435 = phi i8* [ %432, %431 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %433 ]
  %436 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %437 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %436, i32 0, i32 10
  %438 = load i32, i32* %437, align 4
  %439 = call i32 (i8*, i8*, ...) @sprintf(i8* %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %435, i32 %438)
  %440 = load i8*, i8** @outp, align 8
  %441 = sext i32 %439 to i64
  %442 = getelementptr inbounds i8, i8* %440, i64 %441
  store i8* %442, i8** @outp, align 8
  br label %443

443:                                              ; preds = %434, %422
  %444 = load i32, i32* @BIC_X2APIC, align 4
  %445 = call i64 @DO_BIC(i32 %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %464

447:                                              ; preds = %443
  %448 = load i8*, i8** @outp, align 8
  %449 = load i32, i32* %14, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %14, align 4
  %451 = icmp ne i32 %449, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %447
  %453 = load i8*, i8** %13, align 8
  br label %455

454:                                              ; preds = %447
  br label %455

455:                                              ; preds = %454, %452
  %456 = phi i8* [ %453, %452 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %454 ]
  %457 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %458 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 8
  %460 = call i32 (i8*, i8*, ...) @sprintf(i8* %448, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %456, i32 %459)
  %461 = load i8*, i8** @outp, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds i8, i8* %461, i64 %462
  store i8* %463, i8** @outp, align 8
  br label %464

464:                                              ; preds = %455, %443
  br label %465

465:                                              ; preds = %464, %236
  %466 = load i32, i32* @BIC_Avg_MHz, align 4
  %467 = call i64 @DO_BIC(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %491

469:                                              ; preds = %465
  %470 = load i8*, i8** @outp, align 8
  %471 = load i32, i32* %14, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %14, align 4
  %473 = icmp ne i32 %471, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = load i8*, i8** %13, align 8
  br label %477

476:                                              ; preds = %469
  br label %477

477:                                              ; preds = %476, %474
  %478 = phi i8* [ %475, %474 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %476 ]
  %479 = load double, double* @units, align 8
  %480 = fdiv double 1.000000e+00, %479
  %481 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %482 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %481, i32 0, i32 3
  %483 = load double, double* %482, align 8
  %484 = fmul double %480, %483
  %485 = load double, double* %8, align 8
  %486 = fdiv double %484, %485
  %487 = call i32 (i8*, i8*, ...) @sprintf(i8* %470, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %478, double %486)
  %488 = load i8*, i8** @outp, align 8
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds i8, i8* %488, i64 %489
  store i8* %490, i8** @outp, align 8
  br label %491

491:                                              ; preds = %477, %465
  %492 = load i32, i32* @BIC_Busy, align 4
  %493 = call i64 @DO_BIC(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %515

495:                                              ; preds = %491
  %496 = load i8*, i8** @outp, align 8
  %497 = load i32, i32* %14, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %14, align 4
  %499 = icmp ne i32 %497, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = load i8*, i8** %13, align 8
  br label %503

502:                                              ; preds = %495
  br label %503

503:                                              ; preds = %502, %500
  %504 = phi i8* [ %501, %500 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %502 ]
  %505 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %506 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %505, i32 0, i32 4
  %507 = load double, double* %506, align 8
  %508 = fmul double 1.000000e+02, %507
  %509 = load double, double* %9, align 8
  %510 = fdiv double %508, %509
  %511 = call i32 (i8*, i8*, ...) @sprintf(i8* %496, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %504, double %510)
  %512 = load i8*, i8** @outp, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i8, i8* %512, i64 %513
  store i8* %514, i8** @outp, align 8
  br label %515

515:                                              ; preds = %503, %491
  %516 = load i32, i32* @BIC_Bzy_MHz, align 4
  %517 = call i64 @DO_BIC(i32 %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %575

519:                                              ; preds = %515
  %520 = load i64, i64* @has_base_hz, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %547

522:                                              ; preds = %519
  %523 = load i8*, i8** @outp, align 8
  %524 = load i32, i32* %14, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %14, align 4
  %526 = icmp ne i32 %524, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %522
  %528 = load i8*, i8** %13, align 8
  br label %530

529:                                              ; preds = %522
  br label %530

530:                                              ; preds = %529, %527
  %531 = phi i8* [ %528, %527 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %529 ]
  %532 = load double, double* @base_hz, align 8
  %533 = load double, double* @units, align 8
  %534 = fdiv double %532, %533
  %535 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %536 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %535, i32 0, i32 3
  %537 = load double, double* %536, align 8
  %538 = fmul double %534, %537
  %539 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %540 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %539, i32 0, i32 4
  %541 = load double, double* %540, align 8
  %542 = fdiv double %538, %541
  %543 = call i32 (i8*, i8*, ...) @sprintf(i8* %523, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %531, double %542)
  %544 = load i8*, i8** @outp, align 8
  %545 = sext i32 %543 to i64
  %546 = getelementptr inbounds i8, i8* %544, i64 %545
  store i8* %546, i8** @outp, align 8
  br label %574

547:                                              ; preds = %519
  %548 = load i8*, i8** @outp, align 8
  %549 = load i32, i32* %14, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %14, align 4
  %551 = icmp ne i32 %549, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %547
  %553 = load i8*, i8** %13, align 8
  br label %555

554:                                              ; preds = %547
  br label %555

555:                                              ; preds = %554, %552
  %556 = phi i8* [ %553, %552 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %554 ]
  %557 = load double, double* %9, align 8
  %558 = load double, double* @units, align 8
  %559 = fdiv double %557, %558
  %560 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %561 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %560, i32 0, i32 3
  %562 = load double, double* %561, align 8
  %563 = fmul double %559, %562
  %564 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %565 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %564, i32 0, i32 4
  %566 = load double, double* %565, align 8
  %567 = fdiv double %563, %566
  %568 = load double, double* %8, align 8
  %569 = fdiv double %567, %568
  %570 = call i32 (i8*, i8*, ...) @sprintf(i8* %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %556, double %569)
  %571 = load i8*, i8** @outp, align 8
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds i8, i8* %571, i64 %572
  store i8* %573, i8** @outp, align 8
  br label %574

574:                                              ; preds = %555, %530
  br label %575

575:                                              ; preds = %574, %515
  %576 = load i32, i32* @BIC_TSC_MHz, align 4
  %577 = call i64 @DO_BIC(i32 %576)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %601

579:                                              ; preds = %575
  %580 = load i8*, i8** @outp, align 8
  %581 = load i32, i32* %14, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %14, align 4
  %583 = icmp ne i32 %581, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %579
  %585 = load i8*, i8** %13, align 8
  br label %587

586:                                              ; preds = %579
  br label %587

587:                                              ; preds = %586, %584
  %588 = phi i8* [ %585, %584 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %586 ]
  %589 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %590 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %589, i32 0, i32 2
  %591 = load double, double* %590, align 8
  %592 = fmul double 1.000000e+00, %591
  %593 = load double, double* @units, align 8
  %594 = fdiv double %592, %593
  %595 = load double, double* %8, align 8
  %596 = fdiv double %594, %595
  %597 = call i32 (i8*, i8*, ...) @sprintf(i8* %580, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %588, double %596)
  %598 = load i8*, i8** @outp, align 8
  %599 = sext i32 %597 to i64
  %600 = getelementptr inbounds i8, i8* %598, i64 %599
  store i8* %600, i8** @outp, align 8
  br label %601

601:                                              ; preds = %587, %575
  %602 = load i32, i32* @BIC_IRQ, align 4
  %603 = call i64 @DO_BIC(i32 %602)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %643

605:                                              ; preds = %601
  %606 = load i64, i64* @sums_need_wide_columns, align 8
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %625

608:                                              ; preds = %605
  %609 = load i8*, i8** @outp, align 8
  %610 = load i32, i32* %14, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %14, align 4
  %612 = icmp ne i32 %610, 0
  br i1 %612, label %613, label %615

613:                                              ; preds = %608
  %614 = load i8*, i8** %13, align 8
  br label %616

615:                                              ; preds = %608
  br label %616

616:                                              ; preds = %615, %613
  %617 = phi i8* [ %614, %613 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %615 ]
  %618 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %619 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %618, i32 0, i32 8
  %620 = load i32, i32* %619, align 4
  %621 = call i32 (i8*, i8*, ...) @sprintf(i8* %609, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %617, i32 %620)
  %622 = load i8*, i8** @outp, align 8
  %623 = sext i32 %621 to i64
  %624 = getelementptr inbounds i8, i8* %622, i64 %623
  store i8* %624, i8** @outp, align 8
  br label %642

625:                                              ; preds = %605
  %626 = load i8*, i8** @outp, align 8
  %627 = load i32, i32* %14, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %14, align 4
  %629 = icmp ne i32 %627, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %625
  %631 = load i8*, i8** %13, align 8
  br label %633

632:                                              ; preds = %625
  br label %633

633:                                              ; preds = %632, %630
  %634 = phi i8* [ %631, %630 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %632 ]
  %635 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %636 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %635, i32 0, i32 8
  %637 = load i32, i32* %636, align 4
  %638 = call i32 (i8*, i8*, ...) @sprintf(i8* %626, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %634, i32 %637)
  %639 = load i8*, i8** @outp, align 8
  %640 = sext i32 %638 to i64
  %641 = getelementptr inbounds i8, i8* %639, i64 %640
  store i8* %641, i8** @outp, align 8
  br label %642

642:                                              ; preds = %633, %616
  br label %643

643:                                              ; preds = %642, %601
  %644 = load i32, i32* @BIC_SMI, align 4
  %645 = call i64 @DO_BIC(i32 %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %664

647:                                              ; preds = %643
  %648 = load i8*, i8** @outp, align 8
  %649 = load i32, i32* %14, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %14, align 4
  %651 = icmp ne i32 %649, 0
  br i1 %651, label %652, label %654

652:                                              ; preds = %647
  %653 = load i8*, i8** %13, align 8
  br label %655

654:                                              ; preds = %647
  br label %655

655:                                              ; preds = %654, %652
  %656 = phi i8* [ %653, %652 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %654 ]
  %657 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %658 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %657, i32 0, i32 7
  %659 = load i32, i32* %658, align 8
  %660 = call i32 (i8*, i8*, ...) @sprintf(i8* %648, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %656, i32 %659)
  %661 = load i8*, i8** @outp, align 8
  %662 = sext i32 %660 to i64
  %663 = getelementptr inbounds i8, i8* %661, i64 %662
  store i8* %663, i8** @outp, align 8
  br label %664

664:                                              ; preds = %655, %643
  store i32 0, i32* %11, align 4
  %665 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %665, %struct.msr_counter** %12, align 8
  br label %666

666:                                              ; preds = %846, %664
  %667 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %668 = icmp ne %struct.msr_counter* %667, null
  br i1 %668, label %669, label %852

669:                                              ; preds = %666
  %670 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %671 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %670, i32 0, i32 0
  %672 = load i64, i64* %671, align 8
  %673 = load i64, i64* @FORMAT_RAW, align 8
  %674 = icmp eq i64 %672, %673
  br i1 %674, label %675, label %724

675:                                              ; preds = %669
  %676 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %677 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 8
  %679 = icmp eq i32 %678, 32
  br i1 %679, label %680, label %702

680:                                              ; preds = %675
  %681 = load i8*, i8** @outp, align 8
  %682 = load i32, i32* %14, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %14, align 4
  %684 = icmp ne i32 %682, 0
  br i1 %684, label %685, label %687

685:                                              ; preds = %680
  %686 = load i8*, i8** %13, align 8
  br label %688

687:                                              ; preds = %680
  br label %688

688:                                              ; preds = %687, %685
  %689 = phi i8* [ %686, %685 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %687 ]
  %690 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %691 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %690, i32 0, i32 5
  %692 = load double*, double** %691, align 8
  %693 = load i32, i32* %11, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds double, double* %692, i64 %694
  %696 = load double, double* %695, align 8
  %697 = fptoui double %696 to i32
  %698 = call i32 (i8*, i8*, ...) @sprintf(i8* %681, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %689, i32 %697)
  %699 = load i8*, i8** @outp, align 8
  %700 = sext i32 %698 to i64
  %701 = getelementptr inbounds i8, i8* %699, i64 %700
  store i8* %701, i8** @outp, align 8
  br label %723

702:                                              ; preds = %675
  %703 = load i8*, i8** @outp, align 8
  %704 = load i32, i32* %14, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %14, align 4
  %706 = icmp ne i32 %704, 0
  br i1 %706, label %707, label %709

707:                                              ; preds = %702
  %708 = load i8*, i8** %13, align 8
  br label %710

709:                                              ; preds = %702
  br label %710

710:                                              ; preds = %709, %707
  %711 = phi i8* [ %708, %707 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %709 ]
  %712 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %713 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %712, i32 0, i32 5
  %714 = load double*, double** %713, align 8
  %715 = load i32, i32* %11, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds double, double* %714, i64 %716
  %718 = load double, double* %717, align 8
  %719 = call i32 (i8*, i8*, ...) @sprintf(i8* %703, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %711, double %718)
  %720 = load i8*, i8** @outp, align 8
  %721 = sext i32 %719 to i64
  %722 = getelementptr inbounds i8, i8* %720, i64 %721
  store i8* %722, i8** @outp, align 8
  br label %723

723:                                              ; preds = %710, %688
  br label %845

724:                                              ; preds = %669
  %725 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %726 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %725, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = load i64, i64* @FORMAT_DELTA, align 8
  %729 = icmp eq i64 %727, %728
  br i1 %729, label %730, label %782

730:                                              ; preds = %724
  %731 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %732 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %731, i32 0, i32 2
  %733 = load i64, i64* %732, align 8
  %734 = load i64, i64* @COUNTER_ITEMS, align 8
  %735 = icmp eq i64 %733, %734
  br i1 %735, label %736, label %760

736:                                              ; preds = %730
  %737 = load i64, i64* @sums_need_wide_columns, align 8
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %739, label %760

739:                                              ; preds = %736
  %740 = load i8*, i8** @outp, align 8
  %741 = load i32, i32* %14, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %14, align 4
  %743 = icmp ne i32 %741, 0
  br i1 %743, label %744, label %746

744:                                              ; preds = %739
  %745 = load i8*, i8** %13, align 8
  br label %747

746:                                              ; preds = %739
  br label %747

747:                                              ; preds = %746, %744
  %748 = phi i8* [ %745, %744 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %746 ]
  %749 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %750 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %749, i32 0, i32 5
  %751 = load double*, double** %750, align 8
  %752 = load i32, i32* %11, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds double, double* %751, i64 %753
  %755 = load double, double* %754, align 8
  %756 = call i32 (i8*, i8*, ...) @sprintf(i8* %740, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %748, double %755)
  %757 = load i8*, i8** @outp, align 8
  %758 = sext i32 %756 to i64
  %759 = getelementptr inbounds i8, i8* %757, i64 %758
  store i8* %759, i8** @outp, align 8
  br label %781

760:                                              ; preds = %736, %730
  %761 = load i8*, i8** @outp, align 8
  %762 = load i32, i32* %14, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %14, align 4
  %764 = icmp ne i32 %762, 0
  br i1 %764, label %765, label %767

765:                                              ; preds = %760
  %766 = load i8*, i8** %13, align 8
  br label %768

767:                                              ; preds = %760
  br label %768

768:                                              ; preds = %767, %765
  %769 = phi i8* [ %766, %765 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %767 ]
  %770 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %771 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %770, i32 0, i32 5
  %772 = load double*, double** %771, align 8
  %773 = load i32, i32* %11, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds double, double* %772, i64 %774
  %776 = load double, double* %775, align 8
  %777 = call i32 (i8*, i8*, ...) @sprintf(i8* %761, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %769, double %776)
  %778 = load i8*, i8** @outp, align 8
  %779 = sext i32 %777 to i64
  %780 = getelementptr inbounds i8, i8* %778, i64 %779
  store i8* %780, i8** @outp, align 8
  br label %781

781:                                              ; preds = %768, %747
  br label %844

782:                                              ; preds = %724
  %783 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %784 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %783, i32 0, i32 0
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* @FORMAT_PERCENT, align 8
  %787 = icmp eq i64 %785, %786
  br i1 %787, label %788, label %843

788:                                              ; preds = %782
  %789 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %790 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %789, i32 0, i32 2
  %791 = load i64, i64* %790, align 8
  %792 = load i64, i64* @COUNTER_USEC, align 8
  %793 = icmp eq i64 %791, %792
  br i1 %793, label %794, label %818

794:                                              ; preds = %788
  %795 = load i8*, i8** @outp, align 8
  %796 = load i32, i32* %14, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %14, align 4
  %798 = icmp ne i32 %796, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %794
  %800 = load i8*, i8** %13, align 8
  br label %802

801:                                              ; preds = %794
  br label %802

802:                                              ; preds = %801, %799
  %803 = phi i8* [ %800, %799 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %801 ]
  %804 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %805 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %804, i32 0, i32 5
  %806 = load double*, double** %805, align 8
  %807 = load i32, i32* %11, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds double, double* %806, i64 %808
  %810 = load double, double* %809, align 8
  %811 = load double, double* %8, align 8
  %812 = fdiv double %810, %811
  %813 = fdiv double %812, 1.000000e+04
  %814 = call i32 (i8*, i8*, ...) @sprintf(i8* %795, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %803, double %813)
  %815 = load i8*, i8** @outp, align 8
  %816 = sext i32 %814 to i64
  %817 = getelementptr inbounds i8, i8* %815, i64 %816
  store i8* %817, i8** @outp, align 8
  br label %842

818:                                              ; preds = %788
  %819 = load i8*, i8** @outp, align 8
  %820 = load i32, i32* %14, align 4
  %821 = add nsw i32 %820, 1
  store i32 %821, i32* %14, align 4
  %822 = icmp ne i32 %820, 0
  br i1 %822, label %823, label %825

823:                                              ; preds = %818
  %824 = load i8*, i8** %13, align 8
  br label %826

825:                                              ; preds = %818
  br label %826

826:                                              ; preds = %825, %823
  %827 = phi i8* [ %824, %823 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %825 ]
  %828 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %829 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %828, i32 0, i32 5
  %830 = load double*, double** %829, align 8
  %831 = load i32, i32* %11, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds double, double* %830, i64 %832
  %834 = load double, double* %833, align 8
  %835 = fmul double 1.000000e+02, %834
  %836 = load double, double* %9, align 8
  %837 = fdiv double %835, %836
  %838 = call i32 (i8*, i8*, ...) @sprintf(i8* %819, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %827, double %837)
  %839 = load i8*, i8** @outp, align 8
  %840 = sext i32 %838 to i64
  %841 = getelementptr inbounds i8, i8* %839, i64 %840
  store i8* %841, i8** @outp, align 8
  br label %842

842:                                              ; preds = %826, %802
  br label %843

843:                                              ; preds = %842, %782
  br label %844

844:                                              ; preds = %843, %781
  br label %845

845:                                              ; preds = %844, %723
  br label %846

846:                                              ; preds = %845
  %847 = load i32, i32* %11, align 4
  %848 = add nsw i32 %847, 1
  store i32 %848, i32* %11, align 4
  %849 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %850 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %849, i32 0, i32 3
  %851 = load %struct.msr_counter*, %struct.msr_counter** %850, align 8
  store %struct.msr_counter* %851, %struct.msr_counter** %12, align 8
  br label %666

852:                                              ; preds = %666
  %853 = load i32, i32* @BIC_CPU_c1, align 4
  %854 = call i64 @DO_BIC(i32 %853)
  %855 = icmp ne i64 %854, 0
  br i1 %855, label %856, label %876

856:                                              ; preds = %852
  %857 = load i8*, i8** @outp, align 8
  %858 = load i32, i32* %14, align 4
  %859 = add nsw i32 %858, 1
  store i32 %859, i32* %14, align 4
  %860 = icmp ne i32 %858, 0
  br i1 %860, label %861, label %863

861:                                              ; preds = %856
  %862 = load i8*, i8** %13, align 8
  br label %864

863:                                              ; preds = %856
  br label %864

864:                                              ; preds = %863, %861
  %865 = phi i8* [ %862, %861 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %863 ]
  %866 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %867 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %866, i32 0, i32 6
  %868 = load double, double* %867, align 8
  %869 = fmul double 1.000000e+02, %868
  %870 = load double, double* %9, align 8
  %871 = fdiv double %869, %870
  %872 = call i32 (i8*, i8*, ...) @sprintf(i8* %857, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %865, double %871)
  %873 = load i8*, i8** @outp, align 8
  %874 = sext i32 %872 to i64
  %875 = getelementptr inbounds i8, i8* %873, i64 %874
  store i8* %875, i8** @outp, align 8
  br label %876

876:                                              ; preds = %864, %852
  %877 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %878 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 8
  %880 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %881 = and i32 %879, %880
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %876
  br label %2055

884:                                              ; preds = %876
  %885 = load i32, i32* @BIC_CPU_c3, align 4
  %886 = call i64 @DO_BIC(i32 %885)
  %887 = icmp ne i64 %886, 0
  br i1 %887, label %888, label %908

888:                                              ; preds = %884
  %889 = load i8*, i8** @outp, align 8
  %890 = load i32, i32* %14, align 4
  %891 = add nsw i32 %890, 1
  store i32 %891, i32* %14, align 4
  %892 = icmp ne i32 %890, 0
  br i1 %892, label %893, label %895

893:                                              ; preds = %888
  %894 = load i8*, i8** %13, align 8
  br label %896

895:                                              ; preds = %888
  br label %896

896:                                              ; preds = %895, %893
  %897 = phi i8* [ %894, %893 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %895 ]
  %898 = load %struct.core_data*, %struct.core_data** %6, align 8
  %899 = getelementptr inbounds %struct.core_data, %struct.core_data* %898, i32 0, i32 0
  %900 = load double, double* %899, align 8
  %901 = fmul double 1.000000e+02, %900
  %902 = load double, double* %9, align 8
  %903 = fdiv double %901, %902
  %904 = call i32 (i8*, i8*, ...) @sprintf(i8* %889, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %897, double %903)
  %905 = load i8*, i8** @outp, align 8
  %906 = sext i32 %904 to i64
  %907 = getelementptr inbounds i8, i8* %905, i64 %906
  store i8* %907, i8** @outp, align 8
  br label %908

908:                                              ; preds = %896, %884
  %909 = load i32, i32* @BIC_CPU_c6, align 4
  %910 = call i64 @DO_BIC(i32 %909)
  %911 = icmp ne i64 %910, 0
  br i1 %911, label %912, label %932

912:                                              ; preds = %908
  %913 = load i8*, i8** @outp, align 8
  %914 = load i32, i32* %14, align 4
  %915 = add nsw i32 %914, 1
  store i32 %915, i32* %14, align 4
  %916 = icmp ne i32 %914, 0
  br i1 %916, label %917, label %919

917:                                              ; preds = %912
  %918 = load i8*, i8** %13, align 8
  br label %920

919:                                              ; preds = %912
  br label %920

920:                                              ; preds = %919, %917
  %921 = phi i8* [ %918, %917 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %919 ]
  %922 = load %struct.core_data*, %struct.core_data** %6, align 8
  %923 = getelementptr inbounds %struct.core_data, %struct.core_data* %922, i32 0, i32 1
  %924 = load double, double* %923, align 8
  %925 = fmul double 1.000000e+02, %924
  %926 = load double, double* %9, align 8
  %927 = fdiv double %925, %926
  %928 = call i32 (i8*, i8*, ...) @sprintf(i8* %913, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %921, double %927)
  %929 = load i8*, i8** @outp, align 8
  %930 = sext i32 %928 to i64
  %931 = getelementptr inbounds i8, i8* %929, i64 %930
  store i8* %931, i8** @outp, align 8
  br label %932

932:                                              ; preds = %920, %908
  %933 = load i32, i32* @BIC_CPU_c7, align 4
  %934 = call i64 @DO_BIC(i32 %933)
  %935 = icmp ne i64 %934, 0
  br i1 %935, label %936, label %956

936:                                              ; preds = %932
  %937 = load i8*, i8** @outp, align 8
  %938 = load i32, i32* %14, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %14, align 4
  %940 = icmp ne i32 %938, 0
  br i1 %940, label %941, label %943

941:                                              ; preds = %936
  %942 = load i8*, i8** %13, align 8
  br label %944

943:                                              ; preds = %936
  br label %944

944:                                              ; preds = %943, %941
  %945 = phi i8* [ %942, %941 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %943 ]
  %946 = load %struct.core_data*, %struct.core_data** %6, align 8
  %947 = getelementptr inbounds %struct.core_data, %struct.core_data* %946, i32 0, i32 2
  %948 = load double, double* %947, align 8
  %949 = fmul double 1.000000e+02, %948
  %950 = load double, double* %9, align 8
  %951 = fdiv double %949, %950
  %952 = call i32 (i8*, i8*, ...) @sprintf(i8* %937, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %945, double %951)
  %953 = load i8*, i8** @outp, align 8
  %954 = sext i32 %952 to i64
  %955 = getelementptr inbounds i8, i8* %953, i64 %954
  store i8* %955, i8** @outp, align 8
  br label %956

956:                                              ; preds = %944, %932
  %957 = load i32, i32* @BIC_Mod_c6, align 4
  %958 = call i64 @DO_BIC(i32 %957)
  %959 = icmp ne i64 %958, 0
  br i1 %959, label %960, label %980

960:                                              ; preds = %956
  %961 = load i8*, i8** @outp, align 8
  %962 = load i32, i32* %14, align 4
  %963 = add nsw i32 %962, 1
  store i32 %963, i32* %14, align 4
  %964 = icmp ne i32 %962, 0
  br i1 %964, label %965, label %967

965:                                              ; preds = %960
  %966 = load i8*, i8** %13, align 8
  br label %968

967:                                              ; preds = %960
  br label %968

968:                                              ; preds = %967, %965
  %969 = phi i8* [ %966, %965 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %967 ]
  %970 = load %struct.core_data*, %struct.core_data** %6, align 8
  %971 = getelementptr inbounds %struct.core_data, %struct.core_data* %970, i32 0, i32 3
  %972 = load double, double* %971, align 8
  %973 = fmul double 1.000000e+02, %972
  %974 = load double, double* %9, align 8
  %975 = fdiv double %973, %974
  %976 = call i32 (i8*, i8*, ...) @sprintf(i8* %961, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %969, double %975)
  %977 = load i8*, i8** @outp, align 8
  %978 = sext i32 %976 to i64
  %979 = getelementptr inbounds i8, i8* %977, i64 %978
  store i8* %979, i8** @outp, align 8
  br label %980

980:                                              ; preds = %968, %956
  %981 = load i32, i32* @BIC_CoreTmp, align 4
  %982 = call i64 @DO_BIC(i32 %981)
  %983 = icmp ne i64 %982, 0
  br i1 %983, label %984, label %1001

984:                                              ; preds = %980
  %985 = load i8*, i8** @outp, align 8
  %986 = load i32, i32* %14, align 4
  %987 = add nsw i32 %986, 1
  store i32 %987, i32* %14, align 4
  %988 = icmp ne i32 %986, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %984
  %990 = load i8*, i8** %13, align 8
  br label %992

991:                                              ; preds = %984
  br label %992

992:                                              ; preds = %991, %989
  %993 = phi i8* [ %990, %989 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %991 ]
  %994 = load %struct.core_data*, %struct.core_data** %6, align 8
  %995 = getelementptr inbounds %struct.core_data, %struct.core_data* %994, i32 0, i32 6
  %996 = load i32, i32* %995, align 8
  %997 = call i32 (i8*, i8*, ...) @sprintf(i8* %985, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %993, i32 %996)
  %998 = load i8*, i8** @outp, align 8
  %999 = sext i32 %997 to i64
  %1000 = getelementptr inbounds i8, i8* %998, i64 %999
  store i8* %1000, i8** @outp, align 8
  br label %1001

1001:                                             ; preds = %992, %980
  store i32 0, i32* %11, align 4
  %1002 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %1002, %struct.msr_counter** %12, align 8
  br label %1003

1003:                                             ; preds = %1152, %1001
  %1004 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1005 = icmp ne %struct.msr_counter* %1004, null
  br i1 %1005, label %1006, label %1158

1006:                                             ; preds = %1003
  %1007 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1008 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1007, i32 0, i32 0
  %1009 = load i64, i64* %1008, align 8
  %1010 = load i64, i64* @FORMAT_RAW, align 8
  %1011 = icmp eq i64 %1009, %1010
  br i1 %1011, label %1012, label %1061

1012:                                             ; preds = %1006
  %1013 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1014 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1013, i32 0, i32 1
  %1015 = load i32, i32* %1014, align 8
  %1016 = icmp eq i32 %1015, 32
  br i1 %1016, label %1017, label %1039

1017:                                             ; preds = %1012
  %1018 = load i8*, i8** @outp, align 8
  %1019 = load i32, i32* %14, align 4
  %1020 = add nsw i32 %1019, 1
  store i32 %1020, i32* %14, align 4
  %1021 = icmp ne i32 %1019, 0
  br i1 %1021, label %1022, label %1024

1022:                                             ; preds = %1017
  %1023 = load i8*, i8** %13, align 8
  br label %1025

1024:                                             ; preds = %1017
  br label %1025

1025:                                             ; preds = %1024, %1022
  %1026 = phi i8* [ %1023, %1022 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1024 ]
  %1027 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1028 = getelementptr inbounds %struct.core_data, %struct.core_data* %1027, i32 0, i32 4
  %1029 = load double*, double** %1028, align 8
  %1030 = load i32, i32* %11, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds double, double* %1029, i64 %1031
  %1033 = load double, double* %1032, align 8
  %1034 = fptoui double %1033 to i32
  %1035 = call i32 (i8*, i8*, ...) @sprintf(i8* %1018, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %1026, i32 %1034)
  %1036 = load i8*, i8** @outp, align 8
  %1037 = sext i32 %1035 to i64
  %1038 = getelementptr inbounds i8, i8* %1036, i64 %1037
  store i8* %1038, i8** @outp, align 8
  br label %1060

1039:                                             ; preds = %1012
  %1040 = load i8*, i8** @outp, align 8
  %1041 = load i32, i32* %14, align 4
  %1042 = add nsw i32 %1041, 1
  store i32 %1042, i32* %14, align 4
  %1043 = icmp ne i32 %1041, 0
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1039
  %1045 = load i8*, i8** %13, align 8
  br label %1047

1046:                                             ; preds = %1039
  br label %1047

1047:                                             ; preds = %1046, %1044
  %1048 = phi i8* [ %1045, %1044 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1046 ]
  %1049 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1050 = getelementptr inbounds %struct.core_data, %struct.core_data* %1049, i32 0, i32 4
  %1051 = load double*, double** %1050, align 8
  %1052 = load i32, i32* %11, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds double, double* %1051, i64 %1053
  %1055 = load double, double* %1054, align 8
  %1056 = call i32 (i8*, i8*, ...) @sprintf(i8* %1040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %1048, double %1055)
  %1057 = load i8*, i8** @outp, align 8
  %1058 = sext i32 %1056 to i64
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058
  store i8* %1059, i8** @outp, align 8
  br label %1060

1060:                                             ; preds = %1047, %1025
  br label %1151

1061:                                             ; preds = %1006
  %1062 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1063 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1062, i32 0, i32 0
  %1064 = load i64, i64* %1063, align 8
  %1065 = load i64, i64* @FORMAT_DELTA, align 8
  %1066 = icmp eq i64 %1064, %1065
  br i1 %1066, label %1067, label %1119

1067:                                             ; preds = %1061
  %1068 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1069 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1068, i32 0, i32 2
  %1070 = load i64, i64* %1069, align 8
  %1071 = load i64, i64* @COUNTER_ITEMS, align 8
  %1072 = icmp eq i64 %1070, %1071
  br i1 %1072, label %1073, label %1097

1073:                                             ; preds = %1067
  %1074 = load i64, i64* @sums_need_wide_columns, align 8
  %1075 = icmp ne i64 %1074, 0
  br i1 %1075, label %1076, label %1097

1076:                                             ; preds = %1073
  %1077 = load i8*, i8** @outp, align 8
  %1078 = load i32, i32* %14, align 4
  %1079 = add nsw i32 %1078, 1
  store i32 %1079, i32* %14, align 4
  %1080 = icmp ne i32 %1078, 0
  br i1 %1080, label %1081, label %1083

1081:                                             ; preds = %1076
  %1082 = load i8*, i8** %13, align 8
  br label %1084

1083:                                             ; preds = %1076
  br label %1084

1084:                                             ; preds = %1083, %1081
  %1085 = phi i8* [ %1082, %1081 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1083 ]
  %1086 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1087 = getelementptr inbounds %struct.core_data, %struct.core_data* %1086, i32 0, i32 4
  %1088 = load double*, double** %1087, align 8
  %1089 = load i32, i32* %11, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds double, double* %1088, i64 %1090
  %1092 = load double, double* %1091, align 8
  %1093 = call i32 (i8*, i8*, ...) @sprintf(i8* %1077, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %1085, double %1092)
  %1094 = load i8*, i8** @outp, align 8
  %1095 = sext i32 %1093 to i64
  %1096 = getelementptr inbounds i8, i8* %1094, i64 %1095
  store i8* %1096, i8** @outp, align 8
  br label %1118

1097:                                             ; preds = %1073, %1067
  %1098 = load i8*, i8** @outp, align 8
  %1099 = load i32, i32* %14, align 4
  %1100 = add nsw i32 %1099, 1
  store i32 %1100, i32* %14, align 4
  %1101 = icmp ne i32 %1099, 0
  br i1 %1101, label %1102, label %1104

1102:                                             ; preds = %1097
  %1103 = load i8*, i8** %13, align 8
  br label %1105

1104:                                             ; preds = %1097
  br label %1105

1105:                                             ; preds = %1104, %1102
  %1106 = phi i8* [ %1103, %1102 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1104 ]
  %1107 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1108 = getelementptr inbounds %struct.core_data, %struct.core_data* %1107, i32 0, i32 4
  %1109 = load double*, double** %1108, align 8
  %1110 = load i32, i32* %11, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds double, double* %1109, i64 %1111
  %1113 = load double, double* %1112, align 8
  %1114 = call i32 (i8*, i8*, ...) @sprintf(i8* %1098, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %1106, double %1113)
  %1115 = load i8*, i8** @outp, align 8
  %1116 = sext i32 %1114 to i64
  %1117 = getelementptr inbounds i8, i8* %1115, i64 %1116
  store i8* %1117, i8** @outp, align 8
  br label %1118

1118:                                             ; preds = %1105, %1084
  br label %1150

1119:                                             ; preds = %1061
  %1120 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1121 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1120, i32 0, i32 0
  %1122 = load i64, i64* %1121, align 8
  %1123 = load i64, i64* @FORMAT_PERCENT, align 8
  %1124 = icmp eq i64 %1122, %1123
  br i1 %1124, label %1125, label %1149

1125:                                             ; preds = %1119
  %1126 = load i8*, i8** @outp, align 8
  %1127 = load i32, i32* %14, align 4
  %1128 = add nsw i32 %1127, 1
  store i32 %1128, i32* %14, align 4
  %1129 = icmp ne i32 %1127, 0
  br i1 %1129, label %1130, label %1132

1130:                                             ; preds = %1125
  %1131 = load i8*, i8** %13, align 8
  br label %1133

1132:                                             ; preds = %1125
  br label %1133

1133:                                             ; preds = %1132, %1130
  %1134 = phi i8* [ %1131, %1130 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1132 ]
  %1135 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1136 = getelementptr inbounds %struct.core_data, %struct.core_data* %1135, i32 0, i32 4
  %1137 = load double*, double** %1136, align 8
  %1138 = load i32, i32* %11, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds double, double* %1137, i64 %1139
  %1141 = load double, double* %1140, align 8
  %1142 = fmul double 1.000000e+02, %1141
  %1143 = load double, double* %9, align 8
  %1144 = fdiv double %1142, %1143
  %1145 = call i32 (i8*, i8*, ...) @sprintf(i8* %1126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1134, double %1144)
  %1146 = load i8*, i8** @outp, align 8
  %1147 = sext i32 %1145 to i64
  %1148 = getelementptr inbounds i8, i8* %1146, i64 %1147
  store i8* %1148, i8** @outp, align 8
  br label %1149

1149:                                             ; preds = %1133, %1119
  br label %1150

1150:                                             ; preds = %1149, %1118
  br label %1151

1151:                                             ; preds = %1150, %1060
  br label %1152

1152:                                             ; preds = %1151
  %1153 = load i32, i32* %11, align 4
  %1154 = add nsw i32 %1153, 1
  store i32 %1154, i32* %11, align 4
  %1155 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1156 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1155, i32 0, i32 3
  %1157 = load %struct.msr_counter*, %struct.msr_counter** %1156, align 8
  store %struct.msr_counter* %1157, %struct.msr_counter** %12, align 8
  br label %1003

1158:                                             ; preds = %1003
  %1159 = load double, double* %8, align 8
  %1160 = load double, double* @rapl_joule_counter_range, align 8
  %1161 = fcmp olt double %1159, %1160
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1158
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %1164

1163:                                             ; preds = %1158
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %1164

1164:                                             ; preds = %1163, %1162
  %1165 = load i32, i32* @BIC_CorWatt, align 4
  %1166 = call i64 @DO_BIC(i32 %1165)
  %1167 = icmp ne i64 %1166, 0
  br i1 %1167, label %1168, label %1195

1168:                                             ; preds = %1164
  %1169 = load i32, i32* @do_rapl, align 4
  %1170 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1171 = and i32 %1169, %1170
  %1172 = icmp ne i32 %1171, 0
  br i1 %1172, label %1173, label %1195

1173:                                             ; preds = %1168
  %1174 = load i8*, i8** @outp, align 8
  %1175 = load i8*, i8** %10, align 8
  %1176 = load i32, i32* %14, align 4
  %1177 = add nsw i32 %1176, 1
  store i32 %1177, i32* %14, align 4
  %1178 = icmp ne i32 %1176, 0
  br i1 %1178, label %1179, label %1181

1179:                                             ; preds = %1173
  %1180 = load i8*, i8** %13, align 8
  br label %1182

1181:                                             ; preds = %1173
  br label %1182

1182:                                             ; preds = %1181, %1179
  %1183 = phi i8* [ %1180, %1179 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1181 ]
  %1184 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1185 = getelementptr inbounds %struct.core_data, %struct.core_data* %1184, i32 0, i32 5
  %1186 = load double, double* %1185, align 8
  %1187 = load double, double* @rapl_energy_units, align 8
  %1188 = fmul double %1186, %1187
  %1189 = load double, double* %8, align 8
  %1190 = fdiv double %1188, %1189
  %1191 = call i32 (i8*, i8*, ...) @sprintf(i8* %1174, i8* %1175, i8* %1183, double %1190)
  %1192 = load i8*, i8** @outp, align 8
  %1193 = sext i32 %1191 to i64
  %1194 = getelementptr inbounds i8, i8* %1192, i64 %1193
  store i8* %1194, i8** @outp, align 8
  br label %1195

1195:                                             ; preds = %1182, %1168, %1164
  %1196 = load i32, i32* @BIC_Cor_J, align 4
  %1197 = call i64 @DO_BIC(i32 %1196)
  %1198 = icmp ne i64 %1197, 0
  br i1 %1198, label %1199, label %1224

1199:                                             ; preds = %1195
  %1200 = load i32, i32* @do_rapl, align 4
  %1201 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1202 = and i32 %1200, %1201
  %1203 = icmp ne i32 %1202, 0
  br i1 %1203, label %1204, label %1224

1204:                                             ; preds = %1199
  %1205 = load i8*, i8** @outp, align 8
  %1206 = load i8*, i8** %10, align 8
  %1207 = load i32, i32* %14, align 4
  %1208 = add nsw i32 %1207, 1
  store i32 %1208, i32* %14, align 4
  %1209 = icmp ne i32 %1207, 0
  br i1 %1209, label %1210, label %1212

1210:                                             ; preds = %1204
  %1211 = load i8*, i8** %13, align 8
  br label %1213

1212:                                             ; preds = %1204
  br label %1213

1213:                                             ; preds = %1212, %1210
  %1214 = phi i8* [ %1211, %1210 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1212 ]
  %1215 = load %struct.core_data*, %struct.core_data** %6, align 8
  %1216 = getelementptr inbounds %struct.core_data, %struct.core_data* %1215, i32 0, i32 5
  %1217 = load double, double* %1216, align 8
  %1218 = load double, double* @rapl_energy_units, align 8
  %1219 = fmul double %1217, %1218
  %1220 = call i32 (i8*, i8*, ...) @sprintf(i8* %1205, i8* %1206, i8* %1214, double %1219)
  %1221 = load i8*, i8** @outp, align 8
  %1222 = sext i32 %1220 to i64
  %1223 = getelementptr inbounds i8, i8* %1221, i64 %1222
  store i8* %1223, i8** @outp, align 8
  br label %1224

1224:                                             ; preds = %1213, %1199, %1195
  %1225 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %1226 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %1225, i32 0, i32 0
  %1227 = load i32, i32* %1226, align 8
  %1228 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %1229 = and i32 %1227, %1228
  %1230 = icmp ne i32 %1229, 0
  br i1 %1230, label %1232, label %1231

1231:                                             ; preds = %1224
  br label %2055

1232:                                             ; preds = %1224
  %1233 = load i32, i32* @BIC_PkgTmp, align 4
  %1234 = call i64 @DO_BIC(i32 %1233)
  %1235 = icmp ne i64 %1234, 0
  br i1 %1235, label %1236, label %1253

1236:                                             ; preds = %1232
  %1237 = load i8*, i8** @outp, align 8
  %1238 = load i32, i32* %14, align 4
  %1239 = add nsw i32 %1238, 1
  store i32 %1239, i32* %14, align 4
  %1240 = icmp ne i32 %1238, 0
  br i1 %1240, label %1241, label %1243

1241:                                             ; preds = %1236
  %1242 = load i8*, i8** %13, align 8
  br label %1244

1243:                                             ; preds = %1236
  br label %1244

1244:                                             ; preds = %1243, %1241
  %1245 = phi i8* [ %1242, %1241 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1243 ]
  %1246 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1247 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1246, i32 0, i32 22
  %1248 = load i32, i32* %1247, align 4
  %1249 = call i32 (i8*, i8*, ...) @sprintf(i8* %1237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %1245, i32 %1248)
  %1250 = load i8*, i8** @outp, align 8
  %1251 = sext i32 %1249 to i64
  %1252 = getelementptr inbounds i8, i8* %1250, i64 %1251
  store i8* %1252, i8** @outp, align 8
  br label %1253

1253:                                             ; preds = %1244, %1232
  %1254 = load i32, i32* @BIC_GFX_rc6, align 4
  %1255 = call i64 @DO_BIC(i32 %1254)
  %1256 = icmp ne i64 %1255, 0
  br i1 %1256, label %1257, label %1298

1257:                                             ; preds = %1253
  %1258 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1259 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1258, i32 0, i32 0
  %1260 = load i32, i32* %1259, align 8
  %1261 = icmp eq i32 %1260, -1
  br i1 %1261, label %1262, label %1276

1262:                                             ; preds = %1257
  %1263 = load i8*, i8** @outp, align 8
  %1264 = load i32, i32* %14, align 4
  %1265 = add nsw i32 %1264, 1
  store i32 %1265, i32* %14, align 4
  %1266 = icmp ne i32 %1264, 0
  br i1 %1266, label %1267, label %1269

1267:                                             ; preds = %1262
  %1268 = load i8*, i8** %13, align 8
  br label %1270

1269:                                             ; preds = %1262
  br label %1270

1270:                                             ; preds = %1269, %1267
  %1271 = phi i8* [ %1268, %1267 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1269 ]
  %1272 = call i32 (i8*, i8*, ...) @sprintf(i8* %1263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %1271)
  %1273 = load i8*, i8** @outp, align 8
  %1274 = sext i32 %1272 to i64
  %1275 = getelementptr inbounds i8, i8* %1273, i64 %1274
  store i8* %1275, i8** @outp, align 8
  br label %1297

1276:                                             ; preds = %1257
  %1277 = load i8*, i8** @outp, align 8
  %1278 = load i32, i32* %14, align 4
  %1279 = add nsw i32 %1278, 1
  store i32 %1279, i32* %14, align 4
  %1280 = icmp ne i32 %1278, 0
  br i1 %1280, label %1281, label %1283

1281:                                             ; preds = %1276
  %1282 = load i8*, i8** %13, align 8
  br label %1284

1283:                                             ; preds = %1276
  br label %1284

1284:                                             ; preds = %1283, %1281
  %1285 = phi i8* [ %1282, %1281 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1283 ]
  %1286 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1287 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1286, i32 0, i32 0
  %1288 = load i32, i32* %1287, align 8
  %1289 = sitofp i32 %1288 to double
  %1290 = fdiv double %1289, 1.000000e+01
  %1291 = load double, double* %8, align 8
  %1292 = fdiv double %1290, %1291
  %1293 = call i32 (i8*, i8*, ...) @sprintf(i8* %1277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1285, double %1292)
  %1294 = load i8*, i8** @outp, align 8
  %1295 = sext i32 %1293 to i64
  %1296 = getelementptr inbounds i8, i8* %1294, i64 %1295
  store i8* %1296, i8** @outp, align 8
  br label %1297

1297:                                             ; preds = %1284, %1270
  br label %1298

1298:                                             ; preds = %1297, %1253
  %1299 = load i32, i32* @BIC_GFXMHz, align 4
  %1300 = call i64 @DO_BIC(i32 %1299)
  %1301 = icmp ne i64 %1300, 0
  br i1 %1301, label %1302, label %1319

1302:                                             ; preds = %1298
  %1303 = load i8*, i8** @outp, align 8
  %1304 = load i32, i32* %14, align 4
  %1305 = add nsw i32 %1304, 1
  store i32 %1305, i32* %14, align 4
  %1306 = icmp ne i32 %1304, 0
  br i1 %1306, label %1307, label %1309

1307:                                             ; preds = %1302
  %1308 = load i8*, i8** %13, align 8
  br label %1310

1309:                                             ; preds = %1302
  br label %1310

1310:                                             ; preds = %1309, %1307
  %1311 = phi i8* [ %1308, %1307 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1309 ]
  %1312 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1313 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1312, i32 0, i32 21
  %1314 = load i32, i32* %1313, align 8
  %1315 = call i32 (i8*, i8*, ...) @sprintf(i8* %1303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %1311, i32 %1314)
  %1316 = load i8*, i8** @outp, align 8
  %1317 = sext i32 %1315 to i64
  %1318 = getelementptr inbounds i8, i8* %1316, i64 %1317
  store i8* %1318, i8** @outp, align 8
  br label %1319

1319:                                             ; preds = %1310, %1298
  %1320 = load i32, i32* @BIC_Totl_c0, align 4
  %1321 = call i64 @DO_BIC(i32 %1320)
  %1322 = icmp ne i64 %1321, 0
  br i1 %1322, label %1323, label %1343

1323:                                             ; preds = %1319
  %1324 = load i8*, i8** @outp, align 8
  %1325 = load i32, i32* %14, align 4
  %1326 = add nsw i32 %1325, 1
  store i32 %1326, i32* %14, align 4
  %1327 = icmp ne i32 %1325, 0
  br i1 %1327, label %1328, label %1330

1328:                                             ; preds = %1323
  %1329 = load i8*, i8** %13, align 8
  br label %1331

1330:                                             ; preds = %1323
  br label %1331

1331:                                             ; preds = %1330, %1328
  %1332 = phi i8* [ %1329, %1328 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1330 ]
  %1333 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1334 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1333, i32 0, i32 1
  %1335 = load double, double* %1334, align 8
  %1336 = fmul double 1.000000e+02, %1335
  %1337 = load double, double* %9, align 8
  %1338 = fdiv double %1336, %1337
  %1339 = call i32 (i8*, i8*, ...) @sprintf(i8* %1324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1332, double %1338)
  %1340 = load i8*, i8** @outp, align 8
  %1341 = sext i32 %1339 to i64
  %1342 = getelementptr inbounds i8, i8* %1340, i64 %1341
  store i8* %1342, i8** @outp, align 8
  br label %1343

1343:                                             ; preds = %1331, %1319
  %1344 = load i32, i32* @BIC_Any_c0, align 4
  %1345 = call i64 @DO_BIC(i32 %1344)
  %1346 = icmp ne i64 %1345, 0
  br i1 %1346, label %1347, label %1367

1347:                                             ; preds = %1343
  %1348 = load i8*, i8** @outp, align 8
  %1349 = load i32, i32* %14, align 4
  %1350 = add nsw i32 %1349, 1
  store i32 %1350, i32* %14, align 4
  %1351 = icmp ne i32 %1349, 0
  br i1 %1351, label %1352, label %1354

1352:                                             ; preds = %1347
  %1353 = load i8*, i8** %13, align 8
  br label %1355

1354:                                             ; preds = %1347
  br label %1355

1355:                                             ; preds = %1354, %1352
  %1356 = phi i8* [ %1353, %1352 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1354 ]
  %1357 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1358 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1357, i32 0, i32 2
  %1359 = load double, double* %1358, align 8
  %1360 = fmul double 1.000000e+02, %1359
  %1361 = load double, double* %9, align 8
  %1362 = fdiv double %1360, %1361
  %1363 = call i32 (i8*, i8*, ...) @sprintf(i8* %1348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1356, double %1362)
  %1364 = load i8*, i8** @outp, align 8
  %1365 = sext i32 %1363 to i64
  %1366 = getelementptr inbounds i8, i8* %1364, i64 %1365
  store i8* %1366, i8** @outp, align 8
  br label %1367

1367:                                             ; preds = %1355, %1343
  %1368 = load i32, i32* @BIC_GFX_c0, align 4
  %1369 = call i64 @DO_BIC(i32 %1368)
  %1370 = icmp ne i64 %1369, 0
  br i1 %1370, label %1371, label %1391

1371:                                             ; preds = %1367
  %1372 = load i8*, i8** @outp, align 8
  %1373 = load i32, i32* %14, align 4
  %1374 = add nsw i32 %1373, 1
  store i32 %1374, i32* %14, align 4
  %1375 = icmp ne i32 %1373, 0
  br i1 %1375, label %1376, label %1378

1376:                                             ; preds = %1371
  %1377 = load i8*, i8** %13, align 8
  br label %1379

1378:                                             ; preds = %1371
  br label %1379

1379:                                             ; preds = %1378, %1376
  %1380 = phi i8* [ %1377, %1376 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1378 ]
  %1381 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1382 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1381, i32 0, i32 3
  %1383 = load double, double* %1382, align 8
  %1384 = fmul double 1.000000e+02, %1383
  %1385 = load double, double* %9, align 8
  %1386 = fdiv double %1384, %1385
  %1387 = call i32 (i8*, i8*, ...) @sprintf(i8* %1372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1380, double %1386)
  %1388 = load i8*, i8** @outp, align 8
  %1389 = sext i32 %1387 to i64
  %1390 = getelementptr inbounds i8, i8* %1388, i64 %1389
  store i8* %1390, i8** @outp, align 8
  br label %1391

1391:                                             ; preds = %1379, %1367
  %1392 = load i32, i32* @BIC_CPUGFX, align 4
  %1393 = call i64 @DO_BIC(i32 %1392)
  %1394 = icmp ne i64 %1393, 0
  br i1 %1394, label %1395, label %1415

1395:                                             ; preds = %1391
  %1396 = load i8*, i8** @outp, align 8
  %1397 = load i32, i32* %14, align 4
  %1398 = add nsw i32 %1397, 1
  store i32 %1398, i32* %14, align 4
  %1399 = icmp ne i32 %1397, 0
  br i1 %1399, label %1400, label %1402

1400:                                             ; preds = %1395
  %1401 = load i8*, i8** %13, align 8
  br label %1403

1402:                                             ; preds = %1395
  br label %1403

1403:                                             ; preds = %1402, %1400
  %1404 = phi i8* [ %1401, %1400 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1402 ]
  %1405 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1406 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1405, i32 0, i32 4
  %1407 = load double, double* %1406, align 8
  %1408 = fmul double 1.000000e+02, %1407
  %1409 = load double, double* %9, align 8
  %1410 = fdiv double %1408, %1409
  %1411 = call i32 (i8*, i8*, ...) @sprintf(i8* %1396, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1404, double %1410)
  %1412 = load i8*, i8** @outp, align 8
  %1413 = sext i32 %1411 to i64
  %1414 = getelementptr inbounds i8, i8* %1412, i64 %1413
  store i8* %1414, i8** @outp, align 8
  br label %1415

1415:                                             ; preds = %1403, %1391
  %1416 = load i32, i32* @BIC_Pkgpc2, align 4
  %1417 = call i64 @DO_BIC(i32 %1416)
  %1418 = icmp ne i64 %1417, 0
  br i1 %1418, label %1419, label %1439

1419:                                             ; preds = %1415
  %1420 = load i8*, i8** @outp, align 8
  %1421 = load i32, i32* %14, align 4
  %1422 = add nsw i32 %1421, 1
  store i32 %1422, i32* %14, align 4
  %1423 = icmp ne i32 %1421, 0
  br i1 %1423, label %1424, label %1426

1424:                                             ; preds = %1419
  %1425 = load i8*, i8** %13, align 8
  br label %1427

1426:                                             ; preds = %1419
  br label %1427

1427:                                             ; preds = %1426, %1424
  %1428 = phi i8* [ %1425, %1424 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1426 ]
  %1429 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1430 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1429, i32 0, i32 5
  %1431 = load double, double* %1430, align 8
  %1432 = fmul double 1.000000e+02, %1431
  %1433 = load double, double* %9, align 8
  %1434 = fdiv double %1432, %1433
  %1435 = call i32 (i8*, i8*, ...) @sprintf(i8* %1420, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1428, double %1434)
  %1436 = load i8*, i8** @outp, align 8
  %1437 = sext i32 %1435 to i64
  %1438 = getelementptr inbounds i8, i8* %1436, i64 %1437
  store i8* %1438, i8** @outp, align 8
  br label %1439

1439:                                             ; preds = %1427, %1415
  %1440 = load i32, i32* @BIC_Pkgpc3, align 4
  %1441 = call i64 @DO_BIC(i32 %1440)
  %1442 = icmp ne i64 %1441, 0
  br i1 %1442, label %1443, label %1463

1443:                                             ; preds = %1439
  %1444 = load i8*, i8** @outp, align 8
  %1445 = load i32, i32* %14, align 4
  %1446 = add nsw i32 %1445, 1
  store i32 %1446, i32* %14, align 4
  %1447 = icmp ne i32 %1445, 0
  br i1 %1447, label %1448, label %1450

1448:                                             ; preds = %1443
  %1449 = load i8*, i8** %13, align 8
  br label %1451

1450:                                             ; preds = %1443
  br label %1451

1451:                                             ; preds = %1450, %1448
  %1452 = phi i8* [ %1449, %1448 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1450 ]
  %1453 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1454 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1453, i32 0, i32 6
  %1455 = load double, double* %1454, align 8
  %1456 = fmul double 1.000000e+02, %1455
  %1457 = load double, double* %9, align 8
  %1458 = fdiv double %1456, %1457
  %1459 = call i32 (i8*, i8*, ...) @sprintf(i8* %1444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1452, double %1458)
  %1460 = load i8*, i8** @outp, align 8
  %1461 = sext i32 %1459 to i64
  %1462 = getelementptr inbounds i8, i8* %1460, i64 %1461
  store i8* %1462, i8** @outp, align 8
  br label %1463

1463:                                             ; preds = %1451, %1439
  %1464 = load i32, i32* @BIC_Pkgpc6, align 4
  %1465 = call i64 @DO_BIC(i32 %1464)
  %1466 = icmp ne i64 %1465, 0
  br i1 %1466, label %1467, label %1487

1467:                                             ; preds = %1463
  %1468 = load i8*, i8** @outp, align 8
  %1469 = load i32, i32* %14, align 4
  %1470 = add nsw i32 %1469, 1
  store i32 %1470, i32* %14, align 4
  %1471 = icmp ne i32 %1469, 0
  br i1 %1471, label %1472, label %1474

1472:                                             ; preds = %1467
  %1473 = load i8*, i8** %13, align 8
  br label %1475

1474:                                             ; preds = %1467
  br label %1475

1475:                                             ; preds = %1474, %1472
  %1476 = phi i8* [ %1473, %1472 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1474 ]
  %1477 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1478 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1477, i32 0, i32 7
  %1479 = load double, double* %1478, align 8
  %1480 = fmul double 1.000000e+02, %1479
  %1481 = load double, double* %9, align 8
  %1482 = fdiv double %1480, %1481
  %1483 = call i32 (i8*, i8*, ...) @sprintf(i8* %1468, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1476, double %1482)
  %1484 = load i8*, i8** @outp, align 8
  %1485 = sext i32 %1483 to i64
  %1486 = getelementptr inbounds i8, i8* %1484, i64 %1485
  store i8* %1486, i8** @outp, align 8
  br label %1487

1487:                                             ; preds = %1475, %1463
  %1488 = load i32, i32* @BIC_Pkgpc7, align 4
  %1489 = call i64 @DO_BIC(i32 %1488)
  %1490 = icmp ne i64 %1489, 0
  br i1 %1490, label %1491, label %1511

1491:                                             ; preds = %1487
  %1492 = load i8*, i8** @outp, align 8
  %1493 = load i32, i32* %14, align 4
  %1494 = add nsw i32 %1493, 1
  store i32 %1494, i32* %14, align 4
  %1495 = icmp ne i32 %1493, 0
  br i1 %1495, label %1496, label %1498

1496:                                             ; preds = %1491
  %1497 = load i8*, i8** %13, align 8
  br label %1499

1498:                                             ; preds = %1491
  br label %1499

1499:                                             ; preds = %1498, %1496
  %1500 = phi i8* [ %1497, %1496 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1498 ]
  %1501 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1502 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1501, i32 0, i32 8
  %1503 = load double, double* %1502, align 8
  %1504 = fmul double 1.000000e+02, %1503
  %1505 = load double, double* %9, align 8
  %1506 = fdiv double %1504, %1505
  %1507 = call i32 (i8*, i8*, ...) @sprintf(i8* %1492, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1500, double %1506)
  %1508 = load i8*, i8** @outp, align 8
  %1509 = sext i32 %1507 to i64
  %1510 = getelementptr inbounds i8, i8* %1508, i64 %1509
  store i8* %1510, i8** @outp, align 8
  br label %1511

1511:                                             ; preds = %1499, %1487
  %1512 = load i32, i32* @BIC_Pkgpc8, align 4
  %1513 = call i64 @DO_BIC(i32 %1512)
  %1514 = icmp ne i64 %1513, 0
  br i1 %1514, label %1515, label %1535

1515:                                             ; preds = %1511
  %1516 = load i8*, i8** @outp, align 8
  %1517 = load i32, i32* %14, align 4
  %1518 = add nsw i32 %1517, 1
  store i32 %1518, i32* %14, align 4
  %1519 = icmp ne i32 %1517, 0
  br i1 %1519, label %1520, label %1522

1520:                                             ; preds = %1515
  %1521 = load i8*, i8** %13, align 8
  br label %1523

1522:                                             ; preds = %1515
  br label %1523

1523:                                             ; preds = %1522, %1520
  %1524 = phi i8* [ %1521, %1520 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1522 ]
  %1525 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1526 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1525, i32 0, i32 9
  %1527 = load double, double* %1526, align 8
  %1528 = fmul double 1.000000e+02, %1527
  %1529 = load double, double* %9, align 8
  %1530 = fdiv double %1528, %1529
  %1531 = call i32 (i8*, i8*, ...) @sprintf(i8* %1516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1524, double %1530)
  %1532 = load i8*, i8** @outp, align 8
  %1533 = sext i32 %1531 to i64
  %1534 = getelementptr inbounds i8, i8* %1532, i64 %1533
  store i8* %1534, i8** @outp, align 8
  br label %1535

1535:                                             ; preds = %1523, %1511
  %1536 = load i32, i32* @BIC_Pkgpc9, align 4
  %1537 = call i64 @DO_BIC(i32 %1536)
  %1538 = icmp ne i64 %1537, 0
  br i1 %1538, label %1539, label %1559

1539:                                             ; preds = %1535
  %1540 = load i8*, i8** @outp, align 8
  %1541 = load i32, i32* %14, align 4
  %1542 = add nsw i32 %1541, 1
  store i32 %1542, i32* %14, align 4
  %1543 = icmp ne i32 %1541, 0
  br i1 %1543, label %1544, label %1546

1544:                                             ; preds = %1539
  %1545 = load i8*, i8** %13, align 8
  br label %1547

1546:                                             ; preds = %1539
  br label %1547

1547:                                             ; preds = %1546, %1544
  %1548 = phi i8* [ %1545, %1544 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1546 ]
  %1549 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1550 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1549, i32 0, i32 10
  %1551 = load double, double* %1550, align 8
  %1552 = fmul double 1.000000e+02, %1551
  %1553 = load double, double* %9, align 8
  %1554 = fdiv double %1552, %1553
  %1555 = call i32 (i8*, i8*, ...) @sprintf(i8* %1540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1548, double %1554)
  %1556 = load i8*, i8** @outp, align 8
  %1557 = sext i32 %1555 to i64
  %1558 = getelementptr inbounds i8, i8* %1556, i64 %1557
  store i8* %1558, i8** @outp, align 8
  br label %1559

1559:                                             ; preds = %1547, %1535
  %1560 = load i32, i32* @BIC_Pkgpc10, align 4
  %1561 = call i64 @DO_BIC(i32 %1560)
  %1562 = icmp ne i64 %1561, 0
  br i1 %1562, label %1563, label %1583

1563:                                             ; preds = %1559
  %1564 = load i8*, i8** @outp, align 8
  %1565 = load i32, i32* %14, align 4
  %1566 = add nsw i32 %1565, 1
  store i32 %1566, i32* %14, align 4
  %1567 = icmp ne i32 %1565, 0
  br i1 %1567, label %1568, label %1570

1568:                                             ; preds = %1563
  %1569 = load i8*, i8** %13, align 8
  br label %1571

1570:                                             ; preds = %1563
  br label %1571

1571:                                             ; preds = %1570, %1568
  %1572 = phi i8* [ %1569, %1568 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1570 ]
  %1573 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1574 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1573, i32 0, i32 11
  %1575 = load double, double* %1574, align 8
  %1576 = fmul double 1.000000e+02, %1575
  %1577 = load double, double* %9, align 8
  %1578 = fdiv double %1576, %1577
  %1579 = call i32 (i8*, i8*, ...) @sprintf(i8* %1564, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1572, double %1578)
  %1580 = load i8*, i8** @outp, align 8
  %1581 = sext i32 %1579 to i64
  %1582 = getelementptr inbounds i8, i8* %1580, i64 %1581
  store i8* %1582, i8** @outp, align 8
  br label %1583

1583:                                             ; preds = %1571, %1559
  %1584 = load i32, i32* @BIC_CPU_LPI, align 4
  %1585 = call i64 @DO_BIC(i32 %1584)
  %1586 = icmp ne i64 %1585, 0
  br i1 %1586, label %1587, label %1608

1587:                                             ; preds = %1583
  %1588 = load i8*, i8** @outp, align 8
  %1589 = load i32, i32* %14, align 4
  %1590 = add nsw i32 %1589, 1
  store i32 %1590, i32* %14, align 4
  %1591 = icmp ne i32 %1589, 0
  br i1 %1591, label %1592, label %1594

1592:                                             ; preds = %1587
  %1593 = load i8*, i8** %13, align 8
  br label %1595

1594:                                             ; preds = %1587
  br label %1595

1595:                                             ; preds = %1594, %1592
  %1596 = phi i8* [ %1593, %1592 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1594 ]
  %1597 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1598 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1597, i32 0, i32 12
  %1599 = load double, double* %1598, align 8
  %1600 = fmul double 1.000000e+02, %1599
  %1601 = fdiv double %1600, 1.000000e+06
  %1602 = load double, double* %8, align 8
  %1603 = fdiv double %1601, %1602
  %1604 = call i32 (i8*, i8*, ...) @sprintf(i8* %1588, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1596, double %1603)
  %1605 = load i8*, i8** @outp, align 8
  %1606 = sext i32 %1604 to i64
  %1607 = getelementptr inbounds i8, i8* %1605, i64 %1606
  store i8* %1607, i8** @outp, align 8
  br label %1608

1608:                                             ; preds = %1595, %1583
  %1609 = load i32, i32* @BIC_SYS_LPI, align 4
  %1610 = call i64 @DO_BIC(i32 %1609)
  %1611 = icmp ne i64 %1610, 0
  br i1 %1611, label %1612, label %1633

1612:                                             ; preds = %1608
  %1613 = load i8*, i8** @outp, align 8
  %1614 = load i32, i32* %14, align 4
  %1615 = add nsw i32 %1614, 1
  store i32 %1615, i32* %14, align 4
  %1616 = icmp ne i32 %1614, 0
  br i1 %1616, label %1617, label %1619

1617:                                             ; preds = %1612
  %1618 = load i8*, i8** %13, align 8
  br label %1620

1619:                                             ; preds = %1612
  br label %1620

1620:                                             ; preds = %1619, %1617
  %1621 = phi i8* [ %1618, %1617 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1619 ]
  %1622 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1623 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1622, i32 0, i32 13
  %1624 = load double, double* %1623, align 8
  %1625 = fmul double 1.000000e+02, %1624
  %1626 = fdiv double %1625, 1.000000e+06
  %1627 = load double, double* %8, align 8
  %1628 = fdiv double %1626, %1627
  %1629 = call i32 (i8*, i8*, ...) @sprintf(i8* %1613, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %1621, double %1628)
  %1630 = load i8*, i8** @outp, align 8
  %1631 = sext i32 %1629 to i64
  %1632 = getelementptr inbounds i8, i8* %1630, i64 %1631
  store i8* %1632, i8** @outp, align 8
  br label %1633

1633:                                             ; preds = %1620, %1608
  %1634 = load i32, i32* @BIC_PkgWatt, align 4
  %1635 = call i64 @DO_BIC(i32 %1634)
  %1636 = icmp ne i64 %1635, 0
  br i1 %1636, label %1637, label %1659

1637:                                             ; preds = %1633
  %1638 = load i8*, i8** @outp, align 8
  %1639 = load i8*, i8** %10, align 8
  %1640 = load i32, i32* %14, align 4
  %1641 = add nsw i32 %1640, 1
  store i32 %1641, i32* %14, align 4
  %1642 = icmp ne i32 %1640, 0
  br i1 %1642, label %1643, label %1645

1643:                                             ; preds = %1637
  %1644 = load i8*, i8** %13, align 8
  br label %1646

1645:                                             ; preds = %1637
  br label %1646

1646:                                             ; preds = %1645, %1643
  %1647 = phi i8* [ %1644, %1643 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1645 ]
  %1648 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1649 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1648, i32 0, i32 14
  %1650 = load double, double* %1649, align 8
  %1651 = load double, double* @rapl_energy_units, align 8
  %1652 = fmul double %1650, %1651
  %1653 = load double, double* %8, align 8
  %1654 = fdiv double %1652, %1653
  %1655 = call i32 (i8*, i8*, ...) @sprintf(i8* %1638, i8* %1639, i8* %1647, double %1654)
  %1656 = load i8*, i8** @outp, align 8
  %1657 = sext i32 %1655 to i64
  %1658 = getelementptr inbounds i8, i8* %1656, i64 %1657
  store i8* %1658, i8** @outp, align 8
  br label %1659

1659:                                             ; preds = %1646, %1633
  %1660 = load i32, i32* @BIC_CorWatt, align 4
  %1661 = call i64 @DO_BIC(i32 %1660)
  %1662 = icmp ne i64 %1661, 0
  br i1 %1662, label %1663, label %1690

1663:                                             ; preds = %1659
  %1664 = load i32, i32* @do_rapl, align 4
  %1665 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1666 = and i32 %1664, %1665
  %1667 = icmp ne i32 %1666, 0
  br i1 %1667, label %1690, label %1668

1668:                                             ; preds = %1663
  %1669 = load i8*, i8** @outp, align 8
  %1670 = load i8*, i8** %10, align 8
  %1671 = load i32, i32* %14, align 4
  %1672 = add nsw i32 %1671, 1
  store i32 %1672, i32* %14, align 4
  %1673 = icmp ne i32 %1671, 0
  br i1 %1673, label %1674, label %1676

1674:                                             ; preds = %1668
  %1675 = load i8*, i8** %13, align 8
  br label %1677

1676:                                             ; preds = %1668
  br label %1677

1677:                                             ; preds = %1676, %1674
  %1678 = phi i8* [ %1675, %1674 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1676 ]
  %1679 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1680 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1679, i32 0, i32 15
  %1681 = load double, double* %1680, align 8
  %1682 = load double, double* @rapl_energy_units, align 8
  %1683 = fmul double %1681, %1682
  %1684 = load double, double* %8, align 8
  %1685 = fdiv double %1683, %1684
  %1686 = call i32 (i8*, i8*, ...) @sprintf(i8* %1669, i8* %1670, i8* %1678, double %1685)
  %1687 = load i8*, i8** @outp, align 8
  %1688 = sext i32 %1686 to i64
  %1689 = getelementptr inbounds i8, i8* %1687, i64 %1688
  store i8* %1689, i8** @outp, align 8
  br label %1690

1690:                                             ; preds = %1677, %1663, %1659
  %1691 = load i32, i32* @BIC_GFXWatt, align 4
  %1692 = call i64 @DO_BIC(i32 %1691)
  %1693 = icmp ne i64 %1692, 0
  br i1 %1693, label %1694, label %1716

1694:                                             ; preds = %1690
  %1695 = load i8*, i8** @outp, align 8
  %1696 = load i8*, i8** %10, align 8
  %1697 = load i32, i32* %14, align 4
  %1698 = add nsw i32 %1697, 1
  store i32 %1698, i32* %14, align 4
  %1699 = icmp ne i32 %1697, 0
  br i1 %1699, label %1700, label %1702

1700:                                             ; preds = %1694
  %1701 = load i8*, i8** %13, align 8
  br label %1703

1702:                                             ; preds = %1694
  br label %1703

1703:                                             ; preds = %1702, %1700
  %1704 = phi i8* [ %1701, %1700 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1702 ]
  %1705 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1706 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1705, i32 0, i32 16
  %1707 = load double, double* %1706, align 8
  %1708 = load double, double* @rapl_energy_units, align 8
  %1709 = fmul double %1707, %1708
  %1710 = load double, double* %8, align 8
  %1711 = fdiv double %1709, %1710
  %1712 = call i32 (i8*, i8*, ...) @sprintf(i8* %1695, i8* %1696, i8* %1704, double %1711)
  %1713 = load i8*, i8** @outp, align 8
  %1714 = sext i32 %1712 to i64
  %1715 = getelementptr inbounds i8, i8* %1713, i64 %1714
  store i8* %1715, i8** @outp, align 8
  br label %1716

1716:                                             ; preds = %1703, %1690
  %1717 = load i32, i32* @BIC_RAMWatt, align 4
  %1718 = call i64 @DO_BIC(i32 %1717)
  %1719 = icmp ne i64 %1718, 0
  br i1 %1719, label %1720, label %1742

1720:                                             ; preds = %1716
  %1721 = load i8*, i8** @outp, align 8
  %1722 = load i8*, i8** %10, align 8
  %1723 = load i32, i32* %14, align 4
  %1724 = add nsw i32 %1723, 1
  store i32 %1724, i32* %14, align 4
  %1725 = icmp ne i32 %1723, 0
  br i1 %1725, label %1726, label %1728

1726:                                             ; preds = %1720
  %1727 = load i8*, i8** %13, align 8
  br label %1729

1728:                                             ; preds = %1720
  br label %1729

1729:                                             ; preds = %1728, %1726
  %1730 = phi i8* [ %1727, %1726 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1728 ]
  %1731 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1732 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1731, i32 0, i32 17
  %1733 = load double, double* %1732, align 8
  %1734 = load double, double* @rapl_dram_energy_units, align 8
  %1735 = fmul double %1733, %1734
  %1736 = load double, double* %8, align 8
  %1737 = fdiv double %1735, %1736
  %1738 = call i32 (i8*, i8*, ...) @sprintf(i8* %1721, i8* %1722, i8* %1730, double %1737)
  %1739 = load i8*, i8** @outp, align 8
  %1740 = sext i32 %1738 to i64
  %1741 = getelementptr inbounds i8, i8* %1739, i64 %1740
  store i8* %1741, i8** @outp, align 8
  br label %1742

1742:                                             ; preds = %1729, %1716
  %1743 = load i32, i32* @BIC_Pkg_J, align 4
  %1744 = call i64 @DO_BIC(i32 %1743)
  %1745 = icmp ne i64 %1744, 0
  br i1 %1745, label %1746, label %1766

1746:                                             ; preds = %1742
  %1747 = load i8*, i8** @outp, align 8
  %1748 = load i8*, i8** %10, align 8
  %1749 = load i32, i32* %14, align 4
  %1750 = add nsw i32 %1749, 1
  store i32 %1750, i32* %14, align 4
  %1751 = icmp ne i32 %1749, 0
  br i1 %1751, label %1752, label %1754

1752:                                             ; preds = %1746
  %1753 = load i8*, i8** %13, align 8
  br label %1755

1754:                                             ; preds = %1746
  br label %1755

1755:                                             ; preds = %1754, %1752
  %1756 = phi i8* [ %1753, %1752 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1754 ]
  %1757 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1758 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1757, i32 0, i32 14
  %1759 = load double, double* %1758, align 8
  %1760 = load double, double* @rapl_energy_units, align 8
  %1761 = fmul double %1759, %1760
  %1762 = call i32 (i8*, i8*, ...) @sprintf(i8* %1747, i8* %1748, i8* %1756, double %1761)
  %1763 = load i8*, i8** @outp, align 8
  %1764 = sext i32 %1762 to i64
  %1765 = getelementptr inbounds i8, i8* %1763, i64 %1764
  store i8* %1765, i8** @outp, align 8
  br label %1766

1766:                                             ; preds = %1755, %1742
  %1767 = load i32, i32* @BIC_Cor_J, align 4
  %1768 = call i64 @DO_BIC(i32 %1767)
  %1769 = icmp ne i64 %1768, 0
  br i1 %1769, label %1770, label %1795

1770:                                             ; preds = %1766
  %1771 = load i32, i32* @do_rapl, align 4
  %1772 = load i32, i32* @RAPL_PER_CORE_ENERGY, align 4
  %1773 = and i32 %1771, %1772
  %1774 = icmp ne i32 %1773, 0
  br i1 %1774, label %1795, label %1775

1775:                                             ; preds = %1770
  %1776 = load i8*, i8** @outp, align 8
  %1777 = load i8*, i8** %10, align 8
  %1778 = load i32, i32* %14, align 4
  %1779 = add nsw i32 %1778, 1
  store i32 %1779, i32* %14, align 4
  %1780 = icmp ne i32 %1778, 0
  br i1 %1780, label %1781, label %1783

1781:                                             ; preds = %1775
  %1782 = load i8*, i8** %13, align 8
  br label %1784

1783:                                             ; preds = %1775
  br label %1784

1784:                                             ; preds = %1783, %1781
  %1785 = phi i8* [ %1782, %1781 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1783 ]
  %1786 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1787 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1786, i32 0, i32 15
  %1788 = load double, double* %1787, align 8
  %1789 = load double, double* @rapl_energy_units, align 8
  %1790 = fmul double %1788, %1789
  %1791 = call i32 (i8*, i8*, ...) @sprintf(i8* %1776, i8* %1777, i8* %1785, double %1790)
  %1792 = load i8*, i8** @outp, align 8
  %1793 = sext i32 %1791 to i64
  %1794 = getelementptr inbounds i8, i8* %1792, i64 %1793
  store i8* %1794, i8** @outp, align 8
  br label %1795

1795:                                             ; preds = %1784, %1770, %1766
  %1796 = load i32, i32* @BIC_GFX_J, align 4
  %1797 = call i64 @DO_BIC(i32 %1796)
  %1798 = icmp ne i64 %1797, 0
  br i1 %1798, label %1799, label %1819

1799:                                             ; preds = %1795
  %1800 = load i8*, i8** @outp, align 8
  %1801 = load i8*, i8** %10, align 8
  %1802 = load i32, i32* %14, align 4
  %1803 = add nsw i32 %1802, 1
  store i32 %1803, i32* %14, align 4
  %1804 = icmp ne i32 %1802, 0
  br i1 %1804, label %1805, label %1807

1805:                                             ; preds = %1799
  %1806 = load i8*, i8** %13, align 8
  br label %1808

1807:                                             ; preds = %1799
  br label %1808

1808:                                             ; preds = %1807, %1805
  %1809 = phi i8* [ %1806, %1805 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1807 ]
  %1810 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1811 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1810, i32 0, i32 16
  %1812 = load double, double* %1811, align 8
  %1813 = load double, double* @rapl_energy_units, align 8
  %1814 = fmul double %1812, %1813
  %1815 = call i32 (i8*, i8*, ...) @sprintf(i8* %1800, i8* %1801, i8* %1809, double %1814)
  %1816 = load i8*, i8** @outp, align 8
  %1817 = sext i32 %1815 to i64
  %1818 = getelementptr inbounds i8, i8* %1816, i64 %1817
  store i8* %1818, i8** @outp, align 8
  br label %1819

1819:                                             ; preds = %1808, %1795
  %1820 = load i32, i32* @BIC_RAM_J, align 4
  %1821 = call i64 @DO_BIC(i32 %1820)
  %1822 = icmp ne i64 %1821, 0
  br i1 %1822, label %1823, label %1843

1823:                                             ; preds = %1819
  %1824 = load i8*, i8** @outp, align 8
  %1825 = load i8*, i8** %10, align 8
  %1826 = load i32, i32* %14, align 4
  %1827 = add nsw i32 %1826, 1
  store i32 %1827, i32* %14, align 4
  %1828 = icmp ne i32 %1826, 0
  br i1 %1828, label %1829, label %1831

1829:                                             ; preds = %1823
  %1830 = load i8*, i8** %13, align 8
  br label %1832

1831:                                             ; preds = %1823
  br label %1832

1832:                                             ; preds = %1831, %1829
  %1833 = phi i8* [ %1830, %1829 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1831 ]
  %1834 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1835 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1834, i32 0, i32 17
  %1836 = load double, double* %1835, align 8
  %1837 = load double, double* @rapl_dram_energy_units, align 8
  %1838 = fmul double %1836, %1837
  %1839 = call i32 (i8*, i8*, ...) @sprintf(i8* %1824, i8* %1825, i8* %1833, double %1838)
  %1840 = load i8*, i8** @outp, align 8
  %1841 = sext i32 %1839 to i64
  %1842 = getelementptr inbounds i8, i8* %1840, i64 %1841
  store i8* %1842, i8** @outp, align 8
  br label %1843

1843:                                             ; preds = %1832, %1819
  %1844 = load i32, i32* @BIC_PKG__, align 4
  %1845 = call i64 @DO_BIC(i32 %1844)
  %1846 = icmp ne i64 %1845, 0
  br i1 %1846, label %1847, label %1870

1847:                                             ; preds = %1843
  %1848 = load i8*, i8** @outp, align 8
  %1849 = load i8*, i8** %10, align 8
  %1850 = load i32, i32* %14, align 4
  %1851 = add nsw i32 %1850, 1
  store i32 %1851, i32* %14, align 4
  %1852 = icmp ne i32 %1850, 0
  br i1 %1852, label %1853, label %1855

1853:                                             ; preds = %1847
  %1854 = load i8*, i8** %13, align 8
  br label %1856

1855:                                             ; preds = %1847
  br label %1856

1856:                                             ; preds = %1855, %1853
  %1857 = phi i8* [ %1854, %1853 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1855 ]
  %1858 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1859 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1858, i32 0, i32 18
  %1860 = load double, double* %1859, align 8
  %1861 = fmul double 1.000000e+02, %1860
  %1862 = load double, double* @rapl_time_units, align 8
  %1863 = fmul double %1861, %1862
  %1864 = load double, double* %8, align 8
  %1865 = fdiv double %1863, %1864
  %1866 = call i32 (i8*, i8*, ...) @sprintf(i8* %1848, i8* %1849, i8* %1857, double %1865)
  %1867 = load i8*, i8** @outp, align 8
  %1868 = sext i32 %1866 to i64
  %1869 = getelementptr inbounds i8, i8* %1867, i64 %1868
  store i8* %1869, i8** @outp, align 8
  br label %1870

1870:                                             ; preds = %1856, %1843
  %1871 = load i32, i32* @BIC_RAM__, align 4
  %1872 = call i64 @DO_BIC(i32 %1871)
  %1873 = icmp ne i64 %1872, 0
  br i1 %1873, label %1874, label %1897

1874:                                             ; preds = %1870
  %1875 = load i8*, i8** @outp, align 8
  %1876 = load i8*, i8** %10, align 8
  %1877 = load i32, i32* %14, align 4
  %1878 = add nsw i32 %1877, 1
  store i32 %1878, i32* %14, align 4
  %1879 = icmp ne i32 %1877, 0
  br i1 %1879, label %1880, label %1882

1880:                                             ; preds = %1874
  %1881 = load i8*, i8** %13, align 8
  br label %1883

1882:                                             ; preds = %1874
  br label %1883

1883:                                             ; preds = %1882, %1880
  %1884 = phi i8* [ %1881, %1880 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1882 ]
  %1885 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1886 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1885, i32 0, i32 19
  %1887 = load double, double* %1886, align 8
  %1888 = fmul double 1.000000e+02, %1887
  %1889 = load double, double* @rapl_time_units, align 8
  %1890 = fmul double %1888, %1889
  %1891 = load double, double* %8, align 8
  %1892 = fdiv double %1890, %1891
  %1893 = call i32 (i8*, i8*, ...) @sprintf(i8* %1875, i8* %1876, i8* %1884, double %1892)
  %1894 = load i8*, i8** @outp, align 8
  %1895 = sext i32 %1893 to i64
  %1896 = getelementptr inbounds i8, i8* %1894, i64 %1895
  store i8* %1896, i8** @outp, align 8
  br label %1897

1897:                                             ; preds = %1883, %1870
  store i32 0, i32* %11, align 4
  %1898 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %1898, %struct.msr_counter** %12, align 8
  br label %1899

1899:                                             ; preds = %2048, %1897
  %1900 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1901 = icmp ne %struct.msr_counter* %1900, null
  br i1 %1901, label %1902, label %2054

1902:                                             ; preds = %1899
  %1903 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1904 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1903, i32 0, i32 0
  %1905 = load i64, i64* %1904, align 8
  %1906 = load i64, i64* @FORMAT_RAW, align 8
  %1907 = icmp eq i64 %1905, %1906
  br i1 %1907, label %1908, label %1957

1908:                                             ; preds = %1902
  %1909 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1910 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1909, i32 0, i32 1
  %1911 = load i32, i32* %1910, align 8
  %1912 = icmp eq i32 %1911, 32
  br i1 %1912, label %1913, label %1935

1913:                                             ; preds = %1908
  %1914 = load i8*, i8** @outp, align 8
  %1915 = load i32, i32* %14, align 4
  %1916 = add nsw i32 %1915, 1
  store i32 %1916, i32* %14, align 4
  %1917 = icmp ne i32 %1915, 0
  br i1 %1917, label %1918, label %1920

1918:                                             ; preds = %1913
  %1919 = load i8*, i8** %13, align 8
  br label %1921

1920:                                             ; preds = %1913
  br label %1921

1921:                                             ; preds = %1920, %1918
  %1922 = phi i8* [ %1919, %1918 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1920 ]
  %1923 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1924 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1923, i32 0, i32 20
  %1925 = load double*, double** %1924, align 8
  %1926 = load i32, i32* %11, align 4
  %1927 = sext i32 %1926 to i64
  %1928 = getelementptr inbounds double, double* %1925, i64 %1927
  %1929 = load double, double* %1928, align 8
  %1930 = fptoui double %1929 to i32
  %1931 = call i32 (i8*, i8*, ...) @sprintf(i8* %1914, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %1922, i32 %1930)
  %1932 = load i8*, i8** @outp, align 8
  %1933 = sext i32 %1931 to i64
  %1934 = getelementptr inbounds i8, i8* %1932, i64 %1933
  store i8* %1934, i8** @outp, align 8
  br label %1956

1935:                                             ; preds = %1908
  %1936 = load i8*, i8** @outp, align 8
  %1937 = load i32, i32* %14, align 4
  %1938 = add nsw i32 %1937, 1
  store i32 %1938, i32* %14, align 4
  %1939 = icmp ne i32 %1937, 0
  br i1 %1939, label %1940, label %1942

1940:                                             ; preds = %1935
  %1941 = load i8*, i8** %13, align 8
  br label %1943

1942:                                             ; preds = %1935
  br label %1943

1943:                                             ; preds = %1942, %1940
  %1944 = phi i8* [ %1941, %1940 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1942 ]
  %1945 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1946 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1945, i32 0, i32 20
  %1947 = load double*, double** %1946, align 8
  %1948 = load i32, i32* %11, align 4
  %1949 = sext i32 %1948 to i64
  %1950 = getelementptr inbounds double, double* %1947, i64 %1949
  %1951 = load double, double* %1950, align 8
  %1952 = call i32 (i8*, i8*, ...) @sprintf(i8* %1936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %1944, double %1951)
  %1953 = load i8*, i8** @outp, align 8
  %1954 = sext i32 %1952 to i64
  %1955 = getelementptr inbounds i8, i8* %1953, i64 %1954
  store i8* %1955, i8** @outp, align 8
  br label %1956

1956:                                             ; preds = %1943, %1921
  br label %2047

1957:                                             ; preds = %1902
  %1958 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1959 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1958, i32 0, i32 0
  %1960 = load i64, i64* %1959, align 8
  %1961 = load i64, i64* @FORMAT_DELTA, align 8
  %1962 = icmp eq i64 %1960, %1961
  br i1 %1962, label %1963, label %2015

1963:                                             ; preds = %1957
  %1964 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %1965 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %1964, i32 0, i32 2
  %1966 = load i64, i64* %1965, align 8
  %1967 = load i64, i64* @COUNTER_ITEMS, align 8
  %1968 = icmp eq i64 %1966, %1967
  br i1 %1968, label %1969, label %1993

1969:                                             ; preds = %1963
  %1970 = load i64, i64* @sums_need_wide_columns, align 8
  %1971 = icmp ne i64 %1970, 0
  br i1 %1971, label %1972, label %1993

1972:                                             ; preds = %1969
  %1973 = load i8*, i8** @outp, align 8
  %1974 = load i32, i32* %14, align 4
  %1975 = add nsw i32 %1974, 1
  store i32 %1975, i32* %14, align 4
  %1976 = icmp ne i32 %1974, 0
  br i1 %1976, label %1977, label %1979

1977:                                             ; preds = %1972
  %1978 = load i8*, i8** %13, align 8
  br label %1980

1979:                                             ; preds = %1972
  br label %1980

1980:                                             ; preds = %1979, %1977
  %1981 = phi i8* [ %1978, %1977 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %1979 ]
  %1982 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %1983 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %1982, i32 0, i32 20
  %1984 = load double*, double** %1983, align 8
  %1985 = load i32, i32* %11, align 4
  %1986 = sext i32 %1985 to i64
  %1987 = getelementptr inbounds double, double* %1984, i64 %1986
  %1988 = load double, double* %1987, align 8
  %1989 = call i32 (i8*, i8*, ...) @sprintf(i8* %1973, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %1981, double %1988)
  %1990 = load i8*, i8** @outp, align 8
  %1991 = sext i32 %1989 to i64
  %1992 = getelementptr inbounds i8, i8* %1990, i64 %1991
  store i8* %1992, i8** @outp, align 8
  br label %2014

1993:                                             ; preds = %1969, %1963
  %1994 = load i8*, i8** @outp, align 8
  %1995 = load i32, i32* %14, align 4
  %1996 = add nsw i32 %1995, 1
  store i32 %1996, i32* %14, align 4
  %1997 = icmp ne i32 %1995, 0
  br i1 %1997, label %1998, label %2000

1998:                                             ; preds = %1993
  %1999 = load i8*, i8** %13, align 8
  br label %2001

2000:                                             ; preds = %1993
  br label %2001

2001:                                             ; preds = %2000, %1998
  %2002 = phi i8* [ %1999, %1998 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %2000 ]
  %2003 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %2004 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %2003, i32 0, i32 20
  %2005 = load double*, double** %2004, align 8
  %2006 = load i32, i32* %11, align 4
  %2007 = sext i32 %2006 to i64
  %2008 = getelementptr inbounds double, double* %2005, i64 %2007
  %2009 = load double, double* %2008, align 8
  %2010 = call i32 (i8*, i8*, ...) @sprintf(i8* %1994, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %2002, double %2009)
  %2011 = load i8*, i8** @outp, align 8
  %2012 = sext i32 %2010 to i64
  %2013 = getelementptr inbounds i8, i8* %2011, i64 %2012
  store i8* %2013, i8** @outp, align 8
  br label %2014

2014:                                             ; preds = %2001, %1980
  br label %2046

2015:                                             ; preds = %1957
  %2016 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %2017 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %2016, i32 0, i32 0
  %2018 = load i64, i64* %2017, align 8
  %2019 = load i64, i64* @FORMAT_PERCENT, align 8
  %2020 = icmp eq i64 %2018, %2019
  br i1 %2020, label %2021, label %2045

2021:                                             ; preds = %2015
  %2022 = load i8*, i8** @outp, align 8
  %2023 = load i32, i32* %14, align 4
  %2024 = add nsw i32 %2023, 1
  store i32 %2024, i32* %14, align 4
  %2025 = icmp ne i32 %2023, 0
  br i1 %2025, label %2026, label %2028

2026:                                             ; preds = %2021
  %2027 = load i8*, i8** %13, align 8
  br label %2029

2028:                                             ; preds = %2021
  br label %2029

2029:                                             ; preds = %2028, %2026
  %2030 = phi i8* [ %2027, %2026 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %2028 ]
  %2031 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %2032 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %2031, i32 0, i32 20
  %2033 = load double*, double** %2032, align 8
  %2034 = load i32, i32* %11, align 4
  %2035 = sext i32 %2034 to i64
  %2036 = getelementptr inbounds double, double* %2033, i64 %2035
  %2037 = load double, double* %2036, align 8
  %2038 = fmul double 1.000000e+02, %2037
  %2039 = load double, double* %9, align 8
  %2040 = fdiv double %2038, %2039
  %2041 = call i32 (i8*, i8*, ...) @sprintf(i8* %2022, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %2030, double %2040)
  %2042 = load i8*, i8** @outp, align 8
  %2043 = sext i32 %2041 to i64
  %2044 = getelementptr inbounds i8, i8* %2042, i64 %2043
  store i8* %2044, i8** @outp, align 8
  br label %2045

2045:                                             ; preds = %2029, %2015
  br label %2046

2046:                                             ; preds = %2045, %2014
  br label %2047

2047:                                             ; preds = %2046, %1956
  br label %2048

2048:                                             ; preds = %2047
  %2049 = load i32, i32* %11, align 4
  %2050 = add nsw i32 %2049, 1
  store i32 %2050, i32* %11, align 4
  %2051 = load %struct.msr_counter*, %struct.msr_counter** %12, align 8
  %2052 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %2051, i32 0, i32 3
  %2053 = load %struct.msr_counter*, %struct.msr_counter** %2052, align 8
  store %struct.msr_counter* %2053, %struct.msr_counter** %12, align 8
  br label %1899

2054:                                             ; preds = %1899
  br label %2055

2055:                                             ; preds = %2054, %1231, %883
  %2056 = load i8*, i8** @outp, align 8
  %2057 = getelementptr inbounds i8, i8* %2056, i64 -1
  %2058 = load i8, i8* %2057, align 1
  %2059 = sext i8 %2058 to i32
  %2060 = icmp ne i32 %2059, 10
  br i1 %2060, label %2061, label %2067

2061:                                             ; preds = %2055
  %2062 = load i8*, i8** @outp, align 8
  %2063 = call i32 (i8*, i8*, ...) @sprintf(i8* %2062, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %2064 = load i8*, i8** @outp, align 8
  %2065 = sext i32 %2063 to i64
  %2066 = getelementptr inbounds i8, i8* %2064, i64 %2065
  store i8* %2066, i8** @outp, align 8
  br label %2067

2067:                                             ; preds = %2061, %2055
  store i32 0, i32* %4, align 4
  br label %2068

2068:                                             ; preds = %2067, %51, %36, %25
  %2069 = load i32, i32* %4, align 4
  ret i32 %2069
}

declare dso_local i32 @CPU_ISSET_S(i64, i32, i64) #1

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i32 @timersub(%struct.TYPE_7__*, i32*, %struct.timeval*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
