; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_c6_demotion_policy_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_c6_demotion_policy_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_CC6_DEMOTION_POLICY_CONFIG = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"cpu%d: MSR_CC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-CC6-Demotion)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DIS\00", align 1
@MSR_MC6_DEMOTION_POLICY_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"cpu%d: MSR_MC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-MC6-Demotion)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_c6_demotion_policy_msr() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @base_cpu, align 4
  %3 = load i32, i32* @MSR_CC6_DEMOTION_POLICY_CONFIG, align 4
  %4 = call i32 @get_msr(i32 %2, i32 %3, i64* %1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @outf, align 4
  %8 = load i32, i32* @base_cpu, align 4
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = and i64 %10, 1
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9, i8* %14)
  br label %16

16:                                               ; preds = %6, %0
  %17 = load i32, i32* @base_cpu, align 4
  %18 = load i32, i32* @MSR_MC6_DEMOTION_POLICY_CONFIG, align 4
  %19 = call i32 @get_msr(i32 %17, i32 %18, i64* %1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @outf, align 4
  %23 = load i32, i32* @base_cpu, align 4
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = and i64 %25, 1
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %23, i64 %24, i8* %29)
  br label %31

31:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
