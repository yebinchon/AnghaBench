; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_read_locked_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_read_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_find_inode_args = type { i32, i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_FI_FLAG_SYSFILE = common dso_local global i32 0, align 4
@OCFS2_FI_FLAG_ORPHAN_RECOVERY = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_META = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_OPEN = common dso_local global i32 0, align 4
@OCFS2_FI_FLAG_FILECHECK_CHK = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@OCFS2_FI_FLAG_FILECHECK_FIX = common dso_local global i32 0, align 4
@OCFS2_SYSTEM_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Inode %llu: system file state is ambiguous\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_find_inode_args*)* @ocfs2_read_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_locked_inode(%struct.inode* %0, %struct.ocfs2_find_inode_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_find_inode_args* %1, %struct.ocfs2_find_inode_args** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %7, align 8
  %21 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OCFS2_FI_FLAG_ORPHAN_RECOVERY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %36 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %27, %2
  %40 = phi i1 [ false, %27 ], [ false, %2 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @trace_ocfs2_read_locked_inode(i64 %45, i32 %46)
  %48 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %39
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* @OCFS2_LOCK_TYPE_META, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @ocfs2_inode_lock_res_init(i32* %61, i32 %62, i32 %63, %struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* @OCFS2_LOCK_TYPE_OPEN, align 4
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call i32 @ocfs2_inode_lock_res_init(i32* %68, i32 %69, i32 0, %struct.inode* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %58
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i32 @ocfs2_open_lock(%struct.inode* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call i32 @make_bad_inode(%struct.inode* %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %315

85:                                               ; preds = %74
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ocfs2_inode_lock(%struct.inode* %86, i32* null, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @make_bad_inode(%struct.inode* %92)
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %315

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %58
  %99 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %100 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @OCFS2_FI_FLAG_ORPHAN_RECOVERY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %98
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call i32 @ocfs2_try_open_lock(%struct.inode* %106, i32 0)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call i32 @make_bad_inode(%struct.inode* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %315

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %120 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @OCFS2_FI_FLAG_FILECHECK_CHK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %128 = call i32 @ocfs2_filecheck_read_inode_block_full(%struct.inode* %126, %struct.buffer_head** %9, i32 %127, i32 0)
  store i32 %128, i32* %10, align 4
  br label %145

129:                                              ; preds = %118
  %130 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %131 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @OCFS2_FI_FLAG_FILECHECK_FIX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.inode*, %struct.inode** %4, align 8
  %138 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %139 = call i32 @ocfs2_filecheck_read_inode_block_full(%struct.inode* %137, %struct.buffer_head** %9, i32 %138, i32 1)
  store i32 %139, i32* %10, align 4
  br label %144

140:                                              ; preds = %129
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %143 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %141, %struct.buffer_head** %9, i32 %142)
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %125
  br label %193

146:                                              ; preds = %115
  %147 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %148 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %149 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %147, i64 %150, i32 1, %struct.buffer_head** %9)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %192, label %154

154:                                              ; preds = %146
  %155 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %156 = call i32 @buffer_jbd(%struct.buffer_head* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %192, label %158

158:                                              ; preds = %154
  %159 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %160 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @OCFS2_FI_FLAG_FILECHECK_CHK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %167 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %170 = call i32 @ocfs2_filecheck_validate_inode_block(i32 %168, %struct.buffer_head* %169)
  store i32 %170, i32* %10, align 4
  br label %191

171:                                              ; preds = %158
  %172 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %173 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @OCFS2_FI_FLAG_FILECHECK_FIX, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %180 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %183 = call i32 @ocfs2_filecheck_repair_inode_block(i32 %181, %struct.buffer_head* %182)
  store i32 %183, i32* %10, align 4
  br label %190

184:                                              ; preds = %171
  %185 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %186 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %189 = call i32 @ocfs2_validate_inode_block(i32 %187, %struct.buffer_head* %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %165
  br label %192

192:                                              ; preds = %191, %154, %146
  br label %193

193:                                              ; preds = %192, %145
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @mlog_errno(i32 %197)
  br label %298

199:                                              ; preds = %193
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %10, align 4
  %202 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %203 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %205, %struct.ocfs2_dinode** %8, align 8
  %206 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %207 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %210 = call i32 @cpu_to_le32(i32 %209)
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %217 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = icmp ne i32 %215, %224
  %226 = zext i1 %225 to i32
  %227 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %228 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @mlog_bug_on_msg(i32 %226, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %229)
  %231 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %232 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @le16_to_cpu(i32 %233)
  %235 = call i64 @S_ISCHR(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %199
  %238 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %239 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @le16_to_cpu(i32 %240)
  %242 = call i64 @S_ISBLK(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %237, %199
  %245 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %246 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le64_to_cpu(i32 %249)
  %251 = call i32 @huge_decode_dev(i64 %250)
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %244, %237
  %255 = load %struct.inode*, %struct.inode** %4, align 8
  %256 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %257 = call i32 @ocfs2_populate_inode(%struct.inode* %255, %struct.ocfs2_dinode* %256, i32 0)
  %258 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %259 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %262 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @le64_to_cpu(i32 %263)
  %265 = icmp ne i64 %260, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @BUG_ON(i32 %266)
  %268 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %269 = call i64 @buffer_dirty(%struct.buffer_head* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %297

271:                                              ; preds = %254
  %272 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %273 = call i32 @buffer_jbd(%struct.buffer_head* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %297, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load %struct.inode*, %struct.inode** %4, align 8
  %280 = load i32, i32* %12, align 4
  %281 = call i32 @ocfs2_inode_unlock(%struct.inode* %279, i32 %280)
  store i32 1, i32* %12, align 4
  %282 = load %struct.inode*, %struct.inode** %4, align 8
  %283 = load i32, i32* %12, align 4
  %284 = call i32 @ocfs2_inode_lock(%struct.inode* %282, i32* null, i32 %283)
  br label %285

285:                                              ; preds = %278, %275
  %286 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %287 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %288 = load %struct.inode*, %struct.inode** %4, align 8
  %289 = call i32 @INODE_CACHE(%struct.inode* %288)
  %290 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %286, %struct.buffer_head* %287, i32 %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %10, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @mlog_errno(i32 %294)
  br label %298

296:                                              ; preds = %285
  br label %297

297:                                              ; preds = %296, %271, %254
  store i32 0, i32* %10, align 4
  br label %298

298:                                              ; preds = %297, %293, %196
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %298
  %302 = load %struct.inode*, %struct.inode** %4, align 8
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @ocfs2_inode_unlock(%struct.inode* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %298
  %306 = load i32, i32* %10, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load %struct.inode*, %struct.inode** %4, align 8
  %310 = call i32 @make_bad_inode(%struct.inode* %309)
  br label %311

311:                                              ; preds = %308, %305
  %312 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %313 = call i32 @brelse(%struct.buffer_head* %312)
  %314 = load i32, i32* %10, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %311, %110, %91, %79
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @trace_ocfs2_read_locked_inode(i64, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_res_init(i32*, i32, i32, %struct.inode*) #1

declare dso_local i32 @ocfs2_open_lock(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @ocfs2_try_open_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_filecheck_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_filecheck_validate_inode_block(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_filecheck_repair_inode_block(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_inode_block(i32, %struct.buffer_head*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @huge_decode_dev(i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_populate_inode(%struct.inode*, %struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
