; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_cluster_group_search.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_cluster_group_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_suballoc_result = type { i64, i64 }
%struct.ocfs2_group_desc = type { i32, i32, i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i64, %struct.ocfs2_suballoc_result*)* @ocfs2_cluster_group_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cluster_group_search(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64 %4, %struct.ocfs2_suballoc_result* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_suballoc_result*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.ocfs2_suballoc_result* %5, %struct.ocfs2_suballoc_result** %13, align 8
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %26, %struct.ocfs2_group_desc** %17, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ocfs2_super* @OCFS2_SB(i32 %29)
  store %struct.ocfs2_super* %30, %struct.ocfs2_super** %18, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %38 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %142

41:                                               ; preds = %6
  %42 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %43 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le16_to_cpu(i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %50 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le64_to_cpu(i32 %51)
  %53 = call i32 @ocfs2_blocks_to_clusters(i32 %48, i64 %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %19, align 4
  %56 = add i32 %54, %55
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ugt i32 %56, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %41
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %20, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %70 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le64_to_cpu(i32 %71)
  %73 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %74 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @trace_ocfs2_cluster_group_search_wrong_max_bits(i64 %72, i32 %76, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %62, %41
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %89 = call i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super* %84, %struct.buffer_head* %85, i64 %86, i32 %87, %struct.ocfs2_suballoc_result* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %7, align 4
  br label %144

94:                                               ; preds = %83
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %20, align 4
  %102 = zext i32 %101 to i64
  %103 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %104 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %108 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = call i64 @ocfs2_clusters_to_blocks(i32 %100, i64 %110)
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @trace_ocfs2_cluster_group_search_max_block(i64 %112, i64 %113)
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %97
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %144

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121, %94
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %125 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sle i64 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 0, i32* %14, align 4
  br label %141

129:                                              ; preds = %122
  %130 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %131 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %136 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %13, align 8
  %137 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @ocfs2_local_alloc_seen_free_bits(%struct.ocfs2_super* %135, i64 %138)
  br label %140

140:                                              ; preds = %134, %129
  br label %141

141:                                              ; preds = %140, %128
  br label %142

142:                                              ; preds = %141, %6
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %118, %92
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_cluster_group_search_wrong_max_bits(i64, i32, i32, i32) #1

declare dso_local i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super*, %struct.buffer_head*, i64, i32, %struct.ocfs2_suballoc_result*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i32 @trace_ocfs2_cluster_group_search_max_block(i64, i64) #1

declare dso_local i32 @ocfs2_local_alloc_seen_free_bits(%struct.ocfs2_super*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
