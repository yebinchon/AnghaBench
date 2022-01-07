; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_chain_list = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ocfs2_alloc_context = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64*, i32)* @ocfs2_block_group_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_alloc(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %15, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %26)
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.ocfs2_chain_list* %31, %struct.ocfs2_chain_list** %16, align 8
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %33 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %34 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @le16_to_cpu(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super* %32, i64 %36, i64 %37, i32 %38, %struct.ocfs2_alloc_context** %17)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %6
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %269

51:                                               ; preds = %6
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %56 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @le16_to_cpu(i32 %57)
  %59 = call i32 @ocfs2_calc_group_alloc_credits(i32 %54, i64 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call %struct.buffer_head* @ocfs2_start_trans(%struct.ocfs2_super* %60, i32 %61)
  store %struct.buffer_head* %62, %struct.buffer_head** %18, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %64 = call i64 @IS_ERR(%struct.buffer_head* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %68 = call i32 @PTR_ERR(%struct.buffer_head* %67)
  store i32 %68, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %269

71:                                               ; preds = %51
  %72 = load i64*, i64** %11, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @trace_ocfs2_block_group_alloc(i64 %80)
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %85 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %74, %71
  %87 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %91 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %92 = call %struct.buffer_head* @ocfs2_block_group_alloc_contig(%struct.ocfs2_super* %87, %struct.buffer_head* %88, %struct.inode* %89, %struct.ocfs2_alloc_context* %90, %struct.ocfs2_chain_list* %91)
  store %struct.buffer_head* %92, %struct.buffer_head** %20, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %94 = call i64 @IS_ERR(%struct.buffer_head* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %98 = call i32 @PTR_ERR(%struct.buffer_head* %97)
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %106 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %107 = call %struct.buffer_head* @ocfs2_block_group_alloc_discontig(%struct.buffer_head* %103, %struct.inode* %104, %struct.ocfs2_alloc_context* %105, %struct.ocfs2_chain_list* %106)
  store %struct.buffer_head* %107, %struct.buffer_head** %20, align 8
  br label %108

108:                                              ; preds = %102, %96, %86
  %109 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %110 = call i64 @IS_ERR(%struct.buffer_head* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %114 = call i32 @PTR_ERR(%struct.buffer_head* %113)
  store i32 %114, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ENOSPC, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %122

122:                                              ; preds = %119, %112
  br label %269

123:                                              ; preds = %108
  %124 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %127, %struct.ocfs2_group_desc** %21, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call i32 @INODE_CACHE(%struct.inode* %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %132 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %133 = call i32 @ocfs2_journal_access_di(%struct.buffer_head* %128, i32 %130, %struct.buffer_head* %131, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @mlog_errno(i32 %137)
  br label %269

139:                                              ; preds = %123
  %140 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %141 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le16_to_cpu(i32 %142)
  store i64 %143, i64* %19, align 8
  %144 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %145 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %144, i32 0, i32 3
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i64, i64* %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %151 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @le16_to_cpu(i32 %152)
  %154 = call i32 @le32_add_cpu(i32* %149, i64 %153)
  %155 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %156 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %155, i32 0, i32 3
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i64, i64* %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %162 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @le16_to_cpu(i32 %163)
  %165 = call i32 @le32_add_cpu(i32* %160, i64 %164)
  %166 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %167 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %170 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %169, i32 0, i32 3
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i64, i64* %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32 %168, i32* %174, align 4
  %175 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %176 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @le16_to_cpu(i32 %177)
  %179 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %180 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @le16_to_cpu(i32 %181)
  %183 = icmp slt i64 %178, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %139
  %185 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %186 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %185, i32 0, i32 1
  %187 = call i32 @le16_add_cpu(i32* %186, i32 1)
  br label %188

188:                                              ; preds = %184, %139
  %189 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %190 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %194 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @le16_to_cpu(i32 %195)
  %197 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %198 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @le16_to_cpu(i32 %199)
  %201 = sub nsw i64 %196, %200
  %202 = call i32 @le32_add_cpu(i32* %192, i64 %201)
  %203 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %204 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %208 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @le16_to_cpu(i32 %209)
  %211 = call i32 @le32_add_cpu(i32* %206, i64 %210)
  %212 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %213 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %212, i32 0, i32 1
  %214 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %215 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @le16_to_cpu(i32 %216)
  %218 = call i32 @le32_add_cpu(i32* %213, i64 %217)
  %219 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %220 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %221 = call i32 @ocfs2_journal_dirty(%struct.buffer_head* %219, %struct.buffer_head* %220)
  %222 = load %struct.inode*, %struct.inode** %8, align 8
  %223 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %222)
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = call i32 @spin_lock(i32* %224)
  %226 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %227 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @le32_to_cpu(i32 %228)
  %230 = load %struct.inode*, %struct.inode** %8, align 8
  %231 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %230)
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load %struct.inode*, %struct.inode** %8, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %237 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32_to_cpu(i32 %238)
  %240 = call i32 @ocfs2_clusters_to_bytes(i32 %235, i32 %239)
  %241 = call i32 @cpu_to_le64(i32 %240)
  %242 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %243 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.inode*, %struct.inode** %8, align 8
  %245 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = call i32 @spin_unlock(i32* %246)
  %248 = load %struct.inode*, %struct.inode** %8, align 8
  %249 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %250 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @le64_to_cpu(i32 %251)
  %253 = call i32 @i_size_write(%struct.inode* %248, i32 %252)
  %254 = load %struct.inode*, %struct.inode** %8, align 8
  %255 = call i32 @ocfs2_inode_sector_count(%struct.inode* %254)
  %256 = load %struct.inode*, %struct.inode** %8, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  %258 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %259 = load %struct.inode*, %struct.inode** %8, align 8
  %260 = call i32 @ocfs2_update_inode_fsync_trans(%struct.buffer_head* %258, %struct.inode* %259, i32 0)
  store i32 0, i32* %13, align 4
  %261 = load i64*, i64** %11, align 8
  %262 = icmp ne i64* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %188
  %264 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %265 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64*, i64** %11, align 8
  store i64 %266, i64* %267, align 8
  br label %268

268:                                              ; preds = %263, %188
  br label %269

269:                                              ; preds = %268, %136, %122, %66, %50
  %270 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %271 = icmp ne %struct.buffer_head* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %274 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %275 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %273, %struct.buffer_head* %274)
  br label %276

276:                                              ; preds = %272, %269
  %277 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %278 = icmp ne %struct.ocfs2_alloc_context* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %281 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %284 = call i32 @brelse(%struct.buffer_head* %283)
  %285 = load i32, i32* %13, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @mlog_errno(i32 %288)
  br label %290

290:                                              ; preds = %287, %282
  %291 = load i32, i32* %13, align 4
  ret i32 %291
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_reserve_clusters_with_limit(%struct.ocfs2_super*, i64, i64, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_calc_group_alloc_credits(i32, i64) #1

declare dso_local %struct.buffer_head* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_block_group_alloc(i64) #1

declare dso_local %struct.buffer_head* @ocfs2_block_group_alloc_contig(%struct.ocfs2_super*, %struct.buffer_head*, %struct.inode*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*) #1

declare dso_local %struct.buffer_head* @ocfs2_block_group_alloc_discontig(%struct.buffer_head*, %struct.inode*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_journal_access_di(%struct.buffer_head*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(%struct.buffer_head*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
