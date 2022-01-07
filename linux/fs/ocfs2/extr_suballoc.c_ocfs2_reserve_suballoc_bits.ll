; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_alloc_context = type { i64, %struct.buffer_head*, i32, i64, %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CHAIN_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid chain allocator %llu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i64, i32*, i32)* @ocfs2_reserve_suballoc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1, i32 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  %19 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %21 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %23, i32 %24, i64 %25)
  store %struct.inode* %26, %struct.inode** %16, align 8
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @mlog_errno(i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %181

35:                                               ; preds = %6
  %36 = load %struct.inode*, %struct.inode** %16, align 8
  %37 = call i32 @inode_lock(%struct.inode* %36)
  %38 = load %struct.inode*, %struct.inode** %16, align 8
  %39 = call i32 @ocfs2_inode_lock(%struct.inode* %38, %struct.buffer_head** %17, i32 1)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %16, align 8
  %44 = call i32 @inode_unlock(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = call i32 @iput(%struct.inode* %45)
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %181

50:                                               ; preds = %35
  %51 = load %struct.inode*, %struct.inode** %16, align 8
  %52 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %53 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %52, i32 0, i32 4
  store %struct.inode* %51, %struct.inode** %53, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %56 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %60, %struct.ocfs2_dinode** %18, align 8
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %62 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %68 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OCFS2_CHAIN_FL, align 4
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %50
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %79 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le64_to_cpu(i32 %80)
  %82 = call i32 @ocfs2_error(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %81)
  store i32 %82, i32* %14, align 4
  br label %171

83:                                               ; preds = %50
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le32_to_cpu(i32 %88)
  %90 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @le32_to_cpu(i32 %94)
  %96 = sub nsw i64 %89, %95
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %19, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %165

100:                                              ; preds = %83
  %101 = load %struct.inode*, %struct.inode** %16, align 8
  %102 = call i64 @ocfs2_is_cluster_bitmap(%struct.inode* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %19, align 8
  %107 = call i32 @trace_ocfs2_reserve_suballoc_bits_nospc(i64 %105, i64 %106)
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %171

110:                                              ; preds = %100
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @trace_ocfs2_reserve_suballoc_bits_no_new_group(i64 %116, i64 %117, i64 %118)
  %120 = load i32, i32* @ENOSPC, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %171

122:                                              ; preds = %110
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %124 = load %struct.inode*, %struct.inode** %16, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %126 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %127 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @ocfs2_block_group_alloc(%struct.ocfs2_super* %123, %struct.inode* %124, %struct.buffer_head* %125, i32 %128, i32* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @ENOSPC, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %142

142:                                              ; preds = %139, %134
  br label %171

143:                                              ; preds = %122
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %145 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = call i32 @atomic_inc(i32* %146)
  %148 = load i64, i64* %15, align 8
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @le32_to_cpu(i32 %153)
  %155 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %156 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @le32_to_cpu(i32 %159)
  %161 = sub nsw i64 %154, %160
  %162 = icmp sgt i64 %148, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @BUG_ON(i32 %163)
  br label %165

165:                                              ; preds = %143, %83
  %166 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %167 = call i32 @get_bh(%struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %169 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %170 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %169, i32 0, i32 1
  store %struct.buffer_head* %168, %struct.buffer_head** %170, align 8
  br label %171

171:                                              ; preds = %165, %142, %115, %104, %74
  %172 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %173 = call i32 @brelse(%struct.buffer_head* %172)
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @mlog_errno(i32 %177)
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %42, %29
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_reserve_suballoc_bits_nospc(i64, i64) #1

declare dso_local i32 @trace_ocfs2_reserve_suballoc_bits_no_new_group(i64, i64, i64) #1

declare dso_local i32 @ocfs2_block_group_alloc(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
