; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cred = type { i32 }

@FILE__GETATTR = common dso_local global i32 0, align 4
@FILE__SETATTR = common dso_local global i32 0, align 4
@CAP_SYS_TTY_CONFIG = common dso_local global i32 0, align 4
@CAP_OPT_NONE = common dso_local global i32 0, align 4
@FILE__IOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64)* @selinux_file_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %30 [
    i32 134, label %11
    i32 138, label %11
    i32 137, label %11
    i32 133, label %11
    i32 132, label %11
    i32 131, label %16
    i32 130, label %16
    i32 135, label %21
    i32 136, label %21
    i32 129, label %25
    i32 128, label %25
  ]

11:                                               ; preds = %3, %3, %3, %3, %3
  %12 = load %struct.cred*, %struct.cred** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i32, i32* @FILE__GETATTR, align 4
  %15 = call i32 @file_has_perm(%struct.cred* %12, %struct.file* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  br label %36

16:                                               ; preds = %3, %3
  %17 = load %struct.cred*, %struct.cred** %7, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load i32, i32* @FILE__SETATTR, align 4
  %20 = call i32 @file_has_perm(%struct.cred* %17, %struct.file* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  br label %36

21:                                               ; preds = %3, %3
  %22 = load %struct.cred*, %struct.cred** %7, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call i32 @file_has_perm(%struct.cred* %22, %struct.file* %23, i32 0)
  store i32 %24, i32* %8, align 4
  br label %36

25:                                               ; preds = %3, %3
  %26 = load %struct.cred*, %struct.cred** %7, align 8
  %27 = load i32, i32* @CAP_SYS_TTY_CONFIG, align 4
  %28 = load i32, i32* @CAP_OPT_NONE, align 4
  %29 = call i32 @cred_has_capability(%struct.cred* %26, i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %8, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.cred*, %struct.cred** %7, align 8
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = load i32, i32* @FILE__IOCTL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ioctl_has_perm(%struct.cred* %31, %struct.file* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %30, %25, %21, %16, %11
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

declare dso_local i32 @cred_has_capability(%struct.cred*, i32, i32, i32) #1

declare dso_local i32 @ioctl_has_perm(%struct.cred*, %struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
