; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c__ocfs2_free_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c__ocfs2_free_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i32, i64, i32, void (i32, i64*)*)* @_ocfs2_free_suballoc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocfs2_free_suballoc_bits(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i64 %4, i32 %5, void (i32, i64*)* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca void (i32, i64*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_chain_list*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_group_desc*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store void (i32, i64*)* %6, void (i32, i64*)** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %17, align 8
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.ocfs2_chain_list* %27, %struct.ocfs2_chain_list** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %29 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %34, %35
  %37 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %18, align 8
  %38 = call i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list* %37)
  %39 = icmp ugt i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @trace_ocfs2_free_suballoc_bits(i64 %45, i64 %46, i32 %47, i32 %48)
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %50, %struct.ocfs2_dinode* %51, i64 %52, %struct.buffer_head** %19)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %7
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %137

59:                                               ; preds = %7
  %60 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %63, %struct.ocfs2_group_desc** %20, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %69 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le16_to_cpu(i32 %70)
  %72 = icmp ugt i64 %67, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load void (i32, i64*)*, void (i32, i64*)** %14, align 8
  %82 = call i32 @ocfs2_block_group_clear_bits(i32* %75, %struct.inode* %76, %struct.ocfs2_group_desc* %77, %struct.buffer_head* %78, i32 %79, i32 %80, void (i32, i64*)* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %59
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %137

88:                                               ; preds = %59
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @INODE_CACHE(%struct.inode* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %93 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %94 = call i32 @ocfs2_journal_access_di(i32* %89, i32 %91, %struct.buffer_head* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ocfs2_block_group_set_bits(i32* %100, %struct.inode* %101, %struct.ocfs2_group_desc* %102, %struct.buffer_head* %103, i32 %104, i32 %105)
  br label %137

107:                                              ; preds = %88
  %108 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %18, align 8
  %109 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %112 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le16_to_cpu(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @le32_add_cpu(i32* %116, i32 %117)
  %119 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %120 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @le32_to_cpu(i32 %123)
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i32, i32* %13, align 4
  %127 = zext i32 %126 to i64
  %128 = sub nsw i64 %125, %127
  %129 = call i32 @cpu_to_le32(i64 %128)
  %130 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %131 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %136 = call i32 @ocfs2_journal_dirty(i32* %134, %struct.buffer_head* %135)
  br label %137

137:                                              ; preds = %107, %97, %85, %56
  %138 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %139 = call i32 @brelse(%struct.buffer_head* %138)
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @mlog_errno(i32 %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load i32, i32* %15, align 4
  ret i32 %146
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_bits_per_group(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @trace_ocfs2_free_suballoc_bits(i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_block_group_clear_bits(i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32, void (i32, i64*)*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
