; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_clear_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32, i32, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_JOURNAL_ACCESS_UNDO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Group descriptor # %llu has bit count %u but claims %u are freed. num_bits %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32, void (i32, i64*)*)* @ocfs2_block_group_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_clear_bits(i32* %0, %struct.inode* %1, %struct.ocfs2_group_desc* %2, %struct.buffer_head* %3, i32 %4, i32 %5, void (i32, i64*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_group_desc*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca void (i32, i64*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_group_desc*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.ocfs2_group_desc* %2, %struct.ocfs2_group_desc** %11, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store void (i32, i64*)* %6, void (i32, i64*)** %15, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %18, align 8
  %19 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %20 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @trace_ocfs2_block_group_clear_bits(i32 %25, i32 %26)
  %28 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %29 = icmp ne void (i32, i64*)* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %7
  %36 = phi i1 [ false, %7 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @INODE_CACHE(%struct.inode* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %43 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %44 = icmp ne void (i32, i64*)* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @OCFS2_JOURNAL_ACCESS_UNDO, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @ocfs2_journal_access_gd(i32* %39, i32 %41, %struct.buffer_head* %42, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %148

57:                                               ; preds = %49
  %58 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %59 = icmp ne void (i32, i64*)* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %64 = call %struct.TYPE_2__* @bh2jh(%struct.buffer_head* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %67, %struct.ocfs2_group_desc** %18, align 8
  %68 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %69 = icmp ne %struct.ocfs2_group_desc* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  br label %73

73:                                               ; preds = %60, %57
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %99, %73
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %17, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %17, align 4
  %82 = add i32 %80, %81
  %83 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %84 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i64*
  %87 = call i32 @ocfs2_clear_bit(i32 %82, i64* %86)
  %88 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %89 = icmp ne void (i32, i64*)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %17, align 4
  %94 = add i32 %92, %93
  %95 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %18, align 8
  %96 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i64*
  call void %91(i32 %94, i64* %98)
  br label %99

99:                                               ; preds = %90, %79
  br label %75

100:                                              ; preds = %75
  %101 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %102 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %101, i32 0, i32 0
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @le16_add_cpu(i32* %102, i32 %103)
  %105 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %106 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @le16_to_cpu(i32 %107)
  %109 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %110 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le16_to_cpu(i32 %111)
  %113 = icmp sgt i64 %108, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %100
  %115 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %116 = icmp ne void (i32, i64*)* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %119 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %125 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @le64_to_cpu(i32 %126)
  %128 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %129 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le16_to_cpu(i32 %130)
  %132 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %133 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @le16_to_cpu(i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @ocfs2_error(i32 %123, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %127, i64 %131, i64 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %150

138:                                              ; preds = %100
  %139 = load void (i32, i64*)*, void (i32, i64*)** %15, align 8
  %140 = icmp ne void (i32, i64*)* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %143 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %147 = call i32 @ocfs2_journal_dirty(i32* %145, %struct.buffer_head* %146)
  br label %148

148:                                              ; preds = %144, %54
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %148, %120
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @trace_ocfs2_block_group_clear_bits(i32, i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i64*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
