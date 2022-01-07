; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_check_pos.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_check_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { i64, i64 }

@BPF_LOADER_ERRNO__PROLOGUE2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*)* @check_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pos(%struct.bpf_insn_pos* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_insn_pos*, align 8
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %3, align 8
  %4 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_insn_pos, %struct.bpf_insn_pos* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUE2BIG, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
