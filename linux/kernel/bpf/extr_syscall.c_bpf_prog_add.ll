; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BPF_MAX_REFCNT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @atomic_add_return(i32 %6, i32* %10)
  %12 = load i64, i64* @BPF_MAX_REFCNT, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @atomic_sub(i32 %15, i32* %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.bpf_prog* @ERR_PTR(i32 %22)
  store %struct.bpf_prog* %23, %struct.bpf_prog** %3, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %25, %struct.bpf_prog** %3, align 8
  br label %26

26:                                               ; preds = %24, %14
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %27
}

declare dso_local i64 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local %struct.bpf_prog* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
