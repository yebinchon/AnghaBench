; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @EXT4_SB(i32 %15)
  %17 = call i32 @ext4_forced_shutdown(i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %58

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ERANGE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %58

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_read(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @ext4_xattr_ibody_get(%struct.inode* %35, i32 %36, i8* %37, i8* %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ENODATA, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @ext4_xattr_block_get(%struct.inode* %46, i32 %47, i8* %48, i8* %49, i64 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %30
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %27, %20
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_ibody_get(%struct.inode*, i32, i8*, i8*, i64) #1

declare dso_local i32 @ext4_xattr_block_get(%struct.inode*, i32, i8*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
