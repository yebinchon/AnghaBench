; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_sock_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_sock_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bpf_sock_ops_kern = type { i32 }
%struct.cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BPF_PROG_RUN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cgroup_bpf_run_filter_sock_ops(%struct.sock* %0, %struct.bpf_sock_ops_kern* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.bpf_sock_ops_kern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgroup*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.bpf_sock_ops_kern* %1, %struct.bpf_sock_ops_kern** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = call %struct.cgroup* @sock_cgroup_ptr(i32* %10)
  store %struct.cgroup* %11, %struct.cgroup** %7, align 8
  %12 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %13 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bpf_sock_ops_kern*, %struct.bpf_sock_ops_kern** %5, align 8
  %21 = load i32, i32* @BPF_PROG_RUN, align 4
  %22 = call i32 @BPF_PROG_RUN_ARRAY(i32 %19, %struct.bpf_sock_ops_kern* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  ret i32 %30
}

declare dso_local %struct.cgroup* @sock_cgroup_ptr(i32*) #1

declare dso_local i32 @BPF_PROG_RUN_ARRAY(i32, %struct.bpf_sock_ops_kern*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
