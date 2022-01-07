; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_trusted.c_trusted_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_trusted.c_trusted_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @trusted_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trusted_get(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i64 @IS_PRIVATE(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %6
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @xattr_full_name(%struct.xattr_handler* %26, i8* %27)
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @reiserfs_xattr_get(%struct.inode* %25, i32 %28, i8* %29, i64 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_get(%struct.inode*, i32, i8*, i64) #1

declare dso_local i32 @xattr_full_name(%struct.xattr_handler*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
