; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_is_sibling_call.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_is_sibling_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instruction = type { i64, i32, i32 }

@INSN_JUMP_DYNAMIC = common dso_local global i64 0, align 8
@INSN_JUMP_CONDITIONAL = common dso_local global i64 0, align 8
@INSN_JUMP_UNCONDITIONAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instruction*)* @is_sibling_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sibling_call(%struct.instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.instruction*, align 8
  store %struct.instruction* %0, %struct.instruction** %3, align 8
  %4 = load %struct.instruction*, %struct.instruction** %3, align 8
  %5 = getelementptr inbounds %struct.instruction, %struct.instruction* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INSN_JUMP_DYNAMIC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.instruction*, %struct.instruction** %3, align 8
  %11 = getelementptr inbounds %struct.instruction, %struct.instruction* %10, i32 0, i32 2
  %12 = call i32 @list_empty(i32* %11)
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.instruction*, %struct.instruction** %3, align 8
  %15 = getelementptr inbounds %struct.instruction, %struct.instruction* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INSN_JUMP_CONDITIONAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.instruction*, %struct.instruction** %3, align 8
  %21 = getelementptr inbounds %struct.instruction, %struct.instruction* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INSN_JUMP_UNCONDITIONAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %19, %13
  %27 = load %struct.instruction*, %struct.instruction** %3, align 8
  %28 = getelementptr inbounds %struct.instruction, %struct.instruction* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
