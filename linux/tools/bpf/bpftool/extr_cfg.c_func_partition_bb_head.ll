; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_partition_bb_head.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_func_partition_bb_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_node = type { i32, %struct.bpf_insn*, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32 }
%struct.bb_node = type { i32 }

@BPF_EXIT = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@BPF_JA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.func_node*)* @func_partition_bb_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_partition_bb_head(%struct.func_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.func_node*, align 8
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bb_node*, align 8
  %7 = alloca i64, align 8
  store %struct.func_node* %0, %struct.func_node** %3, align 8
  %8 = load %struct.func_node*, %struct.func_node** %3, align 8
  %9 = getelementptr inbounds %struct.func_node, %struct.func_node* %8, i32 0, i32 2
  %10 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  store %struct.bpf_insn* %10, %struct.bpf_insn** %4, align 8
  %11 = load %struct.func_node*, %struct.func_node** %3, align 8
  %12 = getelementptr inbounds %struct.func_node, %struct.func_node* %11, i32 0, i32 1
  %13 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  store %struct.bpf_insn* %13, %struct.bpf_insn** %5, align 8
  %14 = load %struct.func_node*, %struct.func_node** %3, align 8
  %15 = getelementptr inbounds %struct.func_node, %struct.func_node* %14, i32 0, i32 0
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.func_node*, %struct.func_node** %3, align 8
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %19 = call %struct.bb_node* @func_append_bb(%struct.func_node* %17, %struct.bpf_insn* %18)
  store %struct.bb_node* %19, %struct.bb_node** %6, align 8
  %20 = load %struct.bb_node*, %struct.bb_node** %6, align 8
  %21 = icmp ne %struct.bb_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %75, %23
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %27 = icmp ule %struct.bpf_insn* %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %24
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_jmp_insn(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @BPF_OP(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @BPF_EXIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @BPF_CALL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %34
  br label %75

47:                                               ; preds = %42
  %48 = load %struct.func_node*, %struct.func_node** %3, align 8
  %49 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %50 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %51 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i64 %53
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i64 1
  %56 = call %struct.bb_node* @func_append_bb(%struct.func_node* %48, %struct.bpf_insn* %55)
  store %struct.bb_node* %56, %struct.bb_node** %6, align 8
  %57 = load %struct.bb_node*, %struct.bb_node** %6, align 8
  %58 = icmp ne %struct.bb_node* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %79

60:                                               ; preds = %47
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @BPF_JA, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.func_node*, %struct.func_node** %3, align 8
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %67 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i64 1
  %68 = call %struct.bb_node* @func_append_bb(%struct.func_node* %65, %struct.bpf_insn* %67)
  store %struct.bb_node* %68, %struct.bb_node** %6, align 8
  %69 = load %struct.bb_node*, %struct.bb_node** %6, align 8
  %70 = icmp ne %struct.bb_node* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %79

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %28
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %77 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %76, i32 1
  store %struct.bpf_insn* %77, %struct.bpf_insn** %4, align 8
  br label %24

78:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %71, %59, %22
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.bb_node* @func_append_bb(%struct.func_node*, %struct.bpf_insn*) #1

declare dso_local i64 @is_jmp_insn(i32) #1

declare dso_local i64 @BPF_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
