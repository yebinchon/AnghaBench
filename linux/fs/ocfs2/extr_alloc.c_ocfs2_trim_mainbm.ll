; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_mainbm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_trim_mainbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.ocfs2_super = type { i64, i64, i64 }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_group_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fstrim_range*)* @ocfs2_trim_mainbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_trim_mainbm(%struct.super_block* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fstrim_range*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_dinode*, align 8
  %22 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %5, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store %struct.inode* null, %struct.inode** %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %22, align 8
  %25 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %26 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = ashr i64 %27, %30
  store i64 %31, i64* %7, align 8
  %32 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %33 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = ashr i64 %34, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %40 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = ashr i64 %41, %44
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %2
  %52 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %53 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.super_block*, %struct.super_block** %4, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %254

62:                                               ; preds = %51
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @trace_ocfs2_trim_mainbm(i64 %63, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %243, %62
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %69 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %70 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %71 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %68, i32 %69, i32 %70)
  store %struct.inode* %71, %struct.inode** %19, align 8
  %72 = load %struct.inode*, %struct.inode** %19, align 8
  %73 = icmp ne %struct.inode* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %245

79:                                               ; preds = %67
  %80 = load %struct.inode*, %struct.inode** %19, align 8
  %81 = call i32 @inode_lock(%struct.inode* %80)
  %82 = load %struct.inode*, %struct.inode** %19, align 8
  %83 = call i32 @ocfs2_inode_lock(%struct.inode* %82, %struct.buffer_head** %18, i32 0)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %232

89:                                               ; preds = %79
  %90 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %93, %struct.ocfs2_dinode** %21, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %147, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %99 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = icmp sge i64 %97, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %227

106:                                              ; preds = %96
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = icmp sgt i64 %109, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %117 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le32_to_cpu(i32 %118)
  %120 = load i64, i64* %7, align 8
  %121 = sub nsw i64 %119, %120
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %115, %106
  %123 = load %struct.inode*, %struct.inode** %19, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @ocfs2_which_cluster_group(%struct.inode* %123, i64 %124)
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %128 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %15, align 8
  br label %139

133:                                              ; preds = %122
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i64 @ocfs2_blocks_to_clusters(%struct.super_block* %135, i64 %136)
  %138 = sub nsw i64 %134, %137
  store i64 %138, i64* %15, align 8
  br label %139

139:                                              ; preds = %133, %131
  %140 = load %struct.inode*, %struct.inode** %19, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = add nsw i64 %141, %142
  %144 = sub nsw i64 %143, 1
  %145 = call i64 @ocfs2_which_cluster_group(%struct.inode* %140, i64 %144)
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %10, align 8
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %139, %89
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add nsw i64 %149, %150
  %152 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %153 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %158 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %16, align 8
  br label %164

160:                                              ; preds = %148
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* %8, align 8
  %163 = add nsw i64 %161, %162
  store i64 %163, i64* %16, align 8
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.inode*, %struct.inode** %19, align 8
  %166 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %21, align 8
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %165, %struct.ocfs2_dinode* %166, i64 %167, %struct.buffer_head** %20)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @mlog_errno(i32 %172)
  br label %226

174:                                              ; preds = %164
  %175 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %178, %struct.ocfs2_group_desc** %22, align 8
  %179 = load %struct.super_block*, %struct.super_block** %4, align 8
  %180 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %22, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* %17, align 8
  %185 = call i32 @ocfs2_trim_group(%struct.super_block* %179, %struct.ocfs2_group_desc* %180, i64 %181, i64 %182, i64 %183, i64 %184)
  store i32 %185, i32* %14, align 4
  %186 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %187 = call i32 @brelse(%struct.buffer_head* %186)
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %174
  %191 = load i32, i32* %14, align 4
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @mlog_errno(i32 %192)
  br label %226

194:                                              ; preds = %174
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %9, align 8
  %199 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %200 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %15, align 8
  %203 = sub nsw i64 %201, %202
  %204 = load i64, i64* %8, align 8
  %205 = sub nsw i64 %204, %203
  store i64 %205, i64* %8, align 8
  store i64 0, i64* %15, align 8
  %206 = load i64, i64* %12, align 8
  %207 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %208 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %194
  %212 = load %struct.super_block*, %struct.super_block** %4, align 8
  %213 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %214 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @ocfs2_clusters_to_blocks(%struct.super_block* %212, i64 %215)
  store i64 %216, i64* %12, align 8
  br label %225

217:                                              ; preds = %194
  %218 = load %struct.super_block*, %struct.super_block** %4, align 8
  %219 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %220 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @ocfs2_clusters_to_blocks(%struct.super_block* %218, i64 %221)
  %223 = load i64, i64* %12, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* %12, align 8
  br label %225

225:                                              ; preds = %217, %211
  br label %226

226:                                              ; preds = %225, %190, %171
  br label %227

227:                                              ; preds = %226, %103
  %228 = load %struct.inode*, %struct.inode** %19, align 8
  %229 = call i32 @ocfs2_inode_unlock(%struct.inode* %228, i32 0)
  %230 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %231 = call i32 @brelse(%struct.buffer_head* %230)
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  br label %232

232:                                              ; preds = %227, %86
  %233 = load %struct.inode*, %struct.inode** %19, align 8
  %234 = call i32 @inode_unlock(%struct.inode* %233)
  %235 = load %struct.inode*, %struct.inode** %19, align 8
  %236 = call i32 @iput(%struct.inode* %235)
  %237 = load i32, i32* %13, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load i64, i64* %12, align 8
  %241 = load i64, i64* %11, align 8
  %242 = icmp sle i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %67

244:                                              ; preds = %239, %232
  br label %245

245:                                              ; preds = %244, %74
  %246 = load i64, i64* %9, align 8
  %247 = load %struct.super_block*, %struct.super_block** %4, align 8
  %248 = getelementptr inbounds %struct.super_block, %struct.super_block* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = mul nsw i64 %246, %249
  %251 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %252 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %251, i32 0, i32 1
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* %13, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %245, %59
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_trim_mainbm(i64, i64, i64) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_which_cluster_group(%struct.inode*, i64) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_trim_group(%struct.super_block*, %struct.ocfs2_group_desc*, i64, i64, i64, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
