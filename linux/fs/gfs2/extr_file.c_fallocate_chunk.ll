; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_fallocate_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_fallocate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.iomap = type { i64, i32, i32, i32 }

@IOMAP_F_NEW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to zero data buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32)* @fallocate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallocate_chunk(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.iomap, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %25 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %24, %struct.buffer_head** %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %105

31:                                               ; preds = %4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %36 = call i32 @gfs2_trans_add_meta(i32 %34, %struct.buffer_head* %35)
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %38 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %42 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %41, i32* null)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %101

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %99, %76, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  %54 = bitcast %struct.iomap* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 24, i1 false)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 @gfs2_iomap_get_alloc(%struct.inode* %55, i64 %56, i64 %59, %struct.iomap* %15)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %101

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %7, align 8
  %71 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IOMAP_F_NEW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %49

77:                                               ; preds = %64
  %78 = load %struct.super_block*, %struct.super_block** %10, align 8
  %79 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %80, %83
  %85 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %86, %89
  %91 = load i32, i32* @GFP_NOFS, align 4
  %92 = call i32 @sb_issue_zeroout(%struct.super_block* %78, i32 %84, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %77
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = call i32 @GFS2_SB(%struct.inode* %96)
  %98 = call i32 @fs_err(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %101

99:                                               ; preds = %77
  br label %49

100:                                              ; preds = %49
  br label %101

101:                                              ; preds = %100, %95, %63, %46
  %102 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %29
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_iomap_get_alloc(%struct.inode*, i64, i64, %struct.iomap*) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @fs_err(i32, i8*) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
