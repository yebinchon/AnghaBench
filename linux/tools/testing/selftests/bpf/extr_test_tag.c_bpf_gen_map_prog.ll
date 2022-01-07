; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_bpf_gen_map_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_bpf_gen_map_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }

@BPF_REG_10 = common dso_local global i32 0, align 4
@prog = common dso_local global i32* null, align 8
@BPF_MOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @bpf_gen_map_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_gen_map_prog(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.bpf_insn], align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = getelementptr inbounds [1 x %struct.bpf_insn], [1 x %struct.bpf_insn]* %7, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @BPF_REG_10, align 4
  %18 = srem i32 %15, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BPF_LD_MAP_FD(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** @prog, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = getelementptr inbounds [1 x %struct.bpf_insn], [1 x %struct.bpf_insn]* %7, i64 0, i64 0
  %27 = call i32 @memcpy(i32* %25, %struct.bpf_insn* %26, i32 4)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  %33 = urem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* @BPF_MOV, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BPF_REG_10, align 4
  %39 = srem i32 %37, %38
  %40 = call i32 @BPF_ALU64_IMM(i32 %36, i32 %39, i32 42)
  %41 = load i32*, i32** @prog, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sub i32 %42, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %31
  %47 = call i32 (...) @BPF_EXIT_INSN()
  %48 = load i32*, i32** @prog, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  ret void
}

declare dso_local i32 @BPF_LD_MAP_FD(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.bpf_insn*, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
