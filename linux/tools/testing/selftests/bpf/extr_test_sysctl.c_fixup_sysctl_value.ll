; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_fixup_sysctl_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_fixup_sysctl_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32, i8* }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Value is too big (%zd) to use in fixup\00", align 1
@BPF_LD = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can fixup only BPF_LD_IMM64 insns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.bpf_insn*, i64)* @fixup_sysctl_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_sysctl_value(i8* %0, i64 %1, %struct.bpf_insn* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.anon, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = bitcast %union.anon* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 -1, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i64 %19
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BPF_LD, align 4
  %24 = load i32, i32* @BPF_DW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BPF_IMM, align 4
  %27 = or i32 %25, %26
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %55

31:                                               ; preds = %17
  %32 = bitcast %union.anon* %10 to [4 x i32]*
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i32* %33, i8* %34, i64 %35)
  %37 = bitcast %union.anon* %10 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %41, i64 %42
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %43, i32 0, i32 1
  store i8* %40, i8** %44, align 8
  %45 = bitcast %union.anon* %10 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %50, i64 %52
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %31, %29, %14
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @log_err(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
