; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_load_check_attach_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_load_check_attach_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bpf_prog_load_check_attach_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_load_check_attach_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 130, label %7
    i32 128, label %13
    i32 131, label %19
    i32 129, label %25
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 137, label %9
    i32 143, label %9
    i32 140, label %9
  ]

9:                                                ; preds = %7, %7, %7
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %7
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %16 [
    i32 145, label %15
    i32 142, label %15
    i32 144, label %15
    i32 141, label %15
    i32 134, label %15
    i32 132, label %15
    i32 135, label %15
    i32 133, label %15
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  store i32 0, i32* %3, align 4
  br label %32

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %22 [
    i32 138, label %21
    i32 139, label %21
  ]

21:                                               ; preds = %19, %19
  store i32 0, i32* %3, align 4
  br label %32

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %28 [
    i32 136, label %27
    i32 146, label %27
  ]

27:                                               ; preds = %25, %25
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %27, %22, %21, %16, %15, %10, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
