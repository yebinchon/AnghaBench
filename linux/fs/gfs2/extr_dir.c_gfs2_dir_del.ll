; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i32, i32 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i32 }
%struct.gfs2_dirent = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_leaf = type { i32, i32, i32 }

@gfs2_dirent_prev = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_del(%struct.gfs2_inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.gfs2_dirent*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.timespec64, align 4
  %11 = alloca %struct.gfs2_leaf*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  store %struct.qstr* %14, %struct.qstr** %6, align 8
  store %struct.gfs2_dirent* null, %struct.gfs2_dirent** %8, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 1
  %17 = call i64 @current_time(%struct.TYPE_5__* %16)
  %18 = bitcast %struct.timespec64* %10 to i64*
  store i64 %17, i64* %18, align 4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 1
  %21 = load %struct.qstr*, %struct.qstr** %6, align 8
  %22 = load i32, i32* @gfs2_dirent_prev, align 4
  %23 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_5__* %20, %struct.qstr* %21, i32 %22, %struct.buffer_head** %9)
  store %struct.gfs2_dirent* %23, %struct.gfs2_dirent** %7, align 8
  %24 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %25 = icmp ne %struct.gfs2_dirent* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %28 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %134

31:                                               ; preds = %2
  %32 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %33 = call i64 @IS_ERR(%struct.gfs2_dirent* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %37 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %36)
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.gfs2_dirent* %38)
  store i32 %39, i32* %3, align 4
  br label %134

40:                                               ; preds = %31
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %42 = load %struct.qstr*, %struct.qstr** %6, align 8
  %43 = call i64 @gfs2_dirent_find(%struct.gfs2_dirent* %41, %struct.qstr* %42, i32* null)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  store %struct.gfs2_dirent* %46, %struct.gfs2_dirent** %8, align 8
  %47 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %48 = bitcast %struct.gfs2_dirent* %47 to i8*
  %49 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %50 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = bitcast i8* %54 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %55, %struct.gfs2_dirent** %7, align 8
  br label %56

56:                                               ; preds = %45, %40
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %59 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %8, align 8
  %60 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %61 = call i32 @dirent_del(%struct.gfs2_inode* %57, %struct.buffer_head* %58, %struct.gfs2_dirent* %59, %struct.gfs2_dirent* %60)
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %56
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %72, %struct.gfs2_leaf** %11, align 8
  %73 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %74 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be16_to_cpu(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %81 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %80)
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %12, align 4
  %85 = call i32 @cpu_to_be16(i32 %84)
  %86 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %87 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cpu_to_be32(i32 %89)
  %91 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %92 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cpu_to_be64(i32 %94)
  %96 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %97 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %82, %56
  %99 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %107 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %114 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %117 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = bitcast %struct.timespec64* %118 to i8*
  %120 = bitcast %struct.timespec64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 8, i1 false)
  %121 = bitcast %struct.timespec64* %115 to i8*
  %122 = bitcast %struct.timespec64* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 8, i1 false)
  %123 = load %struct.dentry*, %struct.dentry** %5, align 8
  %124 = call i64 @d_is_dir(%struct.dentry* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %108
  %127 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %128 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %127, i32 0, i32 1
  %129 = call i32 @drop_nlink(%struct.TYPE_5__* %128)
  br label %130

130:                                              ; preds = %126, %108
  %131 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %132 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %131, i32 0, i32 1
  %133 = call i32 @mark_inode_dirty(%struct.TYPE_5__* %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %35, %26
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @current_time(%struct.TYPE_5__*) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_5__*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @gfs2_dirent_find(%struct.gfs2_dirent*, %struct.qstr*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dirent_del(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_dirent*, %struct.gfs2_dirent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_5__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
