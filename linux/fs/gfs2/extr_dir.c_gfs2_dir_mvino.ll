; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_mvino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_mvino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_dirent = type { i32 }

@gfs2_dirent_find = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_mvino(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.gfs2_dirent*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load %struct.qstr*, %struct.qstr** %7, align 8
  %15 = load i32, i32* @gfs2_dirent_find, align 4
  %16 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_4__* %13, %struct.qstr* %14, i32 %15, %struct.buffer_head** %10)
  store %struct.gfs2_dirent* %16, %struct.gfs2_dirent** %11, align 8
  %17 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %18 = icmp ne %struct.gfs2_dirent* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %21 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %20)
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %26 = call i64 @IS_ERR(%struct.gfs2_dirent* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.gfs2_dirent* %29)
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %24
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = call i32 @gfs2_trans_add_meta(i32 %34, %struct.buffer_head* %35)
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %39 = call i32 @gfs2_inum_out(%struct.gfs2_inode* %37, %struct.gfs2_dirent* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %43 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %45 = call i32 @brelse(%struct.buffer_head* %44)
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 0
  %48 = call i32 @current_time(%struct.TYPE_4__* %47)
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 4
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 0
  %57 = call i32 @mark_inode_dirty_sync(%struct.TYPE_4__* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %31, %28, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_4__*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_inum_out(%struct.gfs2_inode*, %struct.gfs2_dirent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
