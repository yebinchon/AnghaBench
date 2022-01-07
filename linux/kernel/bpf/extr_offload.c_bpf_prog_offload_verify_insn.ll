; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_verify_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_verify_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bpf_prog_offload* }
%struct.bpf_prog_offload = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }

@ENODEV = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_offload_verify_insn(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog_offload*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 @down_read(i32* @bpf_devs_lock)
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %17, align 8
  store %struct.bpf_prog_offload* %18, %struct.bpf_prog_offload** %7, align 8
  %19 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %20 = icmp ne %struct.bpf_prog_offload* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.bpf_verifier_env*, i32, i32)**
  %29 = load i32 (%struct.bpf_verifier_env*, i32, i32)*, i32 (%struct.bpf_verifier_env*, i32, i32)** %28, align 8
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %29(%struct.bpf_verifier_env* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %21, %3
  %35 = call i32 @up_read(i32* @bpf_devs_lock)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
