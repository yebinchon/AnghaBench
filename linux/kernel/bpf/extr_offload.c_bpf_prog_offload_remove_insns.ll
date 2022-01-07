; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_remove_insns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_remove_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.bpf_prog_offload* }
%struct.bpf_prog_offload = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.bpf_verifier_env*, i32, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_prog_offload_remove_insns(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog_offload*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 @down_read(i32* @bpf_devs_lock)
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %17, align 8
  store %struct.bpf_prog_offload* %18, %struct.bpf_prog_offload** %7, align 8
  %19 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %20 = icmp ne %struct.bpf_prog_offload* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  %22 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %21
  %27 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.bpf_verifier_env*, i32, i32)*, i32 (%struct.bpf_verifier_env*, i32, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.bpf_verifier_env*, i32, i32)* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %37 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.bpf_verifier_env*, i32, i32)*, i32 (%struct.bpf_verifier_env*, i32, i32)** %41, align 8
  %43 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %42(%struct.bpf_verifier_env* %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %35, %26, %21
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bpf_prog_offload*, %struct.bpf_prog_offload** %7, align 8
  %50 = getelementptr inbounds %struct.bpf_prog_offload, %struct.bpf_prog_offload* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %3
  %54 = call i32 @up_read(i32* @bpf_devs_lock)
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
