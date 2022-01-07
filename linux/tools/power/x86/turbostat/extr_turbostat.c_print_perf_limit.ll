; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_perf_limit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_print_perf_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not migrate to CPU %d\0A\00", align 1
@do_core_perf_limit_reasons = common dso_local global i64 0, align 8
@MSR_CORE_PERF_LIMIT_REASONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cpu%d: MSR_CORE_PERF_LIMIT_REASONS, 0x%08llx\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c" (Active: %s%s%s%s%s%s%s%s%s%s%s%s%s%s)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bit15, \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bit14, \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Transitions, \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MultiCoreTurbo, \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"PkgPwrL2, \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PkgPwrL1, \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"CorePwr, \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Amps, \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"VR-Therm, \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Auto-HWP, \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Graphics, \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"bit2, \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ThermStatus, \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"PROCHOT, \00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" (Logged: %s%s%s%s%s%s%s%s%s%s%s%s%s%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"bit31, \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"bit30, \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"bit18, \00", align 1
@do_gfx_perf_limit_reasons = common dso_local global i64 0, align 8
@MSR_GFX_PERF_LIMIT_REASONS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [44 x i8] c"cpu%d: MSR_GFX_PERF_LIMIT_REASONS, 0x%08llx\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c" (Active: %s%s%s%s%s%s%s%s)\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"GFXPwr, \00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c" (Logged: %s%s%s%s%s%s%s%s)\0A\00", align 1
@do_ring_perf_limit_reasons = common dso_local global i64 0, align 8
@MSR_RING_PERF_LIMIT_REASONS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [45 x i8] c"cpu%d: MSR_RING_PERF_LIMIT_REASONS, 0x%08llx\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c" (Active: %s%s%s%s%s%s)\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c" (Logged: %s%s%s%s%s%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_perf_limit(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  %10 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %11 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %14 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %21 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %361

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @cpu_migrate(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @outf, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %4, align 4
  br label %361

35:                                               ; preds = %27
  %36 = load i64, i64* @do_core_perf_limit_reasons, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %190

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MSR_CORE_PERF_LIMIT_REASONS, align 4
  %41 = call i32 @get_msr(i32 %39, i32 %40, i64* %8)
  %42 = load i32, i32* @outf, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i32, i32* @outf, align 4
  %47 = load i64, i64* %8, align 8
  %48 = and i64 %47, 32768
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %52 = load i64, i64* %8, align 8
  %53 = and i64 %52, 16384
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %57 = load i64, i64* %8, align 8
  %58 = and i64 %57, 8192
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %62 = load i64, i64* %8, align 8
  %63 = and i64 %62, 4096
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %67 = load i64, i64* %8, align 8
  %68 = and i64 %67, 2048
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %72 = load i64, i64* %8, align 8
  %73 = and i64 %72, 1024
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %77 = load i64, i64* %8, align 8
  %78 = and i64 %77, 512
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %82 = load i64, i64* %8, align 8
  %83 = and i64 %82, 256
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %87 = load i64, i64* %8, align 8
  %88 = and i64 %87, 64
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %92 = load i64, i64* %8, align 8
  %93 = and i64 %92, 32
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %97 = load i64, i64* %8, align 8
  %98 = and i64 %97, 16
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %102 = load i64, i64* %8, align 8
  %103 = and i64 %102, 4
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %107 = load i64, i64* %8, align 8
  %108 = and i64 %107, 2
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %112 = load i64, i64* %8, align 8
  %113 = and i64 %112, 1
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %56, i8* %61, i8* %66, i8* %71, i8* %76, i8* %81, i8* %86, i8* %91, i8* %96, i8* %101, i8* %106, i8* %111, i8* %116)
  %118 = load i32, i32* @outf, align 4
  %119 = load i64, i64* %8, align 8
  %120 = and i64 %119, -2147483648
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %124 = load i64, i64* %8, align 8
  %125 = and i64 %124, 1073741824
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %129 = load i64, i64* %8, align 8
  %130 = and i64 %129, 536870912
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %134 = load i64, i64* %8, align 8
  %135 = and i64 %134, 268435456
  %136 = icmp ne i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %139 = load i64, i64* %8, align 8
  %140 = and i64 %139, 134217728
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %144 = load i64, i64* %8, align 8
  %145 = and i64 %144, 67108864
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %149 = load i64, i64* %8, align 8
  %150 = and i64 %149, 33554432
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %154 = load i64, i64* %8, align 8
  %155 = and i64 %154, 16777216
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %159 = load i64, i64* %8, align 8
  %160 = and i64 %159, 4194304
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %164 = load i64, i64* %8, align 8
  %165 = and i64 %164, 2097152
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %169 = load i64, i64* %8, align 8
  %170 = and i64 %169, 1048576
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %174 = load i64, i64* %8, align 8
  %175 = and i64 %174, 262144
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %179 = load i64, i64* %8, align 8
  %180 = and i64 %179, 131072
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %184 = load i64, i64* %8, align 8
  %185 = and i64 %184, 65536
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i8* %123, i8* %128, i8* %133, i8* %138, i8* %143, i8* %148, i8* %153, i8* %158, i8* %163, i8* %168, i8* %173, i8* %178, i8* %183, i8* %188)
  br label %190

