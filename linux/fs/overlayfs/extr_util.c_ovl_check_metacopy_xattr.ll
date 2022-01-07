; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_check_metacopy_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_check_metacopy_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OVL_XATTR_METACOPY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"overlayfs: failed to get metacopy (%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_check_metacopy_xattr(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @S_ISREG(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load i32, i32* @OVL_XATTR_METACOPY, align 4
  %15 = call i32 @vfs_getxattr(%struct.dentry* %13, i32 %14, i32* null, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ENODATA, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %35

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %30, %28, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i32, i32*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
