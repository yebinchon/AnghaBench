; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_feature_control_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_decode_feature_control_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_cpu = common dso_local global i32 0, align 4
@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cpu%d: MSR_IA32_FEATURE_CONTROL: 0x%08llx (%sLocked %s)\0A\00", align 1
@FEATURE_CONTROL_LOCKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"UN-\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SGX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_feature_control_msr() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @base_cpu, align 4
  %3 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %4 = call i32 @get_msr(i32 %2, i32 %3, i64* %1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @outf, align 4
  %8 = load i32, i32* @base_cpu, align 4
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @FEATURE_CONTROL_LOCKED, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i64, i64* %1, align 8
  %17 = and i64 %16, 262144
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9, i8* %15, i8* %20)
  br label %22

22:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @get_msr(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
