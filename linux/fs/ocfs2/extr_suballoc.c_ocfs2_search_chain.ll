; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_search_chain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_search_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)*, %struct.TYPE_9__*, i64, i32, i32, %struct.inode.0* }
%struct.inode = type opaque
%struct.buffer_head = type opaque
%struct.TYPE_9__ = type { i64 }
%struct.inode.0 = type { i32 }
%struct.ocfs2_suballoc_result = type { i32, i32, i32, i64 }
%struct.buffer_head.1 = type { i32, i64 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_chain_list = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_context*, i32*, i32, i32, %struct.ocfs2_suballoc_result*, i64*)* @ocfs2_search_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %0, i32* %1, i32 %2, i32 %3, %struct.ocfs2_suballoc_result* %4, i64* %5) #0 {
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_suballoc_result*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.inode.0*, align 8
  %17 = alloca %struct.buffer_head.1*, align 8
  %18 = alloca %struct.buffer_head.1*, align 8
  %19 = alloca %struct.ocfs2_dinode*, align 8
  %20 = alloca %struct.ocfs2_chain_list*, align 8
  %21 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_suballoc_result* %4, %struct.ocfs2_suballoc_result** %11, align 8
  store i64* %5, i64** %12, align 8
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %22, i32 0, i32 6
  %24 = load %struct.inode.0*, %struct.inode.0** %23, align 8
  store %struct.inode.0* %24, %struct.inode.0** %16, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %17, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %18, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %30, %struct.ocfs2_dinode** %19, align 8
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to %struct.ocfs2_chain_list*
  store %struct.ocfs2_chain_list* %34, %struct.ocfs2_chain_list** %20, align 8
  %35 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %36 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %39 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode.0* %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @trace_ocfs2_search_chain_begin(i64 %41, i32 %42, i64 %43)
  %45 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %46 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %47 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %20, align 8
  %48 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le64_to_cpu(i32 %53)
  %55 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %45, %struct.ocfs2_dinode* %46, i64 %54, %struct.buffer_head.1** %17)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %6
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %253

61:                                               ; preds = %6
  %62 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %63 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %65, %struct.ocfs2_group_desc** %21, align 8
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %109, %61
  %69 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %70 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %69, i32 0, i32 1
  %71 = load i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)*, i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, %struct.ocfs2_suballoc_result*)** %70, align 8
  %72 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %73 = bitcast %struct.inode.0* %72 to %struct.inode*
  %74 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %75 = bitcast %struct.buffer_head.1* %74 to %struct.buffer_head*
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %79 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %82 = call i32 %71(%struct.inode* %73, %struct.buffer_head* %75, i32 %76, i32 %77, i32 %80, %struct.ocfs2_suballoc_result* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %68
  %87 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %88 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %114

92:                                               ; preds = %86
  %93 = load %struct.buffer_head.1*, %struct.buffer_head.1** %18, align 8
  %94 = call i32 @brelse(%struct.buffer_head.1* %93)
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %18, align 8
  %95 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %96 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le64_to_cpu(i32 %97)
  store i64 %98, i64* %15, align 8
  %99 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  store %struct.buffer_head.1* %99, %struct.buffer_head.1** %18, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %17, align 8
  %100 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %100, %struct.ocfs2_dinode* %101, i64 %102, %struct.buffer_head.1** %17)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %253

109:                                              ; preds = %92
  %110 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %111 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %113, %struct.ocfs2_group_desc** %21, align 8
  br label %68

114:                                              ; preds = %91, %68
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %253

