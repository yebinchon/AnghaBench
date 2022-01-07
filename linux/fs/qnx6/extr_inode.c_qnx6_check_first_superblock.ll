; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_check_first_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_check_first_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.super_block = type { i32 }
%struct.qnx6_sb_info = type { i32 }
%struct.qnx6_super_block = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"unable to read the first superblock\0A\00", align 1
@QNX6_SUPER_MAGIC = common dso_local global i64 0, align 8
@BYTESEX_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fs got different endianness.\0A\00", align 1
@BYTESEX_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"wrong signature (magic) in superblock #1.\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"wrong signature (magic) at position (0x%lx) - will try alternative position (0x0000).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i32, i32)* @qnx6_check_first_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @qnx6_check_first_superblock(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qnx6_sb_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.qnx6_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %11)
  store %struct.qnx6_sb_info* %12, %struct.qnx6_sb_info** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.buffer_head* @sb_bread(%struct.super_block* %13, i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = icmp ne %struct.buffer_head* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.qnx6_super_block*
  store %struct.qnx6_super_block* %24, %struct.qnx6_super_block** %10, align 8
  %25 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %26 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %27 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %25, i32 %28)
  %30 = load i64, i64* @QNX6_SUPER_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %20
  %33 = load i32, i32* @BYTESEX_BE, align 4
  %34 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %35 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %37 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %38 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %36, i32 %39)
  %41 = load i64, i64* @QNX6_SUPER_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %45, %struct.buffer_head** %4, align 8
  br label %71

46:                                               ; preds = %32
  %47 = load i32, i32* @BYTESEX_LE, align 4
  %48 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %56
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %71

69:                                               ; preds = %20
  %70 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %4, align 8
  br label %71

71:                                               ; preds = %69, %66, %43, %18
  %72 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %72
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
