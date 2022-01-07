; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_trusted.c_trusted_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_trusted.c_trusted_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @trusted_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trusted_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = call i64 @IS_PRIVATE(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %7
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @xattr_full_name(%struct.xattr_handler* %28, i8* %29)
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @reiserfs_xattr_set(%struct.inode* %27, i32 %30, i8* %31, i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_set(%struct.inode*, i32, i8*, i64, i32) #1

declare dso_local i32 @xattr_full_name(%struct.xattr_handler*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
