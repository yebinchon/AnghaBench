; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr_user.c_ext4_xattr_user_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr_user.c_ext4_xattr_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@XATTR_USER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @ext4_xattr_user_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_user_get(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
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
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XATTR_USER, align 4
  %18 = call i32 @test_opt(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %30

23:                                               ; preds = %6
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = load i32, i32* @EXT4_XATTR_INDEX_USER, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @ext4_xattr_get(%struct.inode* %24, i32 %25, i8* %26, i8* %27, i64 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local i32 @ext4_xattr_get(%struct.inode*, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
