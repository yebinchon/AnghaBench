; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_xattr_id.c_squashfs_read_xattr_id_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_xattr_id.c_squashfs_read_xattr_id_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_xattr_id_table = type { i32, i32 }
%struct.super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"In read_xattr_index_table, length %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.squashfs_xattr_id_table* @squashfs_read_xattr_id_table(%struct.super_block* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.squashfs_xattr_id_table*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.squashfs_xattr_id_table*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.squashfs_xattr_id_table* @squashfs_read_table(%struct.super_block* %12, i64 %13, i32 8)
  store %struct.squashfs_xattr_id_table* %14, %struct.squashfs_xattr_id_table** %11, align 8
  %15 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %11, align 8
  %16 = call i64 @IS_ERR(%struct.squashfs_xattr_id_table* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %11, align 8
  store %struct.squashfs_xattr_id_table* %19, %struct.squashfs_xattr_id_table** %5, align 8
  br label %60

20:                                               ; preds = %4
  %21 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %11, align 8
  %22 = getelementptr inbounds %struct.squashfs_xattr_id_table, %struct.squashfs_xattr_id_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le64_to_cpu(i32 %23)
  %25 = load i64*, i64** %8, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %11, align 8
  %27 = getelementptr inbounds %struct.squashfs_xattr_id_table, %struct.squashfs_xattr_id_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %11, align 8
  %32 = call i32 @kfree(%struct.squashfs_xattr_id_table* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.squashfs_xattr_id_table* @ERR_PTR(i32 %38)
  store %struct.squashfs_xattr_id_table* %39, %struct.squashfs_xattr_id_table** %5, align 8
  br label %60

40:                                               ; preds = %20
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.squashfs_xattr_id_table* @ERR_PTR(i32 %47)
  store %struct.squashfs_xattr_id_table* %48, %struct.squashfs_xattr_id_table** %5, align 8
  br label %60

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SQUASHFS_XATTR_BLOCK_BYTES(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.squashfs_xattr_id_table* @squashfs_read_table(%struct.super_block* %55, i64 %57, i32 %58)
  store %struct.squashfs_xattr_id_table* %59, %struct.squashfs_xattr_id_table** %5, align 8
  br label %60

60:                                               ; preds = %49, %45, %36, %18
  %61 = load %struct.squashfs_xattr_id_table*, %struct.squashfs_xattr_id_table** %5, align 8
  ret %struct.squashfs_xattr_id_table* %61
}

declare dso_local %struct.squashfs_xattr_id_table* @squashfs_read_table(%struct.super_block*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.squashfs_xattr_id_table*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.squashfs_xattr_id_table*) #1

declare dso_local %struct.squashfs_xattr_id_table* @ERR_PTR(i32) #1

declare dso_local i32 @SQUASHFS_XATTR_BLOCK_BYTES(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
