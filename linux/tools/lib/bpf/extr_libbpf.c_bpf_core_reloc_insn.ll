; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_reloc_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_core_reloc_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { %struct.bpf_insn* }
%struct.bpf_insn = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i64 0, align 8
@BPF_ALU64 = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"prog '%s': patched insn #%d (ALU/ALU64) imm %d -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"prog '%s': trying to relocate unrecognized insn #%d, code:%x, src:%x, dst:%x, off:%x, imm:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, i32, i64, i64)* @bpf_core_reloc_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_core_reloc_insn(%struct.bpf_program* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_program*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = urem i64 %14, 24
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %94

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 24
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %25, i32 0, i32 0
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i64 %29
  store %struct.bpf_insn* %30, %struct.bpf_insn** %10, align 8
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @BPF_CLASS(i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @BPF_ALU, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %20
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @BPF_ALU64, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38, %20
  %43 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @BPF_SRC(i32 %45)
  %47 = load i64, i64* @BPF_K, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %94

52:                                               ; preds = %42
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %94

61:                                               ; preds = %52
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %66 = call i32 @bpf_program__title(%struct.bpf_program* %65, i32 0)
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i64 %68, i64 %69)
  br label %93

71:                                               ; preds = %38
  %72 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %73 = call i32 @bpf_program__title(%struct.bpf_program* %72, i32 0)
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @pr_warning(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %71, %58, %49, %17
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @bpf_program__title(%struct.bpf_program*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
