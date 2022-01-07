; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_create_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.nilfs_transaction_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head**, void (%struct.inode*, %struct.buffer_head*, i8*)*)* @nilfs_mdt_create_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_mdt_create_block(%struct.inode* %0, i64 %1, %struct.buffer_head** %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.nilfs_transaction_info, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %9, align 8
  %16 = load %struct.super_block*, %struct.super_block** %9, align 8
  %17 = call i32 @nilfs_transaction_begin(%struct.super_block* %16, %struct.nilfs_transaction_info* %10, i32 0)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %20, i32 %23, i64 %24, i32 0)
  store %struct.buffer_head* %25, %struct.buffer_head** %11, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %81

33:                                               ; preds = %4
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %37 = call i64 @buffer_uptodate(%struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %70

40:                                               ; preds = %33
  %41 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %42 = call i32 @wait_on_buffer(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %44 = call i64 @buffer_uptodate(%struct.buffer_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %70

47:                                               ; preds = %40
  %48 = load %struct.super_block*, %struct.super_block** %9, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %56 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %8, align 8
  %57 = call i32 @nilfs_mdt_insert_new_block(%struct.inode* %53, i64 %54, %struct.buffer_head* %55, void (%struct.inode*, %struct.buffer_head*, i8*)* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = call i32 @get_bh(%struct.buffer_head* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %67, %struct.buffer_head** %68, align 8
  br label %69

69:                                               ; preds = %64, %47
  br label %70

70:                                               ; preds = %69, %46, %39
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @unlock_page(i32 %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @put_page(i32 %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  br label %81

81:                                               ; preds = %70, %32
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.super_block*, %struct.super_block** %9, align 8
  %90 = call i32 @nilfs_transaction_commit(%struct.super_block* %89)
  store i32 %90, i32* %12, align 4
  br label %94

91:                                               ; preds = %81
  %92 = load %struct.super_block*, %struct.super_block** %9, align 8
  %93 = call i32 @nilfs_transaction_abort(%struct.super_block* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_insert_new_block(%struct.inode*, i64, %struct.buffer_head*, void (%struct.inode*, %struct.buffer_head*, i8*)*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_abort(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
