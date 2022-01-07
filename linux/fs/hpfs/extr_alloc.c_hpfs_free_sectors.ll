; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_free_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_free_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_sb_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Trying to free reserved sector %08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"sector %08x not allocated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_free_sectors(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %10)
  store %struct.hpfs_sb_info* %11, %struct.hpfs_sb_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %100

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 18
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @hpfs_error(%struct.super_block* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %100

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %23, 65535
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 65535, %25 ], [ %27, %26 ]
  %30 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %31 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %35 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 16777215
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %9, align 8
  %40 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %39, i32 0, i32 0
  store i32 16777215, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %28
  br label %42

42:                                               ; preds = %96, %41
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 14
  %46 = call i32* @hpfs_map_bitmap(%struct.super_block* %43, i32 %45, %struct.quad_buffer_head* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %100

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %99, %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 16383
  %54 = ashr i32 %53, 5
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 31
  %61 = ashr i32 %58, %60
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @hpfs_error(%struct.super_block* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %100

69:                                               ; preds = %50
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 31
  %72 = shl i32 1, %71
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 16383
  %77 = ashr i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %73
  store i32 %81, i32* %79, align 4
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @hpfs_claim_free(%struct.super_block* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %69
  %89 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %7)
  %90 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %100

91:                                               ; preds = %69
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = and i32 %93, 16383
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %7)
  %98 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %42

99:                                               ; preds = %91
  br label %50

100:                                              ; preds = %88, %64, %48, %18, %14
  ret void
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hpfs_claim_free(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
