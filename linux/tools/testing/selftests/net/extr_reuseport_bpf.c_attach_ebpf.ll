; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_attach_ebpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_attach_ebpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32, i32, i32, i32, i32 }
%union.bpf_attr = type { i64 }

@attach_ebpf.bpf_log_buf = internal global [65536 x i8] zeroinitializer, align 16
@attach_ebpf.bpf_license = internal constant [4 x i8] c"GPL\00", align 1
@BPF_ALU64 = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_MOD = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_EXIT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@__NR_bpf = common dso_local global i32 0, align 4
@BPF_PROG_LOAD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ebpf error. log:\0A%s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_REUSEPORT_EBPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set SO_ATTACH_REUSEPORT_EBPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @attach_ebpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_ebpf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x %struct.bpf_insn], align 16
  %7 = alloca %union.bpf_attr, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  %10 = load i32, i32* @BPF_ALU64, align 4
  %11 = load i32, i32* @BPF_MOV, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BPF_X, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 1
  %16 = load i32, i32* @BPF_REG_6, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 2
  %18 = load i32, i32* @BPF_REG_1, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i64 1
  %22 = bitcast %struct.bpf_insn* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 20, i1 false)
  %23 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 0
  %24 = load i32, i32* @BPF_LD, align 4
  %25 = load i32, i32* @BPF_ABS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BPF_W, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i64 1
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 0
  %31 = load i32, i32* @BPF_ALU64, align 4
  %32 = load i32, i32* @BPF_MOD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BPF_K, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 1
  %37 = load i32, i32* @BPF_REG_0, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i64 1
  %43 = bitcast %struct.bpf_insn* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 20, i1 false)
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 0
  %45 = load i32, i32* @BPF_JMP, align 4
  %46 = load i32, i32* @BPF_EXIT, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %44, align 4
  %48 = call i32 @memset(%union.bpf_attr* %7, i32 0, i32 8)
  %49 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %50 = bitcast %union.bpf_attr* %7 to i32*
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %6, i64 0, i64 0
  %52 = call i32 @ARRAY_SIZE(%struct.bpf_insn* %51)
  %53 = bitcast %union.bpf_attr* %7 to i32*
  store i32 %52, i32* %53, align 8
  %54 = ptrtoint [4 x %struct.bpf_insn]* %6 to i64
  %55 = bitcast %union.bpf_attr* %7 to i64*
  store i64 %54, i64* %55, align 8
  %56 = bitcast %union.bpf_attr* %7 to i64*
  store i64 ptrtoint ([4 x i8]* @attach_ebpf.bpf_license to i64), i64* %56, align 8
  %57 = bitcast %union.bpf_attr* %7 to i64*
  store i64 ptrtoint ([65536 x i8]* @attach_ebpf.bpf_log_buf to i64), i64* %57, align 8
  %58 = bitcast %union.bpf_attr* %7 to i32*
  store i32 65536, i32* %58, align 8
  %59 = bitcast %union.bpf_attr* %7 to i32*
  store i32 1, i32* %59, align 8
  %60 = bitcast %union.bpf_attr* %7 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @__NR_bpf, align 4
  %62 = load i32, i32* @BPF_PROG_LOAD, align 4
  %63 = call i32 @syscall(i32 %61, i32 %62, %union.bpf_attr* %7, i32 8)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %2
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @attach_ebpf.bpf_log_buf, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %2
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SOL_SOCKET, align 4
  %72 = load i32, i32* @SO_ATTACH_REUSEPORT_EBPF, align 4
  %73 = call i64 @setsockopt(i32 %70, i32 %71, i32 %72, i32* %5, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @close(i32 %79)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.bpf_insn*) #2

declare dso_local i32 @syscall(i32, i32, %union.bpf_attr*, i32) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
