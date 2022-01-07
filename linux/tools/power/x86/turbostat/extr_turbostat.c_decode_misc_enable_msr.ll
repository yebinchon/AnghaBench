; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_misc_enable_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_misc_enable_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@genuine_intel = common dso_local global i32 0, align 4
@base_cpu = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"cpu%d: MSR_IA32_MISC_ENABLE: 0x%08llx (%sTCC %sEIST %sMWAIT %sPREFETCH %sTURBO)\0A\00", align 1
@MSR_IA32_MISC_ENABLE_TM1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"No-\00", align 1
@MSR_IA32_MISC_ENABLE_ENHANCED_SPEEDSTEP = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE_MWAIT = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE_PREFETCH_DISABLE = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE_TURBO_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_misc_enable_msr() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @genuine_intel, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %45

5:                                                ; preds = %0
  %6 = load i32, i32* @base_cpu, align 4
  %7 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %8 = call i32 @get_msr(i32 %6, i32 %7, i64* %1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %5
  %11 = load i32, i32* @outf, align 4
  %12 = load i32, i32* @base_cpu, align 4
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @MSR_IA32_MISC_ENABLE_TM1, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @MSR_IA32_MISC_ENABLE_ENHANCED_SPEEDSTEP, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @MSR_IA32_MISC_ENABLE_MWAIT, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @MSR_IA32_MISC_ENABLE_PREFETCH_DISABLE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %44 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13, i8* %19, i8* %25, i8* %31, i8* %37, i8* %43)
  br label %45

45:                                               ; preds = %4, %10, %5
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
