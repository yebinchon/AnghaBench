; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_xprefix_to_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_xprefix_to_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }

@jffs2_user_xattr_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@jffs2_trusted_xattr_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@jffs2_security_xattr_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@posix_acl_access_xattr_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@posix_acl_default_xattr_handler = common dso_local global %struct.xattr_handler zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xattr_handler* (i32)* @xprefix_to_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xattr_handler* @xprefix_to_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xattr_handler*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %7 [
    i32 128, label %5
    i32 129, label %6
  ]

5:                                                ; preds = %1
  store %struct.xattr_handler* @jffs2_user_xattr_handler, %struct.xattr_handler** %3, align 8
  br label %8

6:                                                ; preds = %1
  store %struct.xattr_handler* @jffs2_trusted_xattr_handler, %struct.xattr_handler** %3, align 8
  br label %8

7:                                                ; preds = %1
  store %struct.xattr_handler* null, %struct.xattr_handler** %3, align 8
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = load %struct.xattr_handler*, %struct.xattr_handler** %3, align 8
  ret %struct.xattr_handler* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
