; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_save_register_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_save_register_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i32 }

@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_SPILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_func_state*, i32, %struct.bpf_reg_state*)* @save_register_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_register_state(%struct.bpf_func_state* %0, i32 %1, %struct.bpf_reg_state* %2) #0 {
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_func_state* %0, %struct.bpf_func_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %6, align 8
  %8 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %16 = bitcast %struct.bpf_reg_state* %14 to i8*
  %17 = bitcast %struct.bpf_reg_state* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %19 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %18
  store i32 %28, i32* %26, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %46, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BPF_REG_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32, i32* @STACK_SPILL, align 4
  %35 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %34, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %29

49:                                               ; preds = %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
