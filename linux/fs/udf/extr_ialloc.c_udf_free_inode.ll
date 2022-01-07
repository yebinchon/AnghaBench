; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_ialloc.c_udf_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_ialloc.c_udf_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.udf_sb_info*, align 8
  %5 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %9)
  store %struct.udf_sb_info* %10, %struct.udf_sb_info** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block* %11)
  store %struct.logicalVolIntegrityDescImpUse* %12, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %13 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %14 = icmp ne %struct.logicalVolIntegrityDescImpUse* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %26 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %25, i32 0, i32 1
  %27 = call i32 @le32_add_cpu(i32* %26, i32 -1)
  br label %32

28:                                               ; preds = %15
  %29 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %30 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %29, i32 0, i32 0
  %31 = call i32 @le32_add_cpu(i32* %30, i32 -1)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = call i32 @udf_updated_lvid(%struct.super_block* %33)
  %35 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %36 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @udf_free_blocks(%struct.super_block* %39, i32* null, i32* %42, i32 0, i32 1)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @udf_updated_lvid(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @udf_free_blocks(%struct.super_block*, i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
