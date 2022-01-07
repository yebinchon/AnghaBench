; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_remove_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_remove_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i64, i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { i32, i32, i64, i32, i64 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_REFCOUNT_TREE_REMOVE_CREDITS = common dso_local global i32 0, align 4
@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_FREE = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_refcount_tree*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %26)
  store %struct.ocfs2_inode_info* %27, %struct.ocfs2_inode_info** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ocfs2_super* @OCFS2_SB(i32 %30)
  store %struct.ocfs2_super* %31, %struct.ocfs2_super** %11, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %32 = load i32, i32* @OCFS2_REFCOUNT_TREE_REMOVE_CREDITS, align 4
  store i32 %32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @le64_to_cpu(i64 %35)
  store i32 %36, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %241

41:                                               ; preds = %2
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %47, i32 %48, i32 1, %struct.ocfs2_refcount_tree** %16, %struct.buffer_head** %15)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %241

56:                                               ; preds = %41
  %57 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %60, %struct.ocfs2_refcount_block** %12, align 8
  %61 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %62 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %119

66:                                               ; preds = %56
  %67 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le64_to_cpu(i64 %69)
  store i32 %70, i32* %18, align 4
  %71 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %72 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  store i32 %74, i32* %21, align 4
  %75 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %76 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @le64_to_cpu(i64 %82)
  store i32 %83, i32* %19, align 4
  br label %88

84:                                               ; preds = %66
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @ocfs2_which_suballoc_group(i32 %85, i32 %86)
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %90 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %91 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %92 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %89, i32 %90, i32 %94)
  store %struct.inode* %95, %struct.inode** %13, align 8
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %228

103:                                              ; preds = %88
  %104 = load %struct.inode*, %struct.inode** %13, align 8
  %105 = call i32 @inode_lock(%struct.inode* %104)
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call i32 @ocfs2_inode_lock(%struct.inode* %106, %struct.buffer_head** %14, i32 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %219

113:                                              ; preds = %103
  %114 = load i64, i64* @OCFS2_SUBALLOC_FREE, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %113, %56
  %120 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %120, i32 %121)
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i64 @IS_ERR(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @PTR_ERR(i32* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %210

131:                                              ; preds = %119
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i32 @INODE_CACHE(%struct.inode* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %136 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %137 = call i32 @ocfs2_journal_access_di(i32* %132, i32 %134, %struct.buffer_head* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %206

143:                                              ; preds = %131
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %146 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %145, i32 0, i32 0
  %147 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %148 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %149 = call i32 @ocfs2_journal_access_rb(i32* %144, i32* %146, %struct.buffer_head* %147, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %206

155:                                              ; preds = %143
  %156 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %157 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %156, i32 0, i32 0
  %158 = call i32 @spin_lock(i32* %157)
  %159 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %162 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %166 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @cpu_to_le16(i32 %167)
  %169 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %170 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %172 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  %173 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %174 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %178 = call i32 @ocfs2_journal_dirty(i32* %176, %struct.buffer_head* %177)
  %179 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %180 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %179, i32 0, i32 0
  %181 = call i32 @le32_add_cpu(i32* %180, i32 -1)
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %184 = call i32 @ocfs2_journal_dirty(i32* %182, %struct.buffer_head* %183)
  %185 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %186 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %155
  store i32 1, i32* %7, align 4
  %190 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %191 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %192 = call i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super* %190, %struct.ocfs2_refcount_tree* %191)
  %193 = load i32*, i32** %8, align 8
  %194 = load %struct.inode*, %struct.inode** %13, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %19, align 4
  %198 = call i32 @ocfs2_free_suballoc_bits(i32* %193, %struct.inode* %194, %struct.buffer_head* %195, i32 %196, i32 %197, i32 1)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @mlog_errno(i32 %202)
  br label %204

204:                                              ; preds = %201, %189
  br label %205

205:                                              ; preds = %204, %155
  br label %206

206:                                              ; preds = %205, %152, %140
  %207 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %207, i32* %208)
  br label %210

210:                                              ; preds = %206, %126
  %211 = load %struct.inode*, %struct.inode** %13, align 8
  %212 = icmp ne %struct.inode* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.inode*, %struct.inode** %13, align 8
  %215 = call i32 @ocfs2_inode_unlock(%struct.inode* %214, i32 1)
  %216 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %217 = call i32 @brelse(%struct.buffer_head* %216)
  br label %218

218:                                              ; preds = %213, %210
  br label %219

219:                                              ; preds = %218, %110
  %220 = load %struct.inode*, %struct.inode** %13, align 8
  %221 = icmp ne %struct.inode* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.inode*, %struct.inode** %13, align 8
  %224 = call i32 @inode_unlock(%struct.inode* %223)
  %225 = load %struct.inode*, %struct.inode** %13, align 8
  %226 = call i32 @iput(%struct.inode* %225)
  br label %227

227:                                              ; preds = %222, %219
  br label %228

228:                                              ; preds = %227, %98
  %229 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %230 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %231 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %229, %struct.ocfs2_refcount_tree* %230, i32 1)
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %236 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %235)
  br label %237

237:                                              ; preds = %234, %228
  %238 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %239 = call i32 @brelse(%struct.buffer_head* %238)
  %240 = load i32, i32* %6, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %52, %40
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
