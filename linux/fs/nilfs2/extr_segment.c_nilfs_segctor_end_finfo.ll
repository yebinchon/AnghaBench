; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_end_finfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_end_finfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.nilfs_segment_buffer*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.nilfs_segment_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.inode = type { i64 }
%struct.nilfs_finfo = type { i8*, i8*, i8*, i8* }
%struct.nilfs_inode_info = type { i64, i32 }

@NILFS_I_GCINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, %struct.inode*)* @nilfs_segctor_end_finfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_end_finfo(%struct.nilfs_sc_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_finfo*, align 8
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca %struct.nilfs_segment_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %15)
  store %struct.nilfs_inode_info* %16, %struct.nilfs_inode_info** %6, align 8
  %17 = load i32, i32* @NILFS_I_GCINODE, align 4
  %18 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %19 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %38

26:                                               ; preds = %14
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @NILFS_ROOT_METADATA_FILE(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %33, %32
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %40 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %40, i32 0, i32 3
  %42 = call %struct.nilfs_finfo* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info* %39, %struct.TYPE_6__* %41, i32 32)
  store %struct.nilfs_finfo* %42, %struct.nilfs_finfo** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_le64(i64 %45)
  %47 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %48 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %54 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %56 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @cpu_to_le32(i64 %57)
  %59 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %60 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i8* @cpu_to_le64(i64 %61)
  %63 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %5, align 8
  %64 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %66 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %65, i32 0, i32 5
  %67 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %66, align 8
  store %struct.nilfs_segment_buffer* %67, %struct.nilfs_segment_buffer** %7, align 8
  %68 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %69 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %73 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %76, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %71, %83
  %85 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %89 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %88, i32 0, i32 3
  %90 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %91 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %90, i32 0, i32 2
  %92 = bitcast %struct.TYPE_6__* %89 to i8*
  %93 = bitcast %struct.TYPE_6__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %97 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %38, %13
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @NILFS_ROOT_METADATA_FILE(i64) #1

declare dso_local %struct.nilfs_finfo* @nilfs_segctor_map_segsum_entry(%struct.nilfs_sc_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
