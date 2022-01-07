; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_scan_inode_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_scan_inode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_info_freeinode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, i32, %struct.ocfs2_info_freeinode*, i64)* @ocfs2_info_scan_inode_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_info_scan_inode_alloc(%struct.ocfs2_super* %0, %struct.inode* %1, i32 %2, %struct.ocfs2_info_freeinode* %3, i64 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_info_freeinode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_info_freeinode* %3, %struct.ocfs2_info_freeinode** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %14, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @inode_lock(%struct.inode* %18)
  br label %20

20:                                               ; preds = %17, %5
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.ocfs2_info_freeinode*, %struct.ocfs2_info_freeinode** %9, align 8
  %25 = getelementptr inbounds %struct.ocfs2_info_freeinode, %struct.ocfs2_info_freeinode* %24, i32 0, i32 1
  %26 = call i64 @o2info_coherent(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @ocfs2_inode_lock(%struct.inode* %29, %struct.buffer_head** %13, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %86

36:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  br label %47

37:                                               ; preds = %23, %20
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %38, i32 %39, i32 1, %struct.buffer_head** %13)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %86

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %51, %struct.ocfs2_dinode** %14, align 8
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.ocfs2_info_freeinode*, %struct.ocfs2_info_freeinode** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_info_freeinode, %struct.ocfs2_info_freeinode* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i8* %57, i8** %63, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = ptrtoint i8* %69 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.ocfs2_info_freeinode*, %struct.ocfs2_info_freeinode** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_info_freeinode, %struct.ocfs2_info_freeinode* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %47, %43, %33
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i32 @ocfs2_inode_unlock(%struct.inode* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = icmp ne %struct.inode* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call i32 @inode_unlock(%struct.inode* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @o2info_coherent(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i32, i32, %struct.buffer_head**) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
