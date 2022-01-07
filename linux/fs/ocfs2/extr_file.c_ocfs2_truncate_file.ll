; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_truncate_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_truncate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [69 x i8] c"Inode %llu, inode i_size = %lld != di i_size = %llu, i_flags = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_file(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ocfs2_super* @OCFS2_SB(i32 %12)
  store %struct.ocfs2_super* %13, %struct.ocfs2_super** %9, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %17, %struct.ocfs2_dinode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le64_to_cpu(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @trace_ocfs2_truncate_file(i64 %21, i64 %25, i64 %26)
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i64 @i_size_read(%struct.inode* %32)
  %34 = icmp ne i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i64 @i_size_read(%struct.inode* %40)
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le64_to_cpu(i32 %44)
  %46 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = call i32 @mlog_bug_on_msg(i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %41, i64 %45, i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = icmp sgt i64 %51, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %3
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @trace_ocfs2_truncate_file_error(i64 %61, i64 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %139

68:                                               ; preds = %3
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = call i32 @down_write(i32* %71)
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 0
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = call i32 @ocfs2_resv_discard(i32* %74, i32* %77)
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = add nsw i64 %82, %83
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @unmap_mapping_range(i32 %81, i64 %85, i32 0, i32 1)
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @truncate_inode_pages(i32 %89, i64 %90)
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %68
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = call i64 @i_size_read(%struct.inode* %103)
  %105 = call i32 @ocfs2_truncate_inline(%struct.inode* %100, %struct.buffer_head* %101, i64 %102, i64 %104, i32 1)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %111

111:                                              ; preds = %108, %99
  br label %134

112:                                              ; preds = %68
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @ocfs2_orphan_for_truncate(%struct.ocfs2_super* %113, %struct.inode* %114, %struct.buffer_head* %115, i64 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %134

123:                                              ; preds = %112
  %124 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %127 = call i32 @ocfs2_commit_truncate(%struct.ocfs2_super* %124, %struct.inode* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @mlog_errno(i32 %131)
  br label %134

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %130, %120, %111
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = call i32 @up_write(i32* %137)
  br label %139

139:                                              ; preds = %134, %57
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %143)
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %151 = call i32 @ocfs2_try_remove_refcount_tree(%struct.inode* %149, %struct.buffer_head* %150)
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %142, %139
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_truncate_file(i64, i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_truncate_file_error(i64, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ocfs2_resv_discard(i32*, i32*) #1

declare dso_local i32 @unmap_mapping_range(i32, i64, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(i32, i64) #1

declare dso_local i32 @ocfs2_truncate_inline(%struct.inode*, %struct.buffer_head*, i64, i64, i32) #1

declare dso_local i32 @ocfs2_orphan_for_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64) #1

declare dso_local i32 @ocfs2_commit_truncate(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_try_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
