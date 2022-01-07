; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_raw_tp_writable_prog_is_valid_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_raw_tp_writable_prog_is_valid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_insn_access_aux = type { i32 }

@BPF_READ = common dso_local global i32 0, align 4
@PTR_TO_TP_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*)* @raw_tp_writable_prog_is_valid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_tp_writable_prog_is_valid_access(i32 %0, i32 %1, i32 %2, %struct.bpf_prog* %3, %struct.bpf_insn_access_aux* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.bpf_insn_access_aux*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bpf_prog* %3, %struct.bpf_prog** %10, align 8
  store %struct.bpf_insn_access_aux* %4, %struct.bpf_insn_access_aux** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BPF_READ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 0, i32* %6, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @PTR_TO_TP_BUFFER, align 4
  %25 = load %struct.bpf_insn_access_aux*, %struct.bpf_insn_access_aux** %11, align 8
  %26 = getelementptr inbounds %struct.bpf_insn_access_aux, %struct.bpf_insn_access_aux* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %32 = load %struct.bpf_insn_access_aux*, %struct.bpf_insn_access_aux** %11, align 8
  %33 = call i32 @raw_tp_prog_is_valid_access(i32 %28, i32 %29, i32 %30, %struct.bpf_prog* %31, %struct.bpf_insn_access_aux* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @raw_tp_prog_is_valid_access(i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
