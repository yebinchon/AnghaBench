; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_lookup_bdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_lookup_bdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.inode = type { i32 }
%struct.path = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @lookup_bdev(i8* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.block_device* @ERR_PTR(i32 %16)
  store %struct.block_device* %17, %struct.block_device** %2, align 8
  br label %60

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %21 = call i32 @kern_path(i8* %19, i32 %20, %struct.path* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.block_device* @ERR_PTR(i32 %25)
  store %struct.block_device* %26, %struct.block_device** %2, align 8
  br label %60

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.inode* @d_backing_inode(i32 %29)
  store %struct.inode* %30, %struct.inode** %5, align 8
  %31 = load i32, i32* @ENOTBLK, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @S_ISBLK(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %57

39:                                               ; preds = %27
  %40 = load i32, i32* @EACCES, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  %42 = call i32 @may_open_dev(%struct.path* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call %struct.block_device* @bd_acquire(%struct.inode* %48)
  store %struct.block_device* %49, %struct.block_device** %4, align 8
  %50 = load %struct.block_device*, %struct.block_device** %4, align 8
  %51 = icmp ne %struct.block_device* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %57, %53
  %55 = call i32 @path_put(%struct.path* %6)
  %56 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %56, %struct.block_device** %2, align 8
  br label %60

57:                                               ; preds = %52, %44, %38
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.block_device* @ERR_PTR(i32 %58)
  store %struct.block_device* %59, %struct.block_device** %4, align 8
  br label %54

60:                                               ; preds = %54, %24, %14
  %61 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %61
}

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @may_open_dev(%struct.path*) #1

declare dso_local %struct.block_device* @bd_acquire(%struct.inode*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
