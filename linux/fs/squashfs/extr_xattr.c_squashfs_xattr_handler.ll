; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_xattr.c_squashfs_xattr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_xattr.c_squashfs_xattr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }

@SQUASHFS_XATTR_PREFIX_MASK = common dso_local global i32 0, align 4
@SQUASHFS_XATTR_VALUE_OOL = common dso_local global i32 0, align 4
@squashfs_xattr_user_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@squashfs_xattr_trusted_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@squashfs_xattr_security_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xattr_handler* (i32)* @squashfs_xattr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xattr_handler* @squashfs_xattr_handler(i32 %0) #0 {
  %2 = alloca %struct.xattr_handler*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SQUASHFS_XATTR_PREFIX_MASK, align 4
  %6 = load i32, i32* @SQUASHFS_XATTR_VALUE_OOL, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.xattr_handler* null, %struct.xattr_handler** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SQUASHFS_XATTR_PREFIX_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %19 [
    i32 128, label %16
    i32 129, label %17
    i32 130, label %18
  ]

16:                                               ; preds = %12
  store %struct.xattr_handler* @squashfs_xattr_user_handler, %struct.xattr_handler** %2, align 8
  br label %20

17:                                               ; preds = %12
  store %struct.xattr_handler* @squashfs_xattr_trusted_handler, %struct.xattr_handler** %2, align 8
  br label %20

18:                                               ; preds = %12
  store %struct.xattr_handler* @squashfs_xattr_security_handler, %struct.xattr_handler** %2, align 8
  br label %20

19:                                               ; preds = %12
  store %struct.xattr_handler* null, %struct.xattr_handler** %2, align 8
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %11
  %21 = load %struct.xattr_handler*, %struct.xattr_handler** %2, align 8
  ret %struct.xattr_handler* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
