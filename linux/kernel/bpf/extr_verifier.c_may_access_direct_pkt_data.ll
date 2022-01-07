; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_may_access_direct_pkt_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_may_access_direct_pkt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_call_arg_meta = type { i32 }

@BPF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_call_arg_meta*, i32)* @may_access_direct_pkt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_access_direct_pkt_data(%struct.bpf_verifier_env* %0, %struct.bpf_call_arg_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_call_arg_meta*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_call_arg_meta* %1, %struct.bpf_call_arg_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 137, label %13
    i32 136, label %13
    i32 135, label %13
    i32 130, label %13
    i32 138, label %13
    i32 140, label %13
    i32 132, label %19
    i32 133, label %19
    i32 128, label %19
    i32 134, label %19
    i32 129, label %19
    i32 131, label %19
    i32 139, label %29
  ]

13:                                               ; preds = %3, %3, %3, %3, %3, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BPF_WRITE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %3, %3, %3, %3, %3, %3, %18
  %20 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %6, align 8
  %21 = icmp ne %struct.bpf_call_arg_meta* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i32 1, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BPF_WRITE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %35 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  store i32 1, i32* %4, align 4
  br label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36, %26, %22, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
