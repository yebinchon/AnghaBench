; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_probe_prog_length.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_probe_prog_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i64, i64 }

@MAX_INSNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bpf_insn*)* @probe_prog_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @probe_prog_length(%struct.bpf_insn* %0) #0 {
  %2 = alloca %struct.bpf_insn*, align 8
  %3 = alloca i64, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %2, align 8
  %4 = load i32, i32* @MAX_INSNS, align 4
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load %struct.bpf_insn*, %struct.bpf_insn** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i64 %12
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i64 %19
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %10
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %3, align 8
  br label %7

29:                                               ; preds = %24, %7
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
