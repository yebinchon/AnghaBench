; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_replace_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_replace_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bpf_prog_offload* }
%struct.bpf_prog_offload = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bpf_prog_offload_ops* }
%struct.bpf_prog_offload_ops = type { i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)* }
%struct.bpf_insn = type opaque
%struct.bpf_insn.0 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_prog_offload_replace_insn(%struct.bpf_verifier_env* %0, i32 %1, %struct.bpf_insn.0* %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn.0*, align 8
  %7 = alloca %struct.bpf_prog_offload_ops*, align 8
  %8 = alloca %struct.bpf_prog_offload*, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bpf_insn.0* %2, %struct.bpf_insn.0** %6, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @down_read(i32* @bpf_devs_lock)
  %13 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %18, align 8
  store %struct.bpf_prog_offload* %19, %struct.bpf_prog_offload** %8, align 8
  %20 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %8, align 8
  %21 = icmp ne %struct.bpf_prog_offload* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %8, align 8
  %24 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.bpf_prog_offload_ops*, %struct.bpf_prog_offload_ops** %26, align 8
  store %struct.bpf_prog_offload_ops* %27, %struct.bpf_prog_offload_ops** %7, align 8
  %28 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %22
  %33 = load %struct.bpf_prog_offload_ops*, %struct.bpf_prog_offload_ops** %7, align 8
  %34 = getelementptr inbounds %struct.bpf_prog_offload_ops, %struct.bpf_prog_offload_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)*, i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)** %34, align 8
  %36 = icmp ne i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.bpf_prog_offload_ops*, %struct.bpf_prog_offload_ops** %7, align 8
  %39 = getelementptr inbounds %struct.bpf_prog_offload_ops, %struct.bpf_prog_offload_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)*, i32 (%struct.bpf_verifier_env*, i32, %struct.bpf_insn*)** %39, align 8
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %6, align 8
  %44 = bitcast %struct.bpf_insn.0* %43 to %struct.bpf_insn*
  %45 = call i32 %40(%struct.bpf_verifier_env* %41, i32 %42, %struct.bpf_insn* %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %37, %32, %22
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %8, align 8
  %49 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %3
  %53 = call i32 @up_read(i32* @bpf_devs_lock)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
