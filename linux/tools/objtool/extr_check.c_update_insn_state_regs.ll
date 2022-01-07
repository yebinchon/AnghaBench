; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_update_insn_state_regs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_update_insn_state_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instruction = type { %struct.stack_op }
%struct.stack_op = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.insn_state = type { %struct.cfi_reg }
%struct.cfi_reg = type { i64, i32 }

@CFI_SP = common dso_local global i64 0, align 8
@OP_DEST_PUSH = common dso_local global i64 0, align 8
@OP_DEST_PUSHF = common dso_local global i64 0, align 8
@OP_SRC_POP = common dso_local global i64 0, align 8
@OP_SRC_POPF = common dso_local global i64 0, align 8
@OP_DEST_REG = common dso_local global i64 0, align 8
@OP_SRC_ADD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instruction*, %struct.insn_state*)* @update_insn_state_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_insn_state_regs(%struct.instruction* %0, %struct.insn_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.instruction*, align 8
  %5 = alloca %struct.insn_state*, align 8
  %6 = alloca %struct.cfi_reg*, align 8
  %7 = alloca %struct.stack_op*, align 8
  store %struct.instruction* %0, %struct.instruction** %4, align 8
  store %struct.insn_state* %1, %struct.insn_state** %5, align 8
  %8 = load %struct.insn_state*, %struct.insn_state** %5, align 8
  %9 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %8, i32 0, i32 0
  store %struct.cfi_reg* %9, %struct.cfi_reg** %6, align 8
  %10 = load %struct.instruction*, %struct.instruction** %4, align 8
  %11 = getelementptr inbounds %struct.instruction, %struct.instruction* %10, i32 0, i32 0
  store %struct.stack_op* %11, %struct.stack_op** %7, align 8
  %12 = load %struct.cfi_reg*, %struct.cfi_reg** %6, align 8
  %13 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CFI_SP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %20 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OP_DEST_PUSH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %27 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OP_DEST_PUSHF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25, %18
  %33 = load %struct.cfi_reg*, %struct.cfi_reg** %6, align 8
  %34 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 8
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %39 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OP_SRC_POP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %46 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OP_SRC_POPF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44, %37
  %52 = load %struct.cfi_reg*, %struct.cfi_reg** %6, align 8
  %53 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 8
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %58 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @OP_DEST_REG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %65 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OP_SRC_ADD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %72 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CFI_SP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %79 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CFI_SP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.stack_op*, %struct.stack_op** %7, align 8
  %86 = getelementptr inbounds %struct.stack_op, %struct.stack_op* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cfi_reg*, %struct.cfi_reg** %6, align 8
  %90 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %84, %77, %70, %63, %56
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
