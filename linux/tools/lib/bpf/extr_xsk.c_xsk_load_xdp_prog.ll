; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_load_xdp_prog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_load_xdp_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_insn = type { i32 }

@xsk_load_xdp_prog.log_buf_size = internal constant i32 16384, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_FUNC_map_lookup_elem = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_FUNC_redirect_map = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"LGPL-2.1 or BSD-2-Clause\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"BPF log buffer:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_socket*)* @xsk_load_xdp_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_load_xdp_prog(%struct.xsk_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_socket*, align 8
  %4 = alloca [16384 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [14 x %struct.bpf_insn], align 16
  %8 = alloca i64, align 8
  store %struct.xsk_socket* %0, %struct.xsk_socket** %3, align 8
  %9 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %7, i64 0, i64 0
  %10 = load i32, i32* @BPF_W, align 4
  %11 = load i32, i32* @BPF_REG_1, align 4
  %12 = load i32, i32* @BPF_REG_1, align 4
  %13 = call i32 @BPF_LDX_MEM(i32 %10, i32 %11, i32 %12, i32 16)
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i64 1
  %16 = load i32, i32* @BPF_W, align 4
  %17 = load i32, i32* @BPF_REG_10, align 4
  %18 = load i32, i32* @BPF_REG_1, align 4
  %19 = call i32 @BPF_STX_MEM(i32 %16, i32 %17, i32 %18, i32 -4)
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i64 1
  %22 = load i32, i32* @BPF_REG_2, align 4
  %23 = load i32, i32* @BPF_REG_10, align 4
  %24 = call i32 @BPF_MOV64_REG(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i64 1
  %27 = load i32, i32* @BPF_ADD, align 4
  %28 = load i32, i32* @BPF_REG_2, align 4
  %29 = call i32 @BPF_ALU64_IMM(i32 %27, i32 %28, i32 -4)
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i64 1
  %32 = load i32, i32* @BPF_REG_1, align 4
  %33 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %34 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BPF_LD_MAP_FD(i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i64 1
  %39 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %40 = call i32 @BPF_EMIT_CALL(i32 %39)
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %38, i64 1
  %43 = load i32, i32* @BPF_REG_1, align 4
  %44 = load i32, i32* @BPF_REG_0, align 4
  %45 = call i32 @BPF_MOV64_REG(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i64 1
  %48 = load i32, i32* @BPF_REG_0, align 4
  %49 = call i32 @BPF_MOV32_IMM(i32 %48, i32 2)
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 1
  %52 = load i32, i32* @BPF_JEQ, align 4
  %53 = load i32, i32* @BPF_REG_1, align 4
  %54 = call i32 @BPF_JMP_IMM(i32 %52, i32 %53, i32 0, i32 5)
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i64 1
  %57 = load i32, i32* @BPF_REG_1, align 4
  %58 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %59 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BPF_LD_MAP_FD(i32 %57, i32 %60)
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i64 1
  %64 = load i32, i32* @BPF_W, align 4
  %65 = load i32, i32* @BPF_REG_2, align 4
  %66 = load i32, i32* @BPF_REG_10, align 4
  %67 = call i32 @BPF_LDX_MEM(i32 %64, i32 %65, i32 %66, i32 -4)
  %68 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %63, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %63, i64 1
  %70 = load i32, i32* @BPF_REG_3, align 4
  %71 = call i32 @BPF_MOV32_IMM(i32 %70, i32 0)
  %72 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i64 1
  %74 = load i32, i32* @BPF_FUNC_redirect_map, align 4
  %75 = call i32 @BPF_EMIT_CALL(i32 %74)
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i64 1
  %78 = call i32 (...) @BPF_EXIT_INSN()
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %77, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  store i64 14, i64* %8, align 8
  %80 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  %81 = getelementptr inbounds [14 x %struct.bpf_insn], [14 x %struct.bpf_insn]* %7, i64 0, i64 0
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %84 = call i32 @bpf_load_program(i32 %80, %struct.bpf_insn* %81, i64 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0, i8* %83, i32 16384)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %1
  %88 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %89 = call i32 @pr_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %111

91:                                               ; preds = %1
  %92 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %93 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %97 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bpf_set_link_xdp_fd(i32 %94, i32 %95, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %91
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %110 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %103, %87
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_LD_MAP_FD(i32, i32) #1

declare dso_local i32 @BPF_EMIT_CALL(i32) #1

declare dso_local i32 @BPF_MOV32_IMM(i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @bpf_load_program(i32, %struct.bpf_insn*, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @bpf_set_link_xdp_fd(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
