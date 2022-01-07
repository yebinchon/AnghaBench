; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_detach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BPF_PROG_DETACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCK = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCK_ADDR = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCK_OPS = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_DEVICE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SYSCTL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCKOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_prog_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_detach(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %5 = load i32, i32* @CAP_NET_ADMIN, align 4
  %6 = call i32 @capable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* @BPF_PROG_DETACH, align 4
  %13 = call i64 @CHECK_ATTR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %11
  %19 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %20 = bitcast %union.bpf_attr* %19 to i32*
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %48 [
    i32 141, label %22
    i32 142, label %22
    i32 140, label %24
    i32 146, label %24
    i32 143, label %24
    i32 148, label %26
    i32 145, label %26
    i32 147, label %26
    i32 144, label %26
    i32 135, label %26
    i32 133, label %26
    i32 136, label %26
    i32 134, label %26
    i32 138, label %28
    i32 150, label %30
    i32 130, label %32
    i32 129, label %35
    i32 128, label %35
    i32 131, label %38
    i32 132, label %41
    i32 137, label %44
    i32 149, label %46
    i32 139, label %46
  ]

22:                                               ; preds = %18, %18
  %23 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %18, %18, %18
  %25 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK, align 4
  store i32 %25, i32* %4, align 4
  br label %51

26:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %27 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK_ADDR, align 4
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %18
  %29 = load i32, i32* @BPF_PROG_TYPE_SOCK_OPS, align 4
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %18
  %31 = load i32, i32* @BPF_PROG_TYPE_CGROUP_DEVICE, align 4
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %18
  %33 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %34 = call i32 @sock_map_get_from_fd(%union.bpf_attr* %33, i32* null)
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %18, %18
  %36 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %37 = call i32 @sock_map_get_from_fd(%union.bpf_attr* %36, i32* null)
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %18
  %39 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %40 = call i32 @lirc_prog_detach(%union.bpf_attr* %39)
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %18
  %42 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %43 = call i32 @skb_flow_dissector_bpf_prog_detach(%union.bpf_attr* %42)
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %18
  %45 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %18, %18
  %47 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCKOPT, align 4
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %18
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %46, %44, %30, %28, %26, %24, %22
  %52 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @cgroup_bpf_prog_detach(%union.bpf_attr* %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %48, %41, %38, %35, %32, %15, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @CHECK_ATTR(i32) #1

declare dso_local i32 @sock_map_get_from_fd(%union.bpf_attr*, i32*) #1

declare dso_local i32 @lirc_prog_detach(%union.bpf_attr*) #1

declare dso_local i32 @skb_flow_dissector_bpf_prog_detach(%union.bpf_attr*) #1

declare dso_local i32 @cgroup_bpf_prog_detach(%union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
