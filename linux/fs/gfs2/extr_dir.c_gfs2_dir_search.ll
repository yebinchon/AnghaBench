; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_dirent = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@gfs2_dirent_find = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_dir_search(%struct.inode* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = load i32, i32* @gfs2_dirent_find, align 4
  %18 = call %struct.inode* @gfs2_dirent_search(%struct.inode* %15, %struct.qstr* %16, i32 %17, %struct.buffer_head** %8)
  %19 = bitcast %struct.inode* %18 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %19, %struct.gfs2_dirent** %9, align 8
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %21 = icmp ne %struct.gfs2_dirent* %20, null
  br i1 %21, label %22, label %77

22:                                               ; preds = %3
  %23 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %24 = bitcast %struct.gfs2_dirent* %23 to %struct.inode*
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %29 = bitcast %struct.gfs2_dirent* %28 to %struct.inode*
  %30 = call %struct.inode* @ERR_CAST(%struct.inode* %29)
  store %struct.inode* %30, %struct.inode** %4, align 8
  br label %81

31:                                               ; preds = %22
  %32 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %33 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %37 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %41 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be64_to_cpu(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %46 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be64_to_cpu(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load i32, i32* @EEXIST, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.inode* @ERR_PTR(i32 %56)
  store %struct.inode* %57, %struct.inode** %4, align 8
  br label %81

58:                                               ; preds = %31
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %66 = call %struct.inode* @gfs2_inode_lookup(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store %struct.inode* %66, %struct.inode** %13, align 8
  %67 = load %struct.inode*, %struct.inode** %13, align 8
  %68 = call i64 @IS_ERR(%struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = call %struct.TYPE_4__* @GFS2_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %58
  %76 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %76, %struct.inode** %4, align 8
  br label %81

77:                                               ; preds = %3
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.inode* @ERR_PTR(i32 %79)
  store %struct.inode* %80, %struct.inode** %4, align 8
  br label %81

81:                                               ; preds = %77, %75, %54, %27
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %82
}

declare dso_local %struct.inode* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @gfs2_inode_lookup(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @GFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
