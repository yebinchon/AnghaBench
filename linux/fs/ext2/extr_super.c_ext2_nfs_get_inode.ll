; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT2_ROOT_INO = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i64, i64)* @ext2_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext2_nfs_get_inode(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call i64 @EXT2_FIRST_INO(%struct.super_block* %10)
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @EXT2_ROOT_INO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @ESTALE, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.inode* @ERR_PTR(i32 %19)
  store %struct.inode* %20, %struct.inode** %4, align 8
  br label %62

21:                                               ; preds = %13, %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = call %struct.TYPE_4__* @EXT2_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = icmp sgt i64 %22, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @ESTALE, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.inode* @ERR_PTR(i32 %33)
  store %struct.inode* %34, %struct.inode** %4, align 8
  br label %62

35:                                               ; preds = %21
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.inode* @ext2_iget(%struct.super_block* %36, i64 %37)
  store %struct.inode* %38, %struct.inode** %8, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i64 @IS_ERR(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call %struct.inode* @ERR_CAST(%struct.inode* %43)
  store %struct.inode* %44, %struct.inode** %4, align 8
  br label %62

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i32 @iput(%struct.inode* %55)
  %57 = load i32, i32* @ESTALE, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.inode* @ERR_PTR(i32 %58)
  store %struct.inode* %59, %struct.inode** %4, align 8
  br label %62

60:                                               ; preds = %48, %45
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %61, %struct.inode** %4, align 8
  br label %62

62:                                               ; preds = %60, %54, %42, %31, %17
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %63
}

declare dso_local i64 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT2_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @ext2_iget(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
