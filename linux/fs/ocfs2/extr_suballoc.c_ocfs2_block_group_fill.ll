; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_chain_list = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_group_desc = type { i8*, i8*, i64, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"group block (%llu) != b_blocknr (%llu)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_GROUP_DESC_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i64, i32, i64, %struct.ocfs2_chain_list*)* @ocfs2_block_group_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_fill(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i32 %4, i64 %5, %struct.ocfs2_chain_list* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocfs2_chain_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.ocfs2_chain_list* %6, %struct.ocfs2_chain_list** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  %22 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %16, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %26, %struct.ocfs2_group_desc** %17, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %18, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %7
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load %struct.super_block*, %struct.super_block** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ocfs2_error(%struct.super_block* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %42)
  store i32 %43, i32* %15, align 4
  br label %142

44:                                               ; preds = %7
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @INODE_CACHE(%struct.inode* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %49 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %50 = call i32 @ocfs2_journal_access_gd(i32* %45, i32 %47, %struct.buffer_head* %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %142

56:                                               ; preds = %44
  %57 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %58 = load %struct.super_block*, %struct.super_block** %18, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(%struct.ocfs2_group_desc* %57, i32 0, i32 %60)
  %62 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %63 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @OCFS2_GROUP_DESC_SIGNATURE, align 4
  %66 = call i32 @strcpy(i32 %64, i32 %65)
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %72 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.super_block*, %struct.super_block** %18, align 8
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %75 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ocfs2_group_bitmap_size(%struct.super_block* %73, i32 1, i32 %76)
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %80 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %85 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %87 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %94 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @cpu_to_le64(i64 %98)
  %100 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %101 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i8* @cpu_to_le64(i64 %102)
  %104 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %105 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %108 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @le16_to_cpu(i8* %109)
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %56
  %113 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %114 = call i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list* %113)
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %117 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %125

118:                                              ; preds = %56
  %119 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %120 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %121 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @ocfs2_bg_discontig_add_extent(%struct.ocfs2_super* %119, %struct.ocfs2_group_desc* %120, %struct.ocfs2_chain_list* %121, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %112
  %126 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %127 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i64*
  %130 = call i32 @ocfs2_set_bit(i32 0, i64* %129)
  %131 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %132 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @le16_to_cpu(i8* %133)
  %135 = sub i32 %134, 1
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %138 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %141 = call i32 @ocfs2_journal_dirty(i32* %139, %struct.buffer_head* %140)
  br label %142

142:                                              ; preds = %125, %53, %35
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %15, align 4
  ret i32 %149
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_group_desc*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(%struct.super_block*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_bg_discontig_add_extent(%struct.ocfs2_super*, %struct.ocfs2_group_desc*, %struct.ocfs2_chain_list*, i64, i32) #1

declare dso_local i32 @ocfs2_set_bit(i32, i64*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
