; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c___ocfs2_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i8*, i32)* @__ocfs2_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_delete_entry(i32* %0, %struct.inode* %1, %struct.ocfs2_dir_entry* %2, %struct.buffer_head* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dir_entry*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_dir_entry*, align 8
  %14 = alloca %struct.ocfs2_dir_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i32*, i32, %struct.buffer_head*, i32)*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_dir_entry* %2, %struct.ocfs2_dir_entry** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %16, align 4
  store i32 (i32*, i32, %struct.buffer_head*, i32)* @ocfs2_journal_access_db, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 (i32*, i32, %struct.buffer_head*, i32)* @ocfs2_journal_access_di, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  br label %28

28:                                               ; preds = %27, %6
  store i32 0, i32* %15, align 4
  store %struct.ocfs2_dir_entry* null, %struct.ocfs2_dir_entry** %14, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %30, %struct.ocfs2_dir_entry** %13, align 8
  br label %31

31:                                               ; preds = %85, %28
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ocfs2_check_dir_entry(%struct.inode* %36, %struct.ocfs2_dir_entry* %37, %struct.buffer_head* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %50 = icmp eq %struct.ocfs2_dir_entry* %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load i32 (i32*, i32, %struct.buffer_head*, i32)*, i32 (i32*, i32, %struct.buffer_head*, i32)** %17, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @INODE_CACHE(%struct.inode* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %57 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %58 = call i32 %52(i32* %53, i32 %55, %struct.buffer_head* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %103

66:                                               ; preds = %51
  %67 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %14, align 8
  %68 = icmp ne %struct.ocfs2_dir_entry* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %14, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %70, i32 0, i32 0
  %72 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = call i32 @le16_add_cpu(i32* %71, i32 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %79 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call i32 @inode_inc_iversion(%struct.inode* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %84 = call i32 @ocfs2_journal_dirty(i32* %82, %struct.buffer_head* %83)
  br label %103

85:                                               ; preds = %47
  %86 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %87 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  store %struct.ocfs2_dir_entry* %92, %struct.ocfs2_dir_entry** %14, align 8
  %93 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %94 = bitcast %struct.ocfs2_dir_entry* %93 to i8*
  %95 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  %101 = bitcast i8* %100 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %101, %struct.ocfs2_dir_entry** %13, align 8
  br label %31

102:                                              ; preds = %31
  br label %103

103:                                              ; preds = %102, %77, %61, %42
  %104 = load i32, i32* %16, align 4
  ret i32 %104
}

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
