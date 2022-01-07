; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_prologue_relocate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_prologue_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { %struct.bpf_insn*, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32 }

@BPF_LOADER_ERRNO__PROLOGUE2BIG = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"bpf prologue: internal error: relocation failed\0A\00", align 1
@BPF_LOADER_ERRNO__PROLOGUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_insn*)* @prologue_relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prologue_relocate(%struct.bpf_insn_pos* %0, %struct.bpf_insn* %1, %struct.bpf_insn* %2, %struct.bpf_insn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn_pos*, align 8
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %6, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %7, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %8, align 8
  store %struct.bpf_insn* %3, %struct.bpf_insn** %9, align 8
  %14 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %6, align 8
  %15 = call i64 @check_pos(%struct.bpf_insn_pos* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUE2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %77

20:                                               ; preds = %4
  %21 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %21, i32 0, i32 1
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %22, align 8
  store %struct.bpf_insn* %23, %struct.bpf_insn** %10, align 8
  br label %24

24:                                               ; preds = %73, %20
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %26 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %26, i32 0, i32 0
  %28 = load %struct.bpf_insn*, %struct.bpf_insn** %27, align 8
  %29 = icmp ult %struct.bpf_insn* %25, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @BPF_CLASS(i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @BPF_JMP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %73

39:                                               ; preds = %30
  %40 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @BPF_OP(i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @BPF_CALL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %73

48:                                               ; preds = %39
  %49 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %58 [
    i32 130, label %52
    i32 129, label %54
    i32 128, label %56
  ]

52:                                               ; preds = %48
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  store %struct.bpf_insn* %53, %struct.bpf_insn** %11, align 8
  br label %62

54:                                               ; preds = %48
  %55 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  store %struct.bpf_insn* %55, %struct.bpf_insn** %11, align 8
  br label %62

56:                                               ; preds = %48
  %57 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  store %struct.bpf_insn* %57, %struct.bpf_insn** %11, align 8
  br label %62

58:                                               ; preds = %48
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %77

62:                                               ; preds = %56, %54, %52
  %63 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %64 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %64, i64 1
  %66 = ptrtoint %struct.bpf_insn* %63 to i64
  %67 = ptrtoint %struct.bpf_insn* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %72 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %47, %38
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i32 1
  store %struct.bpf_insn* %75, %struct.bpf_insn** %10, align 8
  br label %24

76:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %58, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @check_pos(%struct.bpf_insn_pos*) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
