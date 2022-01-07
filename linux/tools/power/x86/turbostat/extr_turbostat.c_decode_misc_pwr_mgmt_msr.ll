; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_misc_pwr_mgmt_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_misc_pwr_mgmt_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_nhm_platform_info = common dso_local global i32 0, align 4
@no_MSR_MISC_PWR_MGMT = common dso_local global i64 0, align 8
@base_cpu = common dso_local global i32 0, align 4
@MSR_MISC_PWR_MGMT = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"cpu%d: MSR_MISC_PWR_MGMT: 0x%08llx (%sable-EIST_Coordination %sable-EPB %sable-OOB)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DIS\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_misc_pwr_mgmt_msr() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @do_nhm_platform_info, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %34

5:                                                ; preds = %0
  %6 = load i64, i64* @no_MSR_MISC_PWR_MGMT, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %34

9:                                                ; preds = %5
  %10 = load i32, i32* @base_cpu, align 4
  %11 = load i32, i32* @MSR_MISC_PWR_MGMT, align 4
  %12 = call i32 @get_msr(i32 %10, i32 %11, i64* %1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @outf, align 4
  %16 = load i32, i32* @base_cpu, align 4
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i64, i64* %1, align 8
  %24 = and i64 %23, 2
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %28 = load i64, i64* %1, align 8
  %29 = and i64 %28, 256
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %33 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i8* %22, i8* %27, i8* %32)
  br label %34

34:                                               ; preds = %4, %8, %14, %9
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
