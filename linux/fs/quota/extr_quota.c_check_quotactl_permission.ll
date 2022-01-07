; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_check_quotactl_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_check_quotactl_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32)* @check_quotactl_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_quotactl_permission(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %35 [
    i32 135, label %11
    i32 132, label %11
    i32 134, label %11
    i32 131, label %11
    i32 130, label %11
    i32 128, label %11
    i32 133, label %12
    i32 129, label %12
  ]

11:                                               ; preds = %4, %4, %4, %4, %4, %4
  br label %43

12:                                               ; preds = %4, %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @USRQUOTA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call i32 (...) @current_euid()
  %18 = call i32 (...) @current_user_ns()
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @make_kuid(i32 %18, i32 %19)
  %21 = call i32 @uid_eq(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16, %12
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GRPQUOTA, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = call i32 (...) @current_user_ns()
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @make_kgid(i32 %28, i32 %29)
  %31 = call i32 @in_egroup_p(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %16
  br label %43

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %37 = call i32 @capable(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %33, %11
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = call i32 @security_quotactl(i32 %44, i32 %45, i32 %46, %struct.super_block* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @in_egroup_p(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_quotactl(i32, i32, i32, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
