; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_kprobe_prog_is_valid_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_kprobe_prog_is_valid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_insn_access_aux = type { i32 }

@BPF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*)* @kprobe_prog_is_valid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kprobe_prog_is_valid_access(i32 %0, i32 %1, i32 %2, %struct.bpf_prog* %3, %struct.bpf_insn_access_aux* %4) #0 {
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
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %5
  store i32 0, i32* %6, align 4
  br label %38

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BPF_READ, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %38

37:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %36, %29, %23, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
