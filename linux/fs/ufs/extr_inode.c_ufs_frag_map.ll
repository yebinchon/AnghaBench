; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_frag_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_frag_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.ufs_sb_private_info = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [58 x i8] c": uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\0A\00", align 1
@UFS_TYPE_MASK = common dso_local global i32 0, align 4
@UFS_TYPE_UFS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32)* @ufs_frag_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_frag_map(%struct.inode* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_inode_info*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ufs_sb_private_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.TYPE_9__], align 16
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %23)
  store %struct.ufs_inode_info* %24, %struct.ufs_inode_info** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %8, align 8
  %28 = load %struct.super_block*, %struct.super_block** %8, align 8
  %29 = call %struct.TYPE_10__* @UFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %30, align 8
  store %struct.ufs_sb_private_info* %31, %struct.ufs_sb_private_info** %9, align 8
  %32 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %33 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %37 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = lshr i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %41 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %44 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %42, %45
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %13, align 8
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = call %struct.TYPE_10__* @UFS_SB(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %52 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %53 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %56 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = call i32 @UFSD(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %3
  br label %241

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %267, %64
  %66 = load i32*, i32** %5, align 8
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @UFS_TYPE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @UFS_TYPE_UFS2, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %154

73:                                               ; preds = %65
  %74 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %75 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %76 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %14, align 8
  %81 = load i32, i32* %79, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = call i32 @grow_chain32(%struct.ufs_inode_info* %74, %struct.buffer_head* null, i32* %83, %struct.TYPE_9__* %84, %struct.TYPE_9__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  br label %255

89:                                               ; preds = %73
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %241

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %147, %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %148

100:                                              ; preds = %96
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %14, align 8
  %103 = load i32, i32* %101, align 4
  store i32 %103, i32* %19, align 4
  %104 = load %struct.super_block*, %struct.super_block** %8, align 8
  %105 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %106 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.super_block*, %struct.super_block** %8, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @fs32_to_cpu(%struct.super_block* %108, i32 %111)
  %113 = add i32 %107, %112
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %11, align 4
  %116 = lshr i32 %114, %115
  %117 = add i32 %113, %116
  %118 = call %struct.buffer_head* @sb_bread(%struct.super_block* %104, i32 %117)
  store %struct.buffer_head* %118, %struct.buffer_head** %18, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %120 = icmp ne %struct.buffer_head* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %100
  br label %241

122:                                              ; preds = %100
  %123 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  store i32* %131, i32** %17, align 8
  %132 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 1
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %13, align 8
  %138 = call i32 @grow_chain32(%struct.ufs_inode_info* %132, %struct.buffer_head* %133, i32* %134, %struct.TYPE_9__* %135, %struct.TYPE_9__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %122
  br label %255

141:                                              ; preds = %122
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %241

147:                                              ; preds = %141
  br label %96

148:                                              ; preds = %96
  %149 = load %struct.super_block*, %struct.super_block** %8, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @fs32_to_cpu(%struct.super_block* %149, i32 %152)
  store i32 %153, i32* %16, align 4
  br label %235

154:                                              ; preds = %72
  %155 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %156 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %157 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %14, align 8
  %162 = load i32, i32* %160, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %167 = call i32 @grow_chain64(%struct.ufs_inode_info* %155, %struct.buffer_head* null, i32* %164, %struct.TYPE_9__* %165, %struct.TYPE_9__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %154
  br label %255

170:                                              ; preds = %154
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %241

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %228, %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %229

181:                                              ; preds = %177
  %182 = load i32*, i32** %14, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %14, align 8
  %184 = load i32, i32* %182, align 4
  store i32 %184, i32* %22, align 4
  %185 = load %struct.super_block*, %struct.super_block** %8, align 8
  %186 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %187 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.super_block*, %struct.super_block** %8, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @fs64_to_cpu(%struct.super_block* %189, i32 %192)
  %194 = add i32 %188, %193
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %11, align 4
  %197 = lshr i32 %195, %196
  %198 = add i32 %194, %197
  %199 = call %struct.buffer_head* @sb_bread(%struct.super_block* %185, i32 %198)
  store %struct.buffer_head* %199, %struct.buffer_head** %21, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %201 = icmp ne %struct.buffer_head* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %181
  br label %241

203:                                              ; preds = %181
  %204 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %205 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %10, align 4
  %210 = and i32 %208, %209
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  store i32* %212, i32** %20, align 8
  %213 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %7, align 8
  %214 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %215 = load i32*, i32** %20, align 8
  %216 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 1
  store %struct.TYPE_9__* %218, %struct.TYPE_9__** %13, align 8
  %219 = call i32 @grow_chain64(%struct.ufs_inode_info* %213, %struct.buffer_head* %214, i32* %215, %struct.TYPE_9__* %216, %struct.TYPE_9__* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %203
  br label %255

222:                                              ; preds = %203
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  br label %241

228:                                              ; preds = %222
  br label %177

229:                                              ; preds = %177
  %230 = load %struct.super_block*, %struct.super_block** %8, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @fs64_to_cpu(%struct.super_block* %230, i32 %233)
  store i32 %234, i32* %16, align 4
  br label %235

235:                                              ; preds = %229, %148
  %236 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %237 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %16, align 4
  br label %241

241:                                              ; preds = %235, %227, %202, %175, %146, %121, %94, %63
  br label %242

242:                                              ; preds = %246, %241
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %244 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %245 = icmp ugt %struct.TYPE_9__* %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @brelse(i32 %249)
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 -1
  store %struct.TYPE_9__* %252, %struct.TYPE_9__** %13, align 8
  br label %242

253:                                              ; preds = %242
  %254 = load i32, i32* %16, align 4
  ret i32 %254

255:                                              ; preds = %221, %169, %140, %88
  br label %256

256:                                              ; preds = %260, %255
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %258 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %259 = icmp ugt %struct.TYPE_9__* %257, %258
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @brelse(i32 %263)
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 -1
  store %struct.TYPE_9__* %266, %struct.TYPE_9__** %13, align 8
  br label %256

267:                                              ; preds = %256
  br label %65
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, i32, i64, i64) #1

declare dso_local i32 @grow_chain32(%struct.ufs_inode_info*, %struct.buffer_head*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @grow_chain64(%struct.ufs_inode_info*, %struct.buffer_head*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
