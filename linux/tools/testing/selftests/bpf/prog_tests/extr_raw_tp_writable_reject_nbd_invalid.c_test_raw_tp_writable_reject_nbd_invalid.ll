; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_raw_tp_writable_reject_nbd_invalid.c_test_raw_tp_writable_reject_nbd_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_raw_tp_writable_reject_nbd_invalid.c_test_raw_tp_writable_reject_nbd_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.bpf_load_program_attr = type { i8*, i32, i32, %struct.bpf_insn*, i32 }

@BPF_DW = common dso_local global i32 0, align 4
@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GPL v2\00", align 1
@BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"bpf_raw_tracepoint_writable load\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed: %d errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"nbd_send_request\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bpf_raw_tracepoint_writable open\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"erroneously succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_raw_tp_writable_reject_nbd_invalid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.bpf_insn], align 4
  %6 = alloca %struct.bpf_load_program_attr, align 8
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %7 = getelementptr inbounds [3 x %struct.bpf_insn], [3 x %struct.bpf_insn]* %5, i64 0, i64 0
  %8 = load i32, i32* @BPF_DW, align 4
  %9 = load i32, i32* @BPF_REG_6, align 4
  %10 = load i32, i32* @BPF_REG_1, align 4
  %11 = call i32 @BPF_LDX_MEM(i32 %8, i32 %9, i32 %10, i32 0)
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i64 1
  %14 = load i32, i32* @BPF_B, align 4
  %15 = load i32, i32* @BPF_REG_0, align 4
  %16 = load i32, i32* @BPF_REG_6, align 4
  %17 = call i32 @BPF_LDX_MEM(i32 %14, i32 %15, i32 %16, i32 4)
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i64 1
  %20 = call i32 (...) @BPF_EXIT_INSN()
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %6, i32 0, i32 1
  store i32 3, i32* %23, align 8
  %24 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %6, i32 0, i32 2
  store i32 2, i32* %24, align 4
  %25 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %6, i32 0, i32 3
  %26 = getelementptr inbounds [3 x %struct.bpf_insn], [3 x %struct.bpf_insn]* %5, i64 0, i64 0
  store %struct.bpf_insn* %26, %struct.bpf_insn** %25, align 8
  %27 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %6, i32 0, i32 4
  %28 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %30 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %6, i8* %29, i32 4096)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %0
  br label %54

39:                                               ; preds = %0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @bpf_raw_tracepoint_open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %51, %38
  ret void
}

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i8*, i32) #1

declare dso_local i64 @CHECK(i32, i8*, i8*, ...) #1

declare dso_local i32 @bpf_raw_tracepoint_open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
