; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_raw_tp_writable_test_run.c_test_raw_tp_writable_test_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_raw_tp_writable_test_run.c_test_raw_tp_writable_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.bpf_load_program_attr = type { i8*, i32, i32, %struct.bpf_insn*, i32 }

@BPF_DW = common dso_local global i32 0, align 4
@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GPL v2\00", align 1
@BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bpf_raw_tracepoint_writable loaded\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed: %d errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"test_program_loaded\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bpf_test_finish\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"bpf_raw_tracepoint_writable opened\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"test_run\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"tracepoint did not modify return value\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"test_run_ret\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"socket_filter did not return 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"test_run_notrace\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"test_run failed with %d errno %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"test_run_ret_notrace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_raw_tp_writable_test_run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [5 x %struct.bpf_insn], align 16
  %4 = alloca %struct.bpf_load_program_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.bpf_insn], align 4
  %7 = alloca %struct.bpf_load_program_attr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %13 = getelementptr inbounds [5 x %struct.bpf_insn], [5 x %struct.bpf_insn]* %3, i64 0, i64 0
  %14 = load i32, i32* @BPF_DW, align 4
  %15 = load i32, i32* @BPF_REG_6, align 4
  %16 = load i32, i32* @BPF_REG_1, align 4
  %17 = call i32 @BPF_LDX_MEM(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i64 1
  %20 = load i32, i32* @BPF_W, align 4
  %21 = load i32, i32* @BPF_REG_0, align 4
  %22 = load i32, i32* @BPF_REG_6, align 4
  %23 = call i32 @BPF_LDX_MEM(i32 %20, i32 %21, i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i64 1
  %26 = load i32, i32* @BPF_REG_0, align 4
  %27 = call i32 @BPF_MOV64_IMM(i32 %26, i32 42)
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i64 1
  %30 = load i32, i32* @BPF_W, align 4
  %31 = load i32, i32* @BPF_REG_6, align 4
  %32 = load i32, i32* @BPF_REG_0, align 4
  %33 = call i32 @BPF_STX_MEM(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i64 1
  %36 = call i32 (...) @BPF_EXIT_INSN()
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %4, i32 0, i32 1
  store i32 5, i32* %39, align 8
  %40 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %4, i32 0, i32 2
  store i32 2, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %4, i32 0, i32 3
  %42 = getelementptr inbounds [5 x %struct.bpf_insn], [5 x %struct.bpf_insn]* %3, i64 0, i64 0
  store %struct.bpf_insn* %42, %struct.bpf_insn** %41, align 8
  %43 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %4, i32 0, i32 4
  %44 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %46 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %4, i8* %45, i32 4096)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %0
  br label %125

55:                                               ; preds = %0
  %56 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %6, i64 0, i64 0
  %57 = load i32, i32* @BPF_REG_0, align 4
  %58 = call i32 @BPF_MOV64_IMM(i32 %57, i32 0)
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i64 1
  %61 = call i32 (...) @BPF_EXIT_INSN()
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %60, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 1
  store i32 2, i32* %64, align 8
  %65 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 3
  %67 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %6, i64 0, i64 0
  store %struct.bpf_insn* %67, %struct.bpf_insn** %66, align 8
  %68 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 4
  %69 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  store i32 %69, i32* %68, align 8
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %71 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %7, i8* %70, i32 4096)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %55
  br label %122

80:                                               ; preds = %55
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @bpf_raw_tracepoint_open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %119

91:                                               ; preds = %80
  %92 = bitcast [128 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %92, i8 0, i64 128, i1 false)
  %93 = load i32, i32* %8, align 4
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %95 = call i32 @bpf_prog_test_run(i32 %93, i32 1, i8* %94, i32 128, i32 0, i32 0, i64* %11, i32 0)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 42
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %108 = call i32 @bpf_prog_test_run(i32 %106, i32 1, i8* %107, i32 128, i32 0, i32 0, i64* %11, i32 0)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, i8*, ...) @CHECK(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %91, %90
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @close(i32 %120)
  br label %122

122:                                              ; preds = %119, %79
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @close(i32 %123)
  br label %125

125:                                              ; preds = %122, %54
  ret void
}

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i8*, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, ...) #1

declare dso_local i32 @bpf_raw_tracepoint_open(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bpf_prog_test_run(i32, i32, i8*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
