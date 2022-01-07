; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_nhm_platform_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_nhm_platform_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cpu%d: MSR_PLATFORM_INFO: 0x%08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%d * %.1f = %.1f MHz max efficiency frequency\0A\00", align 1
@bclk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%d * %.1f = %.1f MHz base frequency\0A\00", align 1
@MSR_IA32_POWER_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"cpu%d: MSR_IA32_POWER_CTL: 0x%08llx (C1E auto-promotion: %sabled)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DIS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_nhm_platform_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_nhm_platform_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @base_cpu, align 4
  %4 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %5 = call i32 @get_msr(i32 %3, i32 %4, i64* %1)
  %6 = load i32, i32* @outf, align 4
  %7 = load i32, i32* @base_cpu, align 4
  %8 = load i64, i64* %1, align 8
  %9 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %8)
  %10 = load i64, i64* %1, align 8
  %11 = lshr i64 %10, 40
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @outf, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @bclk, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @bclk, align 4
  %20 = mul i32 %18, %19
  %21 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %15, i64 %17, i32 %20)
  %22 = load i64, i64* %1, align 8
  %23 = lshr i64 %22, 8
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @outf, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @bclk, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @bclk, align 4
  %32 = mul i32 %30, %31
  %33 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %27, i64 %29, i32 %32)
  %34 = load i32, i32* @base_cpu, align 4
  %35 = load i32, i32* @MSR_IA32_POWER_CTL, align 4
  %36 = call i32 @get_msr(i32 %34, i32 %35, i64* %1)
  %37 = load i32, i32* @outf, align 4
  %38 = load i32, i32* @base_cpu, align 4
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = and i64 %40, 2
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %45 = call i32 (i32, i8*, i32, i64, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %38, i64 %39, i8* %44)
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
