; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_set_nlink_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_set_nlink_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i64 }

@EIO = common dso_local global i32 0, align 4
@OVL_XATTR_NLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*, i8*)* @ovl_set_nlink_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_set_nlink_common(%struct.dentry* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca [13 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @snprintf(i8* %16, i32 13, i8* %17, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 13
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @ovl_dentry_upper(%struct.dentry* %37)
  %39 = load i32, i32* @OVL_XATTR_NLINK, align 4
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ovl_do_setxattr(i32 %38, i32 %39, i8* %40, i32 %41, i32 0)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_do_setxattr(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ovl_dentry_upper(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
