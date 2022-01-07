; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_attach_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_attach_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_attach_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_attach_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.ocfs2_refcount_tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %19 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ocfs2_super* @OCFS2_SB(i32 %28)
  store %struct.ocfs2_super* %29, %struct.ocfs2_super** %10, align 8
  %30 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %18)
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i32 @ocfs2_create_refcount_tree(%struct.inode* %35, %struct.buffer_head* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %175

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %46 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %53 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le64_to_cpu(i32 %55)
  %57 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %52, i32 %56, i32 1, %struct.ocfs2_refcount_tree** %11, %struct.buffer_head** %7)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %175

63:                                               ; preds = %44
  %64 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %65 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %124

71:                                               ; preds = %63
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call i32 @INODE_CACHE(%struct.inode* %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %75 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %19, i32 %73, %struct.buffer_head* %74)
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call i32 @i_size_read(%struct.inode* %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @ocfs2_clusters_for_bytes(i32 %80, i32 %81)
  store i64 %82, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %119, %71
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @ocfs2_get_clusters(%struct.inode* %88, i64 %89, i64* %17, i64* %15, i32* %12)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %158

96:                                               ; preds = %87
  %97 = load i64, i64* %17, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %99
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %107 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %106, i32 0, i32 0
  %108 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @ocfs2_add_refcount_flag(%struct.inode* %105, %struct.ocfs2_extent_tree* %19, i32* %107, %struct.buffer_head* %108, i64 %109, i64 %110, i64 %111, %struct.ocfs2_cached_dealloc_ctxt* %18, i32* null)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %158

118:                                              ; preds = %104
  store i32 1, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %99, %96
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %14, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %14, align 8
  br label %83

123:                                              ; preds = %83
  br label %124

124:                                              ; preds = %123, %70
  %125 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %126 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %134 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %135 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %134, i32 0, i32 0
  %136 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %137 = call i32 @ocfs2_xattr_attach_refcount_tree(%struct.inode* %132, %struct.buffer_head* %133, i32* %135, %struct.buffer_head* %136, %struct.ocfs2_cached_dealloc_ctxt* %18)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %158

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %124
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load %struct.inode*, %struct.inode** %3, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %150 = call i32 @ocfs2_change_ctime(%struct.inode* %148, %struct.buffer_head* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @mlog_errno(i32 %154)
  br label %156

156:                                              ; preds = %153, %147
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %140, %115, %93
  %159 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %160 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %161 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %159, %struct.ocfs2_refcount_tree* %160, i32 1)
  %162 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %158
  %167 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %18)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %171 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %170, i32 1)
  %172 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %173 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %172, %struct.ocfs2_cached_dealloc_ctxt* %18)
  br label %174

174:                                              ; preds = %169, %166, %158
  br label %175

175:                                              ; preds = %174, %60, %40
  %176 = load %struct.inode*, %struct.inode** %3, align 8
  %177 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %176, i32 0)
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_create_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @ocfs2_add_refcount_flag(%struct.inode*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head*, i64, i64, i64, %struct.ocfs2_cached_dealloc_ctxt*, i32*) #1

declare dso_local i32 @ocfs2_xattr_attach_refcount_tree(%struct.inode*, %struct.buffer_head*, i32*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_change_ctime(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
