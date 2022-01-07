; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_check_dev_permission.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_check_dev_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bpf_cgroup_dev_ctx = type { i16, i32, i32 }

@current = common dso_local global i32 0, align 4
@BPF_PROG_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cgroup_bpf_check_dev_permission(i16 signext %0, i32 %1, i32 %2, i16 signext %3, i32 %4) #0 {
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.cgroup*, align 8
  %12 = alloca %struct.bpf_cgroup_dev_ctx, align 4
  %13 = alloca i32, align 4
  store i16 %0, i16* %6, align 2
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds %struct.bpf_cgroup_dev_ctx, %struct.bpf_cgroup_dev_ctx* %12, i32 0, i32 0
  %15 = load i16, i16* %9, align 2
  %16 = sext i16 %15 to i32
  %17 = shl i32 %16, 16
  %18 = load i16, i16* %6, align 2
  %19 = sext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %14, align 4
  %22 = getelementptr inbounds %struct.bpf_cgroup_dev_ctx, %struct.bpf_cgroup_dev_ctx* %12, i32 0, i32 1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.bpf_cgroup_dev_ctx, %struct.bpf_cgroup_dev_ctx* %12, i32 0, i32 2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %24, align 4
  store i32 1, i32* %13, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load i32, i32* @current, align 4
  %28 = call %struct.cgroup* @task_dfl_cgroup(i32 %27)
  store %struct.cgroup* %28, %struct.cgroup** %11, align 8
  %29 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %30 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BPF_PROG_RUN, align 4
  %38 = call i32 @BPF_PROG_RUN_ARRAY(i32 %36, %struct.bpf_cgroup_dev_ctx* %12, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cgroup* @task_dfl_cgroup(i32) #1

declare dso_local i32 @BPF_PROG_RUN_ARRAY(i32, %struct.bpf_cgroup_dev_ctx*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
