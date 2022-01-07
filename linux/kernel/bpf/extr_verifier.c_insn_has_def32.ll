; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_insn_has_def32.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_insn_has_def32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_insn = type { i32 }

@DST_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @insn_has_def32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_has_def32(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %6 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %7 = call i64 @insn_no_def(%struct.bpf_insn* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DST_OP, align 4
  %17 = call i32 @is_reg64(%struct.bpf_verifier_env* %11, %struct.bpf_insn* %12, i32 %15, i32* null, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @insn_no_def(%struct.bpf_insn*) #1

declare dso_local i32 @is_reg64(%struct.bpf_verifier_env*, %struct.bpf_insn*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
