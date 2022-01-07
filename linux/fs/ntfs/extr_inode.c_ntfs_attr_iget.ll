; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_attr_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_attr_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i64 }

@AT_INDEX_ALLOCATION = common dso_local global i64 0, align 8
@ntfs_test_inode = common dso_local global i64 0, align 8
@ntfs_init_locked_inode = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ntfs_attr_iget(%struct.inode* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @AT_INDEX_ALLOCATION, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i64 %22, i64* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* %24, i32** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @ntfs_test_inode, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @ntfs_init_locked_inode, align 8
  %36 = trunc i64 %35 to i32
  %37 = call %struct.inode* @iget5_locked(i32 %30, i32 %32, i32 %34, i32 %36, %struct.TYPE_3__* %12)
  store %struct.inode* %37, %struct.inode** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = icmp ne %struct.inode* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.inode* @ERR_PTR(i32 %46)
  store %struct.inode* %47, %struct.inode** %5, align 8
  br label %72

48:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I_NEW, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @ntfs_read_locked_attr_inode(%struct.inode* %56, %struct.inode* %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call i32 @unlock_new_inode(%struct.inode* %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call i32 @iput(%struct.inode* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.inode* @ERR_PTR(i32 %68)
  store %struct.inode* %69, %struct.inode** %10, align 8
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %71, %struct.inode** %5, align 8
  br label %72

72:                                               ; preds = %70, %44
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @iget5_locked(i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_read_locked_attr_inode(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
