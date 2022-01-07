; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_process_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_process_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_level = common dso_local global i32 0, align 4
@genuine_intel = common dso_local global i32 0, align 4
@authentic_amd = common dso_local global i32 0, align 4
@hygon_genuine = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CPUID(0): %.4s%.4s%.4s \00", align 1
@max_extended_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"0x%x CPUID levels; 0x%x xlevels; family:model:stepping 0x%x:%x:%x (%d:%d:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"CPUID(1): %s %s %s %s %s %s %s %s %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SSE3\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MONITOR\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SMX\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"EIST\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TM2\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TSC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MSR\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ACPI-TM\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"HT\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"CPUID: no MSR\00", align 1
@has_invariant_tsc = common dso_local global i32 0, align 4
@has_aperf = common dso_local global i32 0, align 4
@BIC_Avg_MHz = common dso_local global i32 0, align 4
@BIC_Busy = common dso_local global i32 0, align 4
@BIC_Bzy_MHz = common dso_local global i32 0, align 4
@do_dts = common dso_local global i32 0, align 4
@BIC_CoreTmp = common dso_local global i32 0, align 4
@do_ptm = common dso_local global i32 0, align 4
@BIC_PkgTmp = common dso_local global i32 0, align 4
@has_hwp = common dso_local global i32 0, align 4
@has_hwp_notify = common dso_local global i32 0, align 4
@has_hwp_activity_window = common dso_local global i32 0, align 4
@has_hwp_epp = common dso_local global i32 0, align 4
@has_hwp_pkg = common dso_local global i32 0, align 4
@has_epb = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [102 x i8] c"CPUID(6): %sAPERF, %sTURBO, %sDTS, %sPTM, %sHWP, %sHWPnotify, %sHWPwindow, %sHWPepp, %sHWPpkg, %sEPB\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"No-\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"CPUID(7): %sSGX\0A\00", align 1
@crystal_hz = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [61 x i8] c"CPUID(0x15): eax_crystal: %d ebx_tsc: %d ecx_crystal_hz: %d\0A\00", align 1
@tsc_hz = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [43 x i8] c"TSC: %lld MHz (%d Hz * %d / %d / 1000000)\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"CPUID(0x16): base_mhz: %d max_mhz: %d bus_mhz: %d\0A\00", align 1
@aperf_mperf_multiplier = common dso_local global i32 0, align 4
@BIC_IRQ = common dso_local global i32 0, align 4
@BIC_TSC_MHz = common dso_local global i32 0, align 4
@do_nhm_platform_info = common dso_local global i32 0, align 4
@BIC_CPU_c1 = common dso_local global i32 0, align 4
@BIC_CPU_c3 = common dso_local global i32 0, align 4
@BIC_CPU_c6 = common dso_local global i32 0, align 4
@BIC_SMI = common dso_local global i32 0, align 4
@do_snb_cstates = common dso_local global i8* null, align 8
@BIC_CPU_c7 = common dso_local global i32 0, align 4
@do_irtl_snb = common dso_local global i8* null, align 8
@pkg_cstate_limit = common dso_local global i64 0, align 8
@PCL__2 = common dso_local global i64 0, align 8
@BIC_Pkgpc2 = common dso_local global i32 0, align 4
@PCL__3 = common dso_local global i64 0, align 8
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@PCL__6 = common dso_local global i64 0, align 8
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@PCL__7 = common dso_local global i64 0, align 8
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@BIC_Mod_c6 = common dso_local global i32 0, align 4
@use_c1_residency_msr = common dso_local global i32 0, align 4
@BIC_Pkgpc8 = common dso_local global i32 0, align 4
@BIC_Pkgpc9 = common dso_local global i32 0, align 4
@BIC_Pkgpc10 = common dso_local global i32 0, align 4
@do_irtl_hsw = common dso_local global i64 0, align 8
@BIC_Totl_c0 = common dso_local global i32 0, align 4
@BIC_Any_c0 = common dso_local global i32 0, align 4
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@BIC_CPUGFX = common dso_local global i32 0, align 4
@do_slm_cstates = common dso_local global i64 0, align 8
@do_knl_cstates = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [44 x i8] c"/sys/class/drm/card0/power/rc6_residency_ms\00", align 1
@R_OK = common dso_local global i32 0, align 4
@BIC_GFX_rc6 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"/sys/class/graphics/fb0/device/drm/card0/gt_cur_freq_mhz\00", align 1
@BIC_GFXMHz = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [64 x i8] c"/sys/devices/system/cpu/cpuidle/low_power_idle_cpu_residency_us\00", align 1
@BIC_CPU_LPI = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [67 x i8] c"/sys/devices/system/cpu/cpuidle/low_power_idle_system_residency_us\00", align 1
@BIC_SYS_LPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_cpuid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %19 = load i32, i32* @max_level, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @__cpuid(i32 0, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 1970169159
  br i1 %25, label %26, label %33

26:                                               ; preds = %0
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1818588270
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 1231384169
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* @genuine_intel, align 4
  br label %55

33:                                               ; preds = %29, %26, %0
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 1752462657
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 1145913699
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1769238117
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* @authentic_amd, align 4
  br label %54

43:                                               ; preds = %39, %36, %33
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 1869052232
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 1701734773
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 1852131182
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* @hygon_genuine, align 4
  br label %53

53:                                               ; preds = %52, %49, %46, %43
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* @quiet, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @outf, align 4
  %60 = bitcast i32* %2 to i8*
  %61 = bitcast i32* %4 to i8*
  %62 = bitcast i32* %3 to i8*
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @__cpuid(i32 1, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = lshr i32 %70, 8
  %72 = and i32 %71, 15
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %80, label %86

80:                                               ; preds = %64
  %81 = load i32, i32* %5, align 4
  %82 = lshr i32 %81, 20
  %83 = and i32 %82, 255
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %80, %64
  %87 = load i32, i32* %6, align 4
  %88 = icmp uge i32 %87, 6
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 15
  %93 = shl i32 %92, 4
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %3, align 4
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %10, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %99 = load i32, i32* @max_extended_level, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @__cpuid(i32 -2147483648, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @quiet, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %169, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* @outf, align 4
  %108 = load i32, i32* @max_level, align 4
  %109 = load i32, i32* @max_extended_level, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @outf, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 8
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 64
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 128
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, 256
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %143 = load i32, i32* %10, align 4
  %144 = and i32 %143, 16
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 32
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, 4194304
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, 268435456
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %163 = load i32, i32* %10, align 4
  %164 = and i32 %163, 536870912
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %122, i8* %127, i8* %132, i8* %137, i8* %142, i8* %147, i8* %152, i8* %157, i8* %162, i8* %167)
  br label %169

169:                                              ; preds = %106, %96
  %170 = load i32, i32* @genuine_intel, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @intel_model_duplicates(i32 %173)
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %10, align 4
  %177 = and i32 %176, 32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %175
  %182 = load i32, i32* @max_extended_level, align 4
  %183 = icmp uge i32 %182, -2147483641
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i32, i32* %1, align 4
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @__cpuid(i32 -2147483641, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = and i32 %190, 256
  store i32 %191, i32* @has_invariant_tsc, align 4
  br label %192

192:                                              ; preds = %184, %181
  %193 = load i32, i32* %1, align 4
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @__cpuid(i32 6, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %3, align 4
  %199 = and i32 %198, 1
  store i32 %199, i32* @has_aperf, align 4
  %200 = load i32, i32* @has_aperf, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %192
  %203 = load i32, i32* @BIC_Avg_MHz, align 4
  %204 = call i32 @BIC_PRESENT(i32 %203)
  %205 = load i32, i32* @BIC_Busy, align 4
  %206 = call i32 @BIC_PRESENT(i32 %205)
  %207 = load i32, i32* @BIC_Bzy_MHz, align 4
  %208 = call i32 @BIC_PRESENT(i32 %207)
  br label %209

209:                                              ; preds = %202, %192
  %210 = load i32, i32* %1, align 4
  %211 = and i32 %210, 1
  store i32 %211, i32* @do_dts, align 4
  %212 = load i32, i32* @do_dts, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @BIC_CoreTmp, align 4
  %216 = call i32 @BIC_PRESENT(i32 %215)
  br label %217

217:                                              ; preds = %214, %209
  %218 = load i32, i32* %1, align 4
  %219 = and i32 %218, 2
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %1, align 4
  %221 = and i32 %220, 64
  store i32 %221, i32* @do_ptm, align 4
  %222 = load i32, i32* @do_ptm, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @BIC_PkgTmp, align 4
  %226 = call i32 @BIC_PRESENT(i32 %225)
  br label %227

227:                                              ; preds = %224, %217
  %228 = load i32, i32* %1, align 4
  %229 = and i32 %228, 128
  store i32 %229, i32* @has_hwp, align 4
  %230 = load i32, i32* %1, align 4
  %231 = and i32 %230, 256
  store i32 %231, i32* @has_hwp_notify, align 4
  %232 = load i32, i32* %1, align 4
  %233 = and i32 %232, 512
  store i32 %233, i32* @has_hwp_activity_window, align 4
  %234 = load i32, i32* %1, align 4
  %235 = and i32 %234, 1024
  store i32 %235, i32* @has_hwp_epp, align 4
  %236 = load i32, i32* %1, align 4
  %237 = and i32 %236, 2048
  store i32 %237, i32* @has_hwp_pkg, align 4
  %238 = load i32, i32* %3, align 4
  %239 = and i32 %238, 8
  store i32 %239, i32* @has_epb, align 4
  %240 = load i32, i32* @quiet, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %285, label %242

242:                                              ; preds = %227
  %243 = load i32, i32* @outf, align 4
  %244 = load i32, i32* @has_aperf, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %252 = load i32, i32* @do_dts, align 4
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %256 = load i32, i32* @do_ptm, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %260 = load i32, i32* @has_hwp, align 4
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %264 = load i32, i32* @has_hwp_notify, align 4
  %265 = icmp ne i32 %264, 0
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %268 = load i32, i32* @has_hwp_activity_window, align 4
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %272 = load i32, i32* @has_hwp_epp, align 4
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %276 = load i32, i32* @has_hwp_pkg, align 4
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %280 = load i32, i32* @has_epb, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %284 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.15, i64 0, i64 0), i8* %247, i8* %251, i8* %255, i8* %259, i8* %263, i8* %267, i8* %271, i8* %275, i8* %279, i8* %283)
  br label %285

285:                                              ; preds = %242, %227
  %286 = load i32, i32* @quiet, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = call i32 (...) @decode_misc_enable_msr()
  br label %290

290:                                              ; preds = %288, %285
  %291 = load i32, i32* @max_level, align 4
  %292 = icmp sge i32 %291, 7
  br i1 %292, label %293, label %315

293:                                              ; preds = %290
  %294 = load i32, i32* @quiet, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %315, label %296

296:                                              ; preds = %293
  store i32 0, i32* %3, align 4
  %297 = load i32, i32* %1, align 4
  %298 = load i32, i32* %2, align 4
  %299 = load i32, i32* %3, align 4
  %300 = load i32, i32* %4, align 4
  %301 = call i32 @__cpuid_count(i32 7, i32 0, i32 %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %2, align 4
  %303 = and i32 %302, 4
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* @outf, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %308)
  %310 = load i32, i32* %12, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %296
  %313 = call i32 (...) @decode_feature_control_msr()
  br label %314

314:                                              ; preds = %312, %296
  br label %315

315:                                              ; preds = %314, %293, %290
  %316 = load i32, i32* @max_level, align 4
  %317 = icmp sge i32 %316, 21
  br i1 %317, label %318, label %374

318:                                              ; preds = %315
  store i32 0, i32* %4, align 4
  store i32 0, i32* @crystal_hz, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @crystal_hz, align 4
  %322 = load i32, i32* %4, align 4
  %323 = call i32 @__cpuid(i32 21, i32 %319, i32 %320, i32 %321, i32 %322)
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %373

326:                                              ; preds = %318
  %327 = load i32, i32* @quiet, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %2, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i32, i32* @outf, align 4
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @crystal_hz, align 4
  %337 = call i32 (i32, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i32 %334, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %332, %329, %326
  %339 = load i32, i32* @crystal_hz, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %338
  %342 = load i32, i32* %7, align 4
  switch i32 %342, label %346 [
    i32 128, label %343
    i32 130, label %344
    i32 131, label %345
    i32 129, label %345
  ]

343:                                              ; preds = %341
  store i32 24000000, i32* @crystal_hz, align 4
  br label %347

344:                                              ; preds = %341
  store i32 25000000, i32* @crystal_hz, align 4
  br label %347

345:                                              ; preds = %341, %341
  store i32 19200000, i32* @crystal_hz, align 4
  br label %347

346:                                              ; preds = %341
  store i32 0, i32* @crystal_hz, align 4
  br label %347

347:                                              ; preds = %346, %345, %344, %343
  br label %348

348:                                              ; preds = %347, %338
  %349 = load i32, i32* @crystal_hz, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %372

351:                                              ; preds = %348
  %352 = load i32, i32* @crystal_hz, align 4
  %353 = sext i32 %352 to i64
  %354 = load i32, i32* %14, align 4
  %355 = zext i32 %354 to i64
  %356 = mul i64 %353, %355
  %357 = load i32, i32* %13, align 4
  %358 = zext i32 %357 to i64
  %359 = udiv i64 %356, %358
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* @tsc_hz, align 4
  %361 = load i32, i32* @quiet, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %371, label %363

363:                                              ; preds = %351
  %364 = load i32, i32* @outf, align 4
  %365 = load i32, i32* @tsc_hz, align 4
  %366 = sdiv i32 %365, 1000000
  %367 = load i32, i32* @crystal_hz, align 4
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %13, align 4
  %370 = call i32 (i32, i8*, ...) @fprintf(i32 %364, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i32 %366, i32 %367, i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %363, %351
  br label %372

372:                                              ; preds = %371, %348
  br label %373

373:                                              ; preds = %372, %318
  br label %374

374:                                              ; preds = %373, %315
  %375 = load i32, i32* @max_level, align 4
  %376 = icmp sge i32 %375, 22
  br i1 %376, label %377, label %392

377:                                              ; preds = %374
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %378 = load i32, i32* %15, align 4
  %379 = load i32, i32* %16, align 4
  %380 = load i32, i32* %17, align 4
  %381 = load i32, i32* %18, align 4
  %382 = call i32 @__cpuid(i32 22, i32 %378, i32 %379, i32 %380, i32 %381)
  %383 = load i32, i32* @quiet, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %391, label %385

385:                                              ; preds = %377
  %386 = load i32, i32* @outf, align 4
  %387 = load i32, i32* %15, align 4
  %388 = load i32, i32* %16, align 4
  %389 = load i32, i32* %17, align 4
  %390 = call i32 (i32, i8*, ...) @fprintf(i32 %386, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i32 %387, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %385, %377
  br label %392

392:                                              ; preds = %391, %374
  %393 = load i32, i32* @has_aperf, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* %7, align 4
  %398 = call i32 @get_aperf_mperf_multiplier(i32 %396, i32 %397)
  store i32 %398, i32* @aperf_mperf_multiplier, align 4
  br label %399

399:                                              ; preds = %395, %392
  %400 = load i32, i32* @BIC_IRQ, align 4
  %401 = call i32 @BIC_PRESENT(i32 %400)
  %402 = load i32, i32* @BIC_TSC_MHz, align 4
  %403 = call i32 @BIC_PRESENT(i32 %402)
  %404 = load i32, i32* %6, align 4
  %405 = load i32, i32* %7, align 4
  %406 = call i64 @probe_nhm_msrs(i32 %404, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %417

408:                                              ; preds = %399
  store i32 1, i32* @do_nhm_platform_info, align 4
  %409 = load i32, i32* @BIC_CPU_c1, align 4
  %410 = call i32 @BIC_PRESENT(i32 %409)
  %411 = load i32, i32* @BIC_CPU_c3, align 4
  %412 = call i32 @BIC_PRESENT(i32 %411)
  %413 = load i32, i32* @BIC_CPU_c6, align 4
  %414 = call i32 @BIC_PRESENT(i32 %413)
  %415 = load i32, i32* @BIC_SMI, align 4
  %416 = call i32 @BIC_PRESENT(i32 %415)
  br label %417

417:                                              ; preds = %408, %399
  %418 = load i32, i32* %6, align 4
  %419 = load i32, i32* %7, align 4
  %420 = call i8* @has_snb_msrs(i32 %418, i32 %419)
  store i8* %420, i8** @do_snb_cstates, align 8
  %421 = load i8*, i8** @do_snb_cstates, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = load i32, i32* @BIC_CPU_c7, align 4
  %425 = call i32 @BIC_PRESENT(i32 %424)
  br label %426

426:                                              ; preds = %423, %417
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %7, align 4
  %429 = call i8* @has_snb_msrs(i32 %427, i32 %428)
  store i8* %429, i8** @do_irtl_snb, align 8
  %430 = load i8*, i8** @do_snb_cstates, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %426
  %433 = load i64, i64* @pkg_cstate_limit, align 8
  %434 = load i64, i64* @PCL__2, align 8
  %435 = icmp sge i64 %433, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %432
  %437 = load i32, i32* @BIC_Pkgpc2, align 4
  %438 = call i32 @BIC_PRESENT(i32 %437)
  br label %439

439:                                              ; preds = %436, %432, %426
  %440 = load i64, i64* @pkg_cstate_limit, align 8
  %441 = load i64, i64* @PCL__3, align 8
  %442 = icmp sge i64 %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = load i32, i32* @BIC_Pkgpc3, align 4
  %445 = call i32 @BIC_PRESENT(i32 %444)
  br label %446

446:                                              ; preds = %443, %439
  %447 = load i64, i64* @pkg_cstate_limit, align 8
  %448 = load i64, i64* @PCL__6, align 8
  %449 = icmp sge i64 %447, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %446
  %451 = load i32, i32* @BIC_Pkgpc6, align 4
  %452 = call i32 @BIC_PRESENT(i32 %451)
  br label %453

453:                                              ; preds = %450, %446
  %454 = load i8*, i8** @do_snb_cstates, align 8
  %455 = icmp ne i8* %454, null
  br i1 %455, label %456, label %463

456:                                              ; preds = %453
  %457 = load i64, i64* @pkg_cstate_limit, align 8
  %458 = load i64, i64* @PCL__7, align 8
  %459 = icmp sge i64 %457, %458
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = load i32, i32* @BIC_Pkgpc7, align 4
  %462 = call i32 @BIC_PRESENT(i32 %461)
  br label %463

463:                                              ; preds = %460, %456, %453
  %464 = load i32, i32* %6, align 4
  %465 = load i32, i32* %7, align 4
  %466 = call i64 @has_slv_msrs(i32 %464, i32 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %463
  %469 = load i32, i32* @BIC_Pkgpc2, align 4
  %470 = call i32 @BIC_NOT_PRESENT(i32 %469)
  %471 = load i32, i32* @BIC_Pkgpc3, align 4
  %472 = call i32 @BIC_NOT_PRESENT(i32 %471)
  %473 = load i32, i32* @BIC_Pkgpc6, align 4
  %474 = call i32 @BIC_PRESENT(i32 %473)
  %475 = load i32, i32* @BIC_Pkgpc7, align 4
  %476 = call i32 @BIC_NOT_PRESENT(i32 %475)
  %477 = load i32, i32* @BIC_Mod_c6, align 4
  %478 = call i32 @BIC_PRESENT(i32 %477)
  store i32 1, i32* @use_c1_residency_msr, align 4
  br label %479

479:                                              ; preds = %468, %463
  %480 = load i32, i32* %6, align 4
  %481 = load i32, i32* %7, align 4
  %482 = call i64 @is_dnv(i32 %480, i32 %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %479
  %485 = load i32, i32* @BIC_CPU_c1, align 4
  %486 = call i32 @BIC_PRESENT(i32 %485)
  %487 = load i32, i32* @BIC_CPU_c3, align 4
  %488 = call i32 @BIC_NOT_PRESENT(i32 %487)
  %489 = load i32, i32* @BIC_Pkgpc3, align 4
  %490 = call i32 @BIC_NOT_PRESENT(i32 %489)
  %491 = load i32, i32* @BIC_CPU_c7, align 4
  %492 = call i32 @BIC_NOT_PRESENT(i32 %491)
  %493 = load i32, i32* @BIC_Pkgpc7, align 4
  %494 = call i32 @BIC_NOT_PRESENT(i32 %493)
  store i32 1, i32* @use_c1_residency_msr, align 4
  br label %495

495:                                              ; preds = %484, %479
  %496 = load i32, i32* %6, align 4
  %497 = load i32, i32* %7, align 4
  %498 = call i64 @is_skx(i32 %496, i32 %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %495
  %501 = load i32, i32* @BIC_CPU_c3, align 4
  %502 = call i32 @BIC_NOT_PRESENT(i32 %501)
  %503 = load i32, i32* @BIC_Pkgpc3, align 4
  %504 = call i32 @BIC_NOT_PRESENT(i32 %503)
  %505 = load i32, i32* @BIC_CPU_c7, align 4
  %506 = call i32 @BIC_NOT_PRESENT(i32 %505)
  %507 = load i32, i32* @BIC_Pkgpc7, align 4
  %508 = call i32 @BIC_NOT_PRESENT(i32 %507)
  br label %509

509:                                              ; preds = %500, %495
  %510 = load i32, i32* %6, align 4
  %511 = load i32, i32* %7, align 4
  %512 = call i64 @is_bdx(i32 %510, i32 %511)
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %519

514:                                              ; preds = %509
  %515 = load i32, i32* @BIC_CPU_c7, align 4
  %516 = call i32 @BIC_NOT_PRESENT(i32 %515)
  %517 = load i32, i32* @BIC_Pkgpc7, align 4
  %518 = call i32 @BIC_NOT_PRESENT(i32 %517)
  br label %519

519:                                              ; preds = %514, %509
  %520 = load i32, i32* %6, align 4
  %521 = load i32, i32* %7, align 4
  %522 = call i64 @has_c8910_msrs(i32 %520, i32 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %519
  %525 = load i32, i32* @BIC_Pkgpc8, align 4
  %526 = call i32 @BIC_PRESENT(i32 %525)
  %527 = load i32, i32* @BIC_Pkgpc9, align 4
  %528 = call i32 @BIC_PRESENT(i32 %527)
  %529 = load i32, i32* @BIC_Pkgpc10, align 4
  %530 = call i32 @BIC_PRESENT(i32 %529)
  br label %531

531:                                              ; preds = %524, %519
  %532 = load i32, i32* %6, align 4
  %533 = load i32, i32* %7, align 4
  %534 = call i64 @has_c8910_msrs(i32 %532, i32 %533)
  store i64 %534, i64* @do_irtl_hsw, align 8
  %535 = load i32, i32* %6, align 4
  %536 = load i32, i32* %7, align 4
  %537 = call i64 @has_skl_msrs(i32 %535, i32 %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %548

539:                                              ; preds = %531
  %540 = load i32, i32* @BIC_Totl_c0, align 4
  %541 = call i32 @BIC_PRESENT(i32 %540)
  %542 = load i32, i32* @BIC_Any_c0, align 4
  %543 = call i32 @BIC_PRESENT(i32 %542)
  %544 = load i32, i32* @BIC_GFX_c0, align 4
  %545 = call i32 @BIC_PRESENT(i32 %544)
  %546 = load i32, i32* @BIC_CPUGFX, align 4
  %547 = call i32 @BIC_PRESENT(i32 %546)
  br label %548

548:                                              ; preds = %539, %531
  %549 = load i32, i32* %6, align 4
  %550 = load i32, i32* %7, align 4
  %551 = call i64 @is_slm(i32 %549, i32 %550)
  store i64 %551, i64* @do_slm_cstates, align 8
  %552 = load i32, i32* %6, align 4
  %553 = load i32, i32* %7, align 4
  %554 = call i64 @is_knl(i32 %552, i32 %553)
  store i64 %554, i64* @do_knl_cstates, align 8
  %555 = load i64, i64* @do_slm_cstates, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %548
  %558 = load i64, i64* @do_knl_cstates, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %565, label %560

560:                                              ; preds = %557
  %561 = load i32, i32* %6, align 4
  %562 = load i32, i32* %7, align 4
  %563 = call i64 @is_cnl(i32 %561, i32 %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %560, %557, %548
  %566 = load i32, i32* @BIC_CPU_c3, align 4
  %567 = call i32 @BIC_NOT_PRESENT(i32 %566)
  br label %568

568:                                              ; preds = %565, %560
  %569 = load i32, i32* @quiet, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %568
  %572 = call i32 (...) @decode_misc_pwr_mgmt_msr()
  br label %573

573:                                              ; preds = %571, %568
  %574 = load i32, i32* @quiet, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %583, label %576

576:                                              ; preds = %573
  %577 = load i32, i32* %6, align 4
  %578 = load i32, i32* %7, align 4
  %579 = call i64 @has_slv_msrs(i32 %577, i32 %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = call i32 (...) @decode_c6_demotion_policy_msr()
  br label %583

583:                                              ; preds = %581, %576, %573
  %584 = load i32, i32* %6, align 4
  %585 = load i32, i32* %7, align 4
  %586 = call i32 @rapl_probe(i32 %584, i32 %585)
  %587 = load i32, i32* %6, align 4
  %588 = load i32, i32* %7, align 4
  %589 = call i32 @perf_limit_reasons_probe(i32 %587, i32 %588)
  %590 = load i32, i32* %6, align 4
  %591 = load i32, i32* %7, align 4
  %592 = call i32 @automatic_cstate_conversion_probe(i32 %590, i32 %591)
  %593 = load i32, i32* @quiet, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %599, label %595

595:                                              ; preds = %583
  %596 = load i32, i32* %6, align 4
  %597 = load i32, i32* %7, align 4
  %598 = call i32 @dump_cstate_pstate_config_info(i32 %596, i32 %597)
  br label %599

599:                                              ; preds = %595, %583
  %600 = load i32, i32* @quiet, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %599
  %603 = call i32 (...) @dump_sysfs_cstate_config()
  br label %604

604:                                              ; preds = %602, %599
  %605 = load i32, i32* @quiet, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %609, label %607

607:                                              ; preds = %604
  %608 = call i32 (...) @dump_sysfs_pstate_config()
  br label %609

609:                                              ; preds = %607, %604
  %610 = load i32, i32* %6, align 4
  %611 = load i32, i32* %7, align 4
  %612 = call i64 @has_skl_msrs(i32 %610, i32 %611)
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %616

614:                                              ; preds = %609
  %615 = call i32 (...) @calculate_tsc_tweak()
  br label %616

616:                                              ; preds = %614, %609
  %617 = load i32, i32* @R_OK, align 4
  %618 = call i32 @access(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i32 %617)
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %623, label %620

620:                                              ; preds = %616
  %621 = load i32, i32* @BIC_GFX_rc6, align 4
  %622 = call i32 @BIC_PRESENT(i32 %621)
  br label %623

623:                                              ; preds = %620, %616
  %624 = load i32, i32* @R_OK, align 4
  %625 = call i32 @access(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0), i32 %624)
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %630, label %627

627:                                              ; preds = %623
  %628 = load i32, i32* @BIC_GFXMHz, align 4
  %629 = call i32 @BIC_PRESENT(i32 %628)
  br label %630

630:                                              ; preds = %627, %623
  %631 = load i32, i32* @R_OK, align 4
  %632 = call i32 @access(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.24, i64 0, i64 0), i32 %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %637, label %634

634:                                              ; preds = %630
  %635 = load i32, i32* @BIC_CPU_LPI, align 4
  %636 = call i32 @BIC_PRESENT(i32 %635)
  br label %640

637:                                              ; preds = %630
  %638 = load i32, i32* @BIC_CPU_LPI, align 4
  %639 = call i32 @BIC_NOT_PRESENT(i32 %638)
  br label %640

640:                                              ; preds = %637, %634
  %641 = load i32, i32* @R_OK, align 4
  %642 = call i32 @access(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0), i32 %641)
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %647, label %644

644:                                              ; preds = %640
  %645 = load i32, i32* @BIC_SYS_LPI, align 4
  %646 = call i32 @BIC_PRESENT(i32 %645)
  br label %650

647:                                              ; preds = %640
  %648 = load i32, i32* @BIC_SYS_LPI, align 4
  %649 = call i32 @BIC_NOT_PRESENT(i32 %648)
  br label %650

650:                                              ; preds = %647, %644
  %651 = load i32, i32* @quiet, align 4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %655, label %653

653:                                              ; preds = %650
  %654 = call i32 (...) @decode_misc_feature_control()
  br label %655

655:                                              ; preds = %653, %650
  ret void
}

declare dso_local i32 @__cpuid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @intel_model_duplicates(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @BIC_PRESENT(i32) #1

declare dso_local i32 @decode_misc_enable_msr(...) #1

declare dso_local i32 @__cpuid_count(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @decode_feature_control_msr(...) #1

declare dso_local i32 @get_aperf_mperf_multiplier(i32, i32) #1

declare dso_local i64 @probe_nhm_msrs(i32, i32) #1

declare dso_local i8* @has_snb_msrs(i32, i32) #1

declare dso_local i64 @has_slv_msrs(i32, i32) #1

declare dso_local i32 @BIC_NOT_PRESENT(i32) #1

declare dso_local i64 @is_dnv(i32, i32) #1

declare dso_local i64 @is_skx(i32, i32) #1

declare dso_local i64 @is_bdx(i32, i32) #1

declare dso_local i64 @has_c8910_msrs(i32, i32) #1

declare dso_local i64 @has_skl_msrs(i32, i32) #1

declare dso_local i64 @is_slm(i32, i32) #1

declare dso_local i64 @is_knl(i32, i32) #1

declare dso_local i64 @is_cnl(i32, i32) #1

declare dso_local i32 @decode_misc_pwr_mgmt_msr(...) #1

declare dso_local i32 @decode_c6_demotion_policy_msr(...) #1

declare dso_local i32 @rapl_probe(i32, i32) #1

declare dso_local i32 @perf_limit_reasons_probe(i32, i32) #1

declare dso_local i32 @automatic_cstate_conversion_probe(i32, i32) #1

declare dso_local i32 @dump_cstate_pstate_config_info(i32, i32) #1

declare dso_local i32 @dump_sysfs_cstate_config(...) #1

declare dso_local i32 @dump_sysfs_pstate_config(...) #1

declare dso_local i32 @calculate_tsc_tweak(...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @decode_misc_feature_control(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
