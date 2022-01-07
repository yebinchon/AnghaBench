; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c_print_bpf_end_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c_print_bpf_end_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"(%02x) r%d = %s%d r%d\0A\00", align 1
@BPF_TO_BE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i8*, i32, i32, i8*, i32, i32)*, i8*, %struct.bpf_insn*)* @print_bpf_end_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bpf_end_insn(i32 (i8*, i8*, i32, i32, i8*, i32, i32)* %0, i8* %1, %struct.bpf_insn* %2) #0 {
  %4 = alloca i32 (i8*, i8*, i32, i32, i8*, i32, i32)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  store i32 (i8*, i8*, i32, i32, i8*, i32, i32)* %0, i32 (i8*, i8*, i32, i32, i8*, i32, i32)** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %6, align 8
  %7 = load i32 (i8*, i8*, i32, i32, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32, i8*, i32, i32)** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %10 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @BPF_SRC(i32 %17)
  %19 = load i64, i64* @BPF_TO_BE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %7(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i8* %22, i32 %25, i32 %28)
  ret void
}

declare dso_local i64 @BPF_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
