; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c___func_imm_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c___func_imm_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_cbs = type { i8* (i32, %struct.bpf_insn*, i64)*, i32 }
%struct.bpf_insn = type opaque
%struct.bpf_insn.0 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_insn_cbs*, %struct.bpf_insn.0*, i64, i8*, i64)* @__func_imm_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__func_imm_name(%struct.bpf_insn_cbs* %0, %struct.bpf_insn.0* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpf_insn_cbs*, align 8
  %8 = alloca %struct.bpf_insn.0*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bpf_insn_cbs* %0, %struct.bpf_insn_cbs** %7, align 8
  store %struct.bpf_insn.0* %1, %struct.bpf_insn.0** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %7, align 8
  %13 = icmp ne %struct.bpf_insn_cbs* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %5
  %15 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %7, align 8
  %16 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %15, i32 0, i32 0
  %17 = load i8* (i32, %struct.bpf_insn*, i64)*, i8* (i32, %struct.bpf_insn*, i64)** %16, align 8
  %18 = icmp ne i8* (i32, %struct.bpf_insn*, i64)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %7, align 8
  %21 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %20, i32 0, i32 0
  %22 = load i8* (i32, %struct.bpf_insn*, i64)*, i8* (i32, %struct.bpf_insn*, i64)** %21, align 8
  %23 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %7, align 8
  %24 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %8, align 8
  %27 = bitcast %struct.bpf_insn.0* %26 to %struct.bpf_insn*
  %28 = load i64, i64* %9, align 8
  %29 = call i8* %22(i32 %25, %struct.bpf_insn* %27, i64 %28)
  store i8* %29, i8** %6, align 8
  br label %36

30:                                               ; preds = %14, %5
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %30, %19
  %37 = load i8*, i8** %6, align 8
  ret i8* %37
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
