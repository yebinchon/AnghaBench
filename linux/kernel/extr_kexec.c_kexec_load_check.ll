; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec.c_kexec_load_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec.c_kexec_load_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_SYS_BOOT = common dso_local global i32 0, align 4
@kexec_load_disabled = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@LOADING_KEXEC_IMAGE = common dso_local global i32 0, align 4
@LOCKDOWN_KEXEC = common dso_local global i32 0, align 4
@KEXEC_FLAGS = common dso_local global i64 0, align 8
@KEXEC_ARCH_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KEXEC_SEGMENT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @kexec_load_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_load_check(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @CAP_SYS_BOOT, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @kexec_load_disabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %10
  %17 = load i32, i32* @LOADING_KEXEC_IMAGE, align 4
  %18 = call i32 @security_kernel_load_data(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load i32, i32* @LOCKDOWN_KEXEC, align 4
  %25 = call i32 @security_locked_down(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @KEXEC_FLAGS, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @KEXEC_ARCH_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @KEXEC_SEGMENT_MAX, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %39, %28, %21, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_kernel_load_data(i32) #1

declare dso_local i32 @security_locked_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
