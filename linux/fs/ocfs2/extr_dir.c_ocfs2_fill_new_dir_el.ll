; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_el.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_el.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_fill_new_dir_el to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, %struct.buffer_head** %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dir_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %14, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @ocfs2_dir_trailer_blk_off(%struct.TYPE_4__* %31)
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %28, %7
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %40 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %41 = call i32 @ocfs2_do_extend_dir(%struct.TYPE_3__* %36, i32* %37, %struct.inode* %38, %struct.buffer_head* %39, %struct.ocfs2_alloc_context* %40, i32* null, %struct.buffer_head** %17)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %134

47:                                               ; preds = %33
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = call i32 @INODE_CACHE(%struct.inode* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %51 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %49, %struct.buffer_head* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = call i32 @INODE_CACHE(%struct.inode* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %56 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %57 = call i32 @ocfs2_journal_access_db(i32* %52, i32 %54, %struct.buffer_head* %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %134

63:                                               ; preds = %47
  %64 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i32 %66, i32 0, i32 %71)
  %73 = load %struct.inode*, %struct.inode** %11, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call %struct.ocfs2_dir_entry* @ocfs2_fill_initial_dirents(%struct.inode* %73, %struct.inode* %74, i32 %77, i32 %78)
  store %struct.ocfs2_dir_entry* %79, %struct.ocfs2_dir_entry** %18, align 8
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %63
  %84 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = call i64 @OCFS2_DIR_REC_LEN(i32 2)
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %19, align 4
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @ocfs2_init_dir_trailer(%struct.inode* %97, %struct.buffer_head* %98, i32 %99)
  br label %101

101:                                              ; preds = %83, %63
  %102 = load i32*, i32** %9, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %104 = call i32 @ocfs2_journal_dirty(i32* %102, %struct.buffer_head* %103)
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = load %struct.inode*, %struct.inode** %11, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @i_size_write(%struct.inode* %105, i32 %110)
  %112 = load %struct.inode*, %struct.inode** %11, align 8
  %113 = call i32 @set_nlink(%struct.inode* %112, i32 2)
  %114 = load %struct.inode*, %struct.inode** %11, align 8
  %115 = call i32 @ocfs2_inode_sector_count(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %11, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %121 = call i32 @ocfs2_mark_inode_dirty(i32* %118, %struct.inode* %119, %struct.buffer_head* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %101
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  br label %134

127:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %129 = icmp ne %struct.buffer_head** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %132 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %131, %struct.buffer_head** %132, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %124, %60, %44
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  %137 = load i32, i32* %15, align 4
  ret i32 %137
}

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_do_extend_dir(%struct.TYPE_3__*, i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_db(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.ocfs2_dir_entry* @ocfs2_fill_initial_dirents(%struct.inode*, %struct.inode*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ocfs2_init_dir_trailer(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
