; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_prepare_orphan_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_prepare_orphan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode**, i32, i8*, %struct.ocfs2_dir_lookup_result*, i32)* @ocfs2_prepare_orphan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %0, %struct.inode** %1, i32 %2, i8* %3, %struct.ocfs2_dir_lookup_result* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.inode**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.inode** %1, %struct.inode*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.inode* null, %struct.inode** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %18 = call i32 @ocfs2_lookup_lock_orphan_dir(%struct.ocfs2_super* %17, %struct.inode** %14, %struct.buffer_head** %15)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %16, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %7, align 4
  br label %61

25:                                               ; preds = %6
  %26 = load %struct.inode*, %struct.inode** %14, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @__ocfs2_prepare_orphan_dir(%struct.inode* %26, %struct.buffer_head* %27, i32 %28, i8* %29, %struct.ocfs2_dir_lookup_result* %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %41

38:                                               ; preds = %25
  %39 = load %struct.inode*, %struct.inode** %14, align 8
  %40 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %39, %struct.inode** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %43 = call i32 @brelse(%struct.buffer_head* %42)
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.inode*, %struct.inode** %14, align 8
  %48 = call i32 @ocfs2_inode_unlock(%struct.inode* %47, i32 1)
  %49 = load %struct.inode*, %struct.inode** %14, align 8
  %50 = call i32 @inode_unlock(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %14, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @ocfs2_lookup_lock_orphan_dir(%struct.ocfs2_super*, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_prepare_orphan_dir(%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_dir_lookup_result*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
