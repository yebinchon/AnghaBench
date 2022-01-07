; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_caps_for_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_caps_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CEPH_CAP_PIN = common dso_local global i32 0, align 4
@CEPH_FILE_MODE_RD = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_FILE_MODE_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_BUFFER = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_AUTH_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_EXCL = common dso_local global i32 0, align 4
@CEPH_FILE_MODE_LAZY = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_caps_for_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CEPH_CAP_PIN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CEPH_FILE_MODE_RD, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %11 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @CEPH_FILE_MODE_WR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %24 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CEPH_CAP_AUTH_SHARED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CEPH_CAP_AUTH_EXCL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CEPH_CAP_XATTR_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %17
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @CEPH_FILE_MODE_LAZY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
