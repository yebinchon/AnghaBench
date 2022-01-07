; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_validate_call.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_validate_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instruction = type { i32, i32, i32 }
%struct.insn_state = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"call to %s() with UACCESS enabled\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"call to %s() with DF set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instruction*, %struct.insn_state*)* @validate_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_call(%struct.instruction* %0, %struct.insn_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.instruction*, align 8
  %5 = alloca %struct.insn_state*, align 8
  store %struct.instruction* %0, %struct.instruction** %4, align 8
  store %struct.insn_state* %1, %struct.insn_state** %5, align 8
  %6 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %7 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.instruction*, %struct.instruction** %4, align 8
  %12 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @func_uaccess_safe(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.instruction*, %struct.instruction** %4, align 8
  %18 = getelementptr inbounds %struct.instruction, %struct.instruction* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.instruction*, %struct.instruction** %4, align 8
  %21 = getelementptr inbounds %struct.instruction, %struct.instruction* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.instruction*, %struct.instruction** %4, align 8
  %24 = call i32 @call_dest_name(%struct.instruction* %23)
  %25 = call i32 @WARN_FUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %24)
  store i32 1, i32* %3, align 4
  br label %42

26:                                               ; preds = %10, %2
  %27 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %28 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.instruction*, %struct.instruction** %4, align 8
  %33 = getelementptr inbounds %struct.instruction, %struct.instruction* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.instruction*, %struct.instruction** %4, align 8
  %36 = getelementptr inbounds %struct.instruction, %struct.instruction* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.instruction*, %struct.instruction** %4, align 8
  %39 = call i32 @call_dest_name(%struct.instruction* %38)
  %40 = call i32 @WARN_FUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %39)
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @func_uaccess_safe(i32) #1

declare dso_local i32 @WARN_FUNC(i8*, i32, i32, i32) #1

declare dso_local i32 @call_dest_name(%struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
