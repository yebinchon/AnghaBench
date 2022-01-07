; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_xattr_generic_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_xattr_generic_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@XATTR_USER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @f2fs_xattr_generic_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_xattr_generic_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.f2fs_sb_info* @F2FS_SB(i32 %19)
  store %struct.f2fs_sb_info* %20, %struct.f2fs_sb_info** %16, align 8
  %21 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %22 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %33
    i32 130, label %33
  ]

24:                                               ; preds = %7
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %26 = load i32, i32* @XATTR_USER, align 4
  %27 = call i32 @test_opt(%struct.f2fs_sb_info* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %47

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %7, %7
  br label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %47

37:                                               ; preds = %33, %32
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %40 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @f2fs_setxattr(%struct.inode* %38, i32 %41, i8* %42, i8* %43, i64 %44, i32* null, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %34, %29
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(i32) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_setxattr(%struct.inode*, i32, i8*, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
