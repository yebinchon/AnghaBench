; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_insn_zext.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_insn_zext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_reg_state = type { i32 }

@DEF_NOT_SUBREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_reg_state*)* @mark_insn_zext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_insn_zext(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_reg_state*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %4, align 8
  %6 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DEF_NOT_SUBREG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @DEF_NOT_SUBREG, align 4
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
