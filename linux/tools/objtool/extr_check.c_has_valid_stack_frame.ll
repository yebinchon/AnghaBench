; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_has_valid_stack_frame.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_has_valid_stack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_state = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@CFI_BP = common dso_local global i64 0, align 8
@CFI_CFA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn_state*)* @has_valid_stack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_valid_stack_frame(%struct.insn_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn_state*, align 8
  store %struct.insn_state* %0, %struct.insn_state** %3, align 8
  %4 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %5 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CFI_BP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %12 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i64, i64* @CFI_BP, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFI_CFA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %22 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @CFI_BP, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -16
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %47

30:                                               ; preds = %20, %10, %1
  %31 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %32 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.insn_state*, %struct.insn_state** %3, align 8
  %37 = getelementptr inbounds %struct.insn_state, %struct.insn_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* @CFI_BP, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CFI_BP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %47

46:                                               ; preds = %35, %30
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
