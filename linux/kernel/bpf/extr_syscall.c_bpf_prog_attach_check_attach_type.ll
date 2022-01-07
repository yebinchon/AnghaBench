; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_attach_check_attach_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_attach_check_attach_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*, i32)* @bpf_prog_attach_check_attach_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_attach_check_attach_type(%struct.bpf_prog* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 130, label %9
    i32 128, label %9
    i32 129, label %9
    i32 131, label %21
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 0, %15 ], [ %18, %16 ]
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %28 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %36

35:                                               ; preds = %26, %21
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
