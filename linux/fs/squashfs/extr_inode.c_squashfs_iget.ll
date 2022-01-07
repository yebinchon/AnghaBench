; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_inode.c_squashfs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_inode.c_squashfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Entered squashfs_iget\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @squashfs_iget(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.inode* @iget_locked(%struct.super_block* %10, i32 %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %4, align 8
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %28, %struct.inode** %4, align 8
  br label %44

29:                                               ; preds = %20
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @squashfs_read_inode(%struct.inode* %30, i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call i32 @iget_failed(%struct.inode* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.inode* @ERR_PTR(i32 %38)
  store %struct.inode* %39, %struct.inode** %4, align 8
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @unlock_new_inode(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %43, %struct.inode** %4, align 8
  br label %44

44:                                               ; preds = %40, %35, %27, %16
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %45
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @squashfs_read_inode(%struct.inode*, i64) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
