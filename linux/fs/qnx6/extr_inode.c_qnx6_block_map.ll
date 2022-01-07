; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_block_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qnx6_sb_info = type { i32 }
%struct.qnx6_inode_info = type { i32, i32* }
%struct.buffer_head = type { i64 }

@QNX6_NO_DIRECT_POINTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Requested file block number (%u) too big.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading block (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @qnx6_block_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx6_block_map(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.qnx6_sb_info*, align 8
  %8 = alloca %struct.qnx6_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %21)
  store %struct.qnx6_sb_info* %22, %struct.qnx6_sb_info** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.qnx6_inode_info* @QNX6_I(%struct.inode* %23)
  store %struct.qnx6_inode_info* %24, %struct.qnx6_inode_info** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %7, align 8
  %26 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  %31 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %8, align 8
  %32 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %16, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %14, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @QNX6_NO_DIRECT_POINTERS, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %102

47:                                               ; preds = %2
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load %struct.qnx6_inode_info*, %struct.qnx6_inode_info** %8, align 8
  %50 = getelementptr inbounds %struct.qnx6_inode_info, %struct.qnx6_inode_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qnx6_get_devblock(%struct.super_block* %48, i32 %55)
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %97, %47
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.buffer_head* @sb_bread(%struct.super_block* %62, i32 %63)
  store %struct.buffer_head* %64, %struct.buffer_head** %10, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %66 = icmp ne %struct.buffer_head* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  br label %102

70:                                               ; preds = %61
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %14, align 4
  %76 = lshr i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @qnx6_check_blockptr(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %102

91:                                               ; preds = %70
  %92 = load %struct.super_block*, %struct.super_block** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @qnx6_get_devblock(%struct.super_block* %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %96 = call i32 @brelse(%struct.buffer_head* %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %90, %67, %44
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local %struct.qnx6_inode_info* @QNX6_I(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qnx6_get_devblock(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @qnx6_check_blockptr(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