126:                                              ; preds = %114
  %127 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %128 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @le64_to_cpu(i32 %129)
  %131 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %132 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @trace_ocfs2_search_chain_succ(i64 %130, i32 %133)
  %135 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %136 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @le64_to_cpu(i32 %137)
  %139 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %140 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %142 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @BUG_ON(i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %126
  %150 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %151 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %152 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %153 = call i32 @ocfs2_bg_discontig_fix_result(%struct.ocfs2_alloc_context* %150, %struct.ocfs2_group_desc* %151, %struct.ocfs2_suballoc_result* %152)
  br label %154

154:                                              ; preds = %149, %126
  %155 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %156 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %159 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %161 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %190, label %164

164:                                              ; preds = %154
  %165 = load %struct.buffer_head.1*, %struct.buffer_head.1** %18, align 8
  %166 = icmp ne %struct.buffer_head.1* %165, null
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %169 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %170 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @ocfs2_block_group_reasonably_empty(%struct.ocfs2_group_desc* %168, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %167
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %177 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %178 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %177, i32 0, i32 2
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %181 = load %struct.buffer_head.1*, %struct.buffer_head.1** %18, align 8
  %182 = load i64, i64* %14, align 8
  %183 = call i32 @ocfs2_relink_block_group(i32* %175, %struct.inode.0* %176, %struct.TYPE_9__* %179, %struct.buffer_head.1* %180, %struct.buffer_head.1* %181, i64 %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %174
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @mlog_errno(i32 %187)
  br label %253

189:                                              ; preds = %174
  br label %190

190:                                              ; preds = %189, %167, %164, %154
  %191 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %192 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %247

196:                                              ; preds = %190
  %197 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %200 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %199, i32 0, i32 2
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %203 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i64, i64* %14, align 8
  %206 = call i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0* %197, i32* %198, %struct.TYPE_9__* %201, i32 %204, i64 %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %196
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @mlog_errno(i32 %210)
  br label %253

212:                                              ; preds = %196
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %215 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %216 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %217 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %218 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %221 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @ocfs2_block_group_set_bits(i32* %213, %struct.inode.0* %214, %struct.ocfs2_group_desc* %215, %struct.buffer_head.1* %216, i32 %219, i32 %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %212
  %227 = load %struct.inode.0*, %struct.inode.0** %16, align 8
  %228 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %229 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %228, i32 0, i32 2
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %232 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i64, i64* %14, align 8
  %235 = call i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode.0* %227, %struct.TYPE_9__* %230, i32 %233, i64 %234)
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @mlog_errno(i32 %236)
  br label %253

238:                                              ; preds = %212
  %239 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %19, align 8
  %240 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @le64_to_cpu(i32 %241)
  %243 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %11, align 8
  %244 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @trace_ocfs2_search_chain_end(i64 %242, i32 %245)
  br label %247

247:                                              ; preds = %238, %195
  %248 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %249 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @le16_to_cpu(i32 %250)
  %252 = load i64*, i64** %12, align 8
  store i64 %251, i64* %252, align 8
  br label %253

253:                                              ; preds = %247, %226, %209, %186, %125, %106, %58
  %254 = load %struct.buffer_head.1*, %struct.buffer_head.1** %17, align 8
  %255 = call i32 @brelse(%struct.buffer_head.1* %254)
  %256 = load %struct.buffer_head.1*, %struct.buffer_head.1** %18, align 8
  %257 = call i32 @brelse(%struct.buffer_head.1* %256)
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load i32, i32* %13, align 4
  %262 = call i32 @mlog_errno(i32 %261)
  br label %263

263:                                              ; preds = %260, %253
  %264 = load i32, i32* %13, align 4
  ret i32 %264
}

declare dso_local i32 @trace_ocfs2_search_chain_begin(i64, i32, i64) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode.0*) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode.0*, %struct.ocfs2_dinode*, i64, %struct.buffer_head.1**) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head.1*) #1

declare dso_local i32 @trace_ocfs2_search_chain_succ(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_bg_discontig_fix_result(%struct.ocfs2_alloc_context*, %struct.ocfs2_group_desc*, %struct.ocfs2_suballoc_result*) #1

declare dso_local i64 @ocfs2_block_group_reasonably_empty(%struct.ocfs2_group_desc*, i32) #1

declare dso_local i32 @ocfs2_relink_block_group(i32*, %struct.inode.0*, %struct.TYPE_9__*, %struct.buffer_head.1*, %struct.buffer_head.1*, i64) #1

declare dso_local i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0*, i32*, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode.0*, %struct.ocfs2_group_desc*, %struct.buffer_head.1*, i32, i32) #1

declare dso_local i32 @ocfs2_rollback_alloc_dinode_counts(%struct.inode.0*, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @trace_ocfs2_search_chain_end(i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