190:                                              ; preds = %38, %35
  %191 = load i64, i64* @do_gfx_perf_limit_reasons, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %285

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @MSR_GFX_PERF_LIMIT_REASONS, align 4
  %196 = call i32 @get_msr(i32 %194, i32 %195, i64* %8)
  %197 = load i32, i32* @outf, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i64, i64* %8, align 8
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i32 %198, i64 %199)
  %201 = load i32, i32* @outf, align 4
  %202 = load i64, i64* %8, align 8
  %203 = and i64 %202, 1
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %207 = load i64, i64* %8, align 8
  %208 = and i64 %207, 2
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %212 = load i64, i64* %8, align 8
  %213 = and i64 %212, 16
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %217 = load i64, i64* %8, align 8
  %218 = and i64 %217, 64
  %219 = icmp ne i64 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %222 = load i64, i64* %8, align 8
  %223 = and i64 %222, 256
  %224 = icmp ne i64 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %227 = load i64, i64* %8, align 8
  %228 = and i64 %227, 512
  %229 = icmp ne i64 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %232 = load i64, i64* %8, align 8
  %233 = and i64 %232, 1024
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %237 = load i64, i64* %8, align 8
  %238 = and i64 %237, 2048
  %239 = icmp ne i64 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* %206, i8* %211, i8* %216, i8* %221, i8* %226, i8* %231, i8* %236, i8* %241)
  %243 = load i32, i32* @outf, align 4
  %244 = load i64, i64* %8, align 8
  %245 = and i64 %244, 65536
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %249 = load i64, i64* %8, align 8
  %250 = and i64 %249, 131072
  %251 = icmp ne i64 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %254 = load i64, i64* %8, align 8
  %255 = and i64 %254, 1048576
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %259 = load i64, i64* %8, align 8
  %260 = and i64 %259, 4194304
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %264 = load i64, i64* %8, align 8
  %265 = and i64 %264, 16777216
  %266 = icmp ne i64 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %269 = load i64, i64* %8, align 8
  %270 = and i64 %269, 33554432
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %274 = load i64, i64* %8, align 8
  %275 = and i64 %274, 67108864
  %276 = icmp ne i64 %275, 0
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %279 = load i64, i64* %8, align 8
  %280 = and i64 %279, 134217728
  %281 = icmp ne i64 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %284 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %248, i8* %253, i8* %258, i8* %263, i8* %268, i8* %273, i8* %278, i8* %283)
  br label %285

285:                                              ; preds = %193, %190
  %286 = load i64, i64* @do_ring_perf_limit_reasons, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %360

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @MSR_RING_PERF_LIMIT_REASONS, align 4
  %291 = call i32 @get_msr(i32 %289, i32 %290, i64* %8)
  %292 = load i32, i32* @outf, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load i64, i64* %8, align 8
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %292, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 %293, i64 %294)
  %296 = load i32, i32* @outf, align 4
  %297 = load i64, i64* %8, align 8
  %298 = and i64 %297, 1
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %302 = load i64, i64* %8, align 8
  %303 = and i64 %302, 2
  %304 = icmp ne i64 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %307 = load i64, i64* %8, align 8
  %308 = and i64 %307, 64
  %309 = icmp ne i64 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %312 = load i64, i64* %8, align 8
  %313 = and i64 %312, 256
  %314 = icmp ne i64 %313, 0
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %317 = load i64, i64* %8, align 8
  %318 = and i64 %317, 1024
  %319 = icmp ne i64 %318, 0
  %320 = zext i1 %319 to i64
  %321 = select i1 %319, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %322 = load i64, i64* %8, align 8
  %323 = and i64 %322, 2048
  %324 = icmp ne i64 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %327 = call i32 (i32, i8*, ...) @fprintf(i32 %296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %301, i8* %306, i8* %311, i8* %316, i8* %321, i8* %326)
  %328 = load i32, i32* @outf, align 4
  %329 = load i64, i64* %8, align 8
  %330 = and i64 %329, 65536
  %331 = icmp ne i64 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %334 = load i64, i64* %8, align 8
  %335 = and i64 %334, 131072
  %336 = icmp ne i64 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %339 = load i64, i64* %8, align 8
  %340 = and i64 %339, 4194304
  %341 = icmp ne i64 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %344 = load i64, i64* %8, align 8
  %345 = and i64 %344, 16777216
  %346 = icmp ne i64 %345, 0
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %349 = load i64, i64* %8, align 8
  %350 = and i64 %349, 67108864
  %351 = icmp ne i64 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %354 = load i64, i64* %8, align 8
  %355 = and i64 %354, 134217728
  %356 = icmp ne i64 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %328, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* %333, i8* %338, i8* %343, i8* %348, i8* %353, i8* %358)
  br label %360

360:                                              ; preds = %288, %285
  store i32 0, i32* %4, align 4
  br label %361

361:                                              ; preds = %360, %31, %26
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i64 @cpu_migrate(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
