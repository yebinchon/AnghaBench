; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_relink_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_relink_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ocfs2_group_desc = type { i8*, i8* }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.buffer_head*, i64)* @ocfs2_relink_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_relink_block_group(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.buffer_head* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %16, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %26, %struct.ocfs2_group_desc** %17, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %30, %struct.ocfs2_group_desc** %18, align 8
  %31 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %32 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %38 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @le64_to_cpu(i8* %45)
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %49 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @le64_to_cpu(i8* %50)
  %52 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %53 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @le64_to_cpu(i8* %54)
  %56 = call i32 @trace_ocfs2_relink_block_group(i64 %46, i64 %47, i64 %51, i64 %55)
  %57 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %58 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @le64_to_cpu(i8* %59)
  store i64 %60, i64* %14, align 8
  %61 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %62 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @le64_to_cpu(i8* %63)
  store i64 %64, i64* %15, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i32 @INODE_CACHE(%struct.inode* %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %70 = call i32 @ocfs2_journal_access_gd(i32* %65, i32 %67, %struct.buffer_head* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %6
  br label %131

74:                                               ; preds = %6
  %75 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %76 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %79 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = call i32 @ocfs2_journal_dirty(i32* %80, %struct.buffer_head* %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call i32 @INODE_CACHE(%struct.inode* %84)
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %88 = call i32 @ocfs2_journal_access_gd(i32* %83, i32 %85, %struct.buffer_head* %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %144

92:                                               ; preds = %74
  %93 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %94 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %103 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %106 = call i32 @ocfs2_journal_dirty(i32* %104, %struct.buffer_head* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call i32 @INODE_CACHE(%struct.inode* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %111 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %112 = call i32 @ocfs2_journal_access_di(i32* %107, i32 %109, %struct.buffer_head* %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %92
  br label %139

116:                                              ; preds = %92
  %117 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %118 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %121 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i8* %119, i8** %127, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = call i32 @ocfs2_journal_dirty(i32* %128, %struct.buffer_head* %129)
  br label %131

131:                                              ; preds = %144, %116, %73
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @mlog_errno(i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %13, align 4
  ret i32 %138

139:                                              ; preds = %115
  %140 = load i64, i64* %14, align 8
  %141 = call i8* @cpu_to_le64(i64 %140)
  %142 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %143 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %139, %91
  %145 = load i64, i64* %15, align 8
  %146 = call i8* @cpu_to_le64(i64 %145)
  %147 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %148 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %131
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @trace_ocfs2_relink_block_group(i64, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
