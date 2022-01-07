; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@genuine_intel = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CPUID(0): %.4s%.4s%.4s \00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"%d CPUID levels; family:model:stepping 0x%x:%x:%x (%d:%d:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CPUID(1): %s %s %s %s %s %s %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SSE3\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MONITOR\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"EIST\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"TM2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"TSC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MSR\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ACPI-TM\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"CPUID: no MSR\00", align 1
@has_hwp_notify = common dso_local global i32 0, align 4
@has_hwp_activity_window = common dso_local global i32 0, align 4
@has_hwp_epp = common dso_local global i32 0, align 4
@has_hwp_request_pkg = common dso_local global i32 0, align 4
@update_hwp_use_pkg = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [48 x i8] c"--hwp-use-pkg is not available on this hardware\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"CPUID(6): %sTURBO, %sHWP, %sHWPnotify, %sHWPwindow, %sHWPepp, %sHWPpkg, %sEPB\0A\00", align 1
@turbo_is_enabled = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"No-\00", align 1
@has_hwp = common dso_local global i64 0, align 8
@has_epb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_cpuid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  %10 = call i32 @get_cpuid_or_exit(i32 0, i32* %5, i32* %2, i32* %3, i32* %4)
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 1970169159
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1231384169
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 1818588270
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* @genuine_intel, align 4
  br label %20

20:                                               ; preds = %19, %16, %13, %0
  %21 = load i64, i64* @debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = bitcast i32* %2 to i8*
  %26 = bitcast i32* %4 to i8*
  %27 = bitcast i32* %3 to i8*
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = call i32 @get_cpuid_or_exit(i32 1, i32* %6, i32* %2, i32* %3, i32* %4)
  %31 = load i32, i32* %6, align 4
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 15
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 15
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %29
  %45 = load i32, i32* %6, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 15
  %48 = shl i32 %47, 4
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i64, i64* @debug, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %51
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 8
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, 256
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 16
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 4194304
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, 536870912
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %74, i8* %79, i8* %84, i8* %89, i8* %94, i8* %99, i8* %104)
  br label %106

106:                                              ; preds = %54, %51
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, 32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %106
  %113 = call i32 @get_cpuid_or_exit(i32 6, i32* %1, i32* %2, i32* %3, i32* %4)
  %114 = load i32, i32* %1, align 4
  %115 = and i32 %114, 256
  store i32 %115, i32* @has_hwp_notify, align 4
  %116 = load i32, i32* %1, align 4
  %117 = and i32 %116, 512
  store i32 %117, i32* @has_hwp_activity_window, align 4
  %118 = load i32, i32* %1, align 4
  %119 = and i32 %118, 1024
  store i32 %119, i32* @has_hwp_epp, align 4
  %120 = load i32, i32* %1, align 4
  %121 = and i32 %120, 2048
  store i32 %121, i32* @has_hwp_request_pkg, align 4
  %122 = load i32, i32* @has_hwp_request_pkg, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %112
  %125 = load i64, i64* @update_hwp_use_pkg, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %124, %112
  %130 = load i64, i64* @debug, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = load i32, i32* @stderr, align 4
  %134 = load i64, i64* @turbo_is_enabled, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %138 = load i64, i64* @has_hwp, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %142 = load i32, i32* @has_hwp_notify, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %146 = load i32, i32* @has_hwp_activity_window, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %150 = load i32, i32* @has_hwp_epp, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %154 = load i32, i32* @has_hwp_request_pkg, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %158 = load i64, i64* @has_epb, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0), i8* %137, i8* %141, i8* %145, i8* %149, i8* %153, i8* %157, i8* %161)
  br label %163

163:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @get_cpuid_or_exit(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
