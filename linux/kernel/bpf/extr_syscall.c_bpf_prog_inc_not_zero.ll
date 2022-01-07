; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_inc_not_zero.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_inc_not_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BPF_MAX_REFCNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_inc_not_zero(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %5 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @atomic_fetch_add_unless(i32* %8, i32 1, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BPF_MAX_REFCNT, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %15 = call i32 @__bpf_prog_put(%struct.bpf_prog* %14, i32 0)
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.bpf_prog* @ERR_PTR(i32 %17)
  store %struct.bpf_prog* %18, %struct.bpf_prog** %2, align 8
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.bpf_prog* @ERR_PTR(i32 %24)
  store %struct.bpf_prog* %25, %struct.bpf_prog** %2, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %27, %struct.bpf_prog** %2, align 8
  br label %28

28:                                               ; preds = %26, %22, %13
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %29
}

declare dso_local i32 @atomic_fetch_add_unless(i32*, i32, i32) #1

declare dso_local i32 @__bpf_prog_put(%struct.bpf_prog*, i32) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
