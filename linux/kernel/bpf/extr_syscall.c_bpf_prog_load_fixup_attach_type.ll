; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_load_fixup_attach_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_load_fixup_attach_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@BPF_CGROUP_INET_SOCK_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.bpf_attr*)* @bpf_prog_load_fixup_attach_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_prog_load_fixup_attach_type(%union.bpf_attr* %0) #0 {
  %2 = alloca %union.bpf_attr*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %2, align 8
  %3 = load %union.bpf_attr*, %union.bpf_attr** %2, align 8
  %4 = bitcast %union.bpf_attr* %3 to i32*
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 128, label %6
  ]

6:                                                ; preds = %1
  %7 = load %union.bpf_attr*, %union.bpf_attr** %2, align 8
  %8 = bitcast %union.bpf_attr* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* @BPF_CGROUP_INET_SOCK_CREATE, align 4
  %13 = load %union.bpf_attr*, %union.bpf_attr** %2, align 8
  %14 = bitcast %union.bpf_attr* %13 to i32*
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
