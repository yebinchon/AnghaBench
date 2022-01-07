; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_v7_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_v7_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.sysv_sb_info* }
%struct.sysv_sb_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.v7_super_block = type { i32, i32, i32 }
%struct.sysv_inode = type { i32, i32 }

@V7_NICFREE = common dso_local global i32 0, align 4
@V7_NICINOD = common dso_local global i32 0, align 4
@V7_MAXSIZE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@V7_NFILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @v7_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v7_sanity_check(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.v7_super_block*, align 8
  %7 = alloca %struct.sysv_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.sysv_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %11, align 8
  store %struct.sysv_sb_info* %12, %struct.sysv_sb_info** %9, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.v7_super_block*
  store %struct.v7_super_block* %16, %struct.v7_super_block** %6, align 8
  %17 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %18 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %19 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %17, i32 %20)
  %22 = load i32, i32* @V7_NICFREE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %2
  %25 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %26 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %27 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %25, i32 %28)
  %30 = load i32, i32* @V7_NICINOD, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %34 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %35 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %33, i32 %36)
  %38 = load i32, i32* @V7_MAXSIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %24, %2
  store i32 0, i32* %3, align 4
  br label %93

41:                                               ; preds = %32
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call %struct.buffer_head* @sb_bread(%struct.super_block* %42, i32 2)
  store %struct.buffer_head* %43, %struct.buffer_head** %8, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = icmp eq %struct.buffer_head* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %93

47:                                               ; preds = %41
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 64
  %52 = inttoptr i64 %51 to %struct.sysv_inode*
  store %struct.sysv_inode* %52, %struct.sysv_inode** %7, align 8
  %53 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %54 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %55 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %53, i32 %56)
  %58 = and i32 %57, -512
  %59 = load i32, i32* @S_IFDIR, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %87, label %61

61:                                               ; preds = %47
  %62 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %63 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %64 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %62, i32 %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %61
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %70 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %71 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %69, i32 %72)
  %74 = and i32 %73, 15
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %68
  %77 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %9, align 8
  %78 = load %struct.sysv_inode*, %struct.sysv_inode** %7, align 8
  %79 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %77, i32 %80)
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* @V7_NFILES, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %76, %68, %61, %47
  %88 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  store i32 0, i32* %3, align 4
  br label %93

90:                                               ; preds = %76
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %87, %46, %40
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
