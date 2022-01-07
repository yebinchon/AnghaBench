; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_attach_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf_numa.c_attach_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32, i32, i32, i32, i32 }
%union.bpf_attr = type { i64 }

@attach_bpf.bpf_log_buf = internal global [65536 x i8] zeroinitializer, align 16
@attach_bpf.bpf_license = internal constant [1 x i8] zeroinitializer, align 1
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_FUNC_get_numa_node_id = common dso_local global i32 0, align 4
@BPF_EXIT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@__NR_bpf = common dso_local global i32 0, align 4
@BPF_PROG_LOAD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ebpf error. log:\0A%s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ATTACH_REUSEPORT_EBPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set SO_ATTACH_REUSEPORT_EBPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @attach_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_bpf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.bpf_insn], align 16
  %5 = alloca %union.bpf_attr, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 0
  %8 = load i32, i32* @BPF_JMP, align 4
  %9 = load i32, i32* @BPF_CALL, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i32 0, i32 4
  %15 = load i32, i32* @BPF_FUNC_get_numa_node_id, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %6, i64 1
  %17 = bitcast %struct.bpf_insn* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 20, i1 false)
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i32 0, i32 0
  %19 = load i32, i32* @BPF_JMP, align 4
  %20 = load i32, i32* @BPF_EXIT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = call i32 @memset(%union.bpf_attr* %5, i32 0, i32 8)
  %23 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %24 = bitcast %union.bpf_attr* %5 to i32*
  store i32 %23, i32* %24, align 8
  %25 = bitcast %union.bpf_attr* %5 to i32*
  store i32 2, i32* %25, align 8
  %26 = ptrtoint [2 x %struct.bpf_insn]* %4 to i64
  %27 = bitcast %union.bpf_attr* %5 to i64*
  store i64 %26, i64* %27, align 8
  %28 = bitcast %union.bpf_attr* %5 to i64*
  store i64 ptrtoint ([1 x i8]* @attach_bpf.bpf_license to i64), i64* %28, align 8
  %29 = bitcast %union.bpf_attr* %5 to i64*
  store i64 ptrtoint ([65536 x i8]* @attach_bpf.bpf_log_buf to i64), i64* %29, align 8
  %30 = bitcast %union.bpf_attr* %5 to i32*
  store i32 65536, i32* %30, align 8
  %31 = bitcast %union.bpf_attr* %5 to i32*
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @__NR_bpf, align 4
  %33 = load i32, i32* @BPF_PROG_LOAD, align 4
  %34 = call i32 @syscall(i32 %32, i32 %33, %union.bpf_attr* %5, i32 8)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @attach_bpf.bpf_log_buf, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SOL_SOCKET, align 4
  %43 = load i32, i32* @SO_ATTACH_REUSEPORT_EBPF, align 4
  %44 = call i64 @setsockopt(i32 %41, i32 %42, i32 %43, i32* %3, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @close(i32 %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #2

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
