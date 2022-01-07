; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_block_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.iomap = type { i64, i64, i32, i32 }

@__const.gfs2_block_map.mp = private unnamed_addr constant %struct.metapath { i32 1 }, align 4
@IOMAP_WRITE = common dso_local global i32 0, align 4
@IOMAP_HOLE = common dso_local global i64 0, align 8
@IOMAP_F_GFS2_BOUNDARY = common dso_local global i32 0, align 4
@IOMAP_NULL_ADDR = common dso_local global i32 0, align 4
@IOMAP_F_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_block_map(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapath, align 4
  %13 = alloca %struct.iomap, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = bitcast %struct.metapath* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.metapath* @__const.gfs2_block_map.mp to i8*), i64 4, i1 false)
  %27 = bitcast %struct.iomap* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = call i32 @clear_buffer_mapped(%struct.buffer_head* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = call i32 @clear_buffer_new(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call i32 @clear_buffer_boundary(%struct.buffer_head* %32)
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @trace_gfs2_bmap(%struct.gfs2_inode* %34, %struct.buffer_head* %35, i64 %36, i32 %37, i32 1)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IOMAP_WRITE, align 4
  %46 = call i32 @gfs2_iomap_get(%struct.inode* %42, i32 %43, i32 %44, i32 %45, %struct.iomap* %13, %struct.metapath* %12)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IOMAP_HOLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @gfs2_iomap_alloc(%struct.inode* %55, %struct.iomap* %13, %struct.metapath* %12)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %49, %41
  %58 = call i32 @release_metapath(%struct.metapath* %12)
  br label %65

59:                                               ; preds = %4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @gfs2_iomap_get(%struct.inode* %60, i32 %61, i32 %62, i32 0, %struct.iomap* %13, %struct.metapath* %12)
  store i32 %63, i32* %14, align 4
  %64 = call i32 @release_metapath(%struct.metapath* %12)
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %129

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %69
  %78 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* @IOMAP_F_GFS2_BOUNDARY, align 4
  %84 = xor i32 %83, -1
  %85 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %77, %69
  %89 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IOMAP_NULL_ADDR, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %99, %102
  %104 = call i32 @map_bh(%struct.buffer_head* %94, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %93, %88
  %106 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IOMAP_F_GFS2_BOUNDARY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %118 = call i32 @set_buffer_boundary(%struct.buffer_head* %117)
  br label %119

119:                                              ; preds = %116, %105
  %120 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IOMAP_F_NEW, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %127 = call i32 @set_buffer_new(%struct.buffer_head* %126)
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %128, %68
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @trace_gfs2_bmap(%struct.gfs2_inode* %130, %struct.buffer_head* %131, i64 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %14, align 4
  ret i32 %136
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @trace_gfs2_bmap(%struct.gfs2_inode*, %struct.buffer_head*, i64, i32, i32) #1

declare dso_local i32 @gfs2_iomap_get(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @gfs2_iomap_alloc(%struct.inode*, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @release_metapath(%struct.metapath*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
