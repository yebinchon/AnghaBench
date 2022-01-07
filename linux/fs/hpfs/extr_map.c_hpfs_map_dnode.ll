; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_map_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode = type { i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dnode\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dnode %08x not byte-aligned\00", align 1
@DNODE_RD_AHEAD = common dso_local global i32 0, align 4
@DNODE_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"bad magic on dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"bad self pointer on dnode %08x self = %08x\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"dnode %08x has first_free == %08x\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"bad dirent size in dnode %08x, dirent %03x, last %03x\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"namelen does not match dirent size in dnode %08x, dirent %03x, last %03x\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"bad down pointer in dnode %08x, dirent %03x, last %03x\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"size on last dirent does not match first_free; dnode %08x\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"dnode %08x does not end with \\377 entry\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"unbalanced dnode tree, dnode %08x; see hpfs.txt 4 more info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block* %0, i32 %1, %struct.quad_buffer_head* %2) #0 {
  %4 = alloca %struct.dnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head*, align 8
  %8 = alloca %struct.dnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @hpfs_chk_sectors(%struct.super_block* %20, i32 %21, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %280

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %280

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %38 = load i32, i32* @DNODE_RD_AHEAD, align 4
  %39 = call %struct.dnode* @hpfs_map_4sectors(%struct.super_block* %35, i32 %36, %struct.quad_buffer_head* %37, i32 %38)
  store %struct.dnode* %39, %struct.dnode** %8, align 8
  %40 = icmp ne %struct.dnode* %39, null
  br i1 %40, label %41, label %275

41:                                               ; preds = %34
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %274

47:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  %48 = load %struct.dnode*, %struct.dnode** %8, align 8
  %49 = bitcast %struct.dnode* %48 to i8*
  store i8* %49, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %50 = load %struct.dnode*, %struct.dnode** %8, align 8
  %51 = getelementptr inbounds %struct.dnode, %struct.dnode* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = load i32, i32* @DNODE_MAGIC, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %277

60:                                               ; preds = %47
  %61 = load %struct.dnode*, %struct.dnode** %8, align 8
  %62 = getelementptr inbounds %struct.dnode, %struct.dnode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.dnode*, %struct.dnode** %8, align 8
  %71 = getelementptr inbounds %struct.dnode, %struct.dnode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %67, %60
  %76 = load %struct.dnode*, %struct.dnode** %8, align 8
  %77 = getelementptr inbounds %struct.dnode, %struct.dnode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = icmp ugt i32 %79, 2048
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.dnode*, %struct.dnode** %8, align 8
  %85 = getelementptr inbounds %struct.dnode, %struct.dnode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %87)
  br label %277

89:                                               ; preds = %75
  store i32 20, i32* %9, align 4
  br label %90

90:                                               ; preds = %216, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.dnode*, %struct.dnode** %8, align 8
  %93 = getelementptr inbounds %struct.dnode, %struct.dnode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %97, label %234

97:                                               ; preds = %90
  %98 = load %struct.dnode*, %struct.dnode** %8, align 8
  %99 = bitcast %struct.dnode* %98 to i8*
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = bitcast i8* %102 to %struct.hpfs_dirent*
  store %struct.hpfs_dirent* %103, %struct.hpfs_dirent** %13, align 8
  %104 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %105 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = icmp sgt i32 %107, 292
  br i1 %108, label %130, label %109

109:                                              ; preds = %97
  %110 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %111 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = icmp slt i32 %113, 32
  br i1 %114, label %130, label %115

115:                                              ; preds = %109
  %116 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %117 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = and i32 %119, 3
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %125 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  %128 = add i32 %123, %127
  %129 = icmp ugt i32 %128, 2048
  br i1 %129, label %130, label %136

130:                                              ; preds = %122, %115, %109, %97
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  br label %277

136:                                              ; preds = %122
  %137 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %138 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 31, %139
  %141 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %142 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, 4
  %145 = add nsw i32 %140, %144
  %146 = add nsw i32 %145, 3
  %147 = and i32 %146, -4
  %148 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %149 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = icmp ne i32 %147, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %136
  %154 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %155 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 31, %156
  %158 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %159 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 4
  %162 = add nsw i32 %157, %161
  %163 = add nsw i32 %162, 3
  %164 = and i32 %163, -4
  %165 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %166 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le16_to_cpu(i32 %167)
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %153
  %171 = load %struct.super_block*, %struct.super_block** %5, align 8
  %172 = getelementptr inbounds %struct.super_block, %struct.super_block* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @SB_RDONLY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %185

178:                                              ; preds = %170, %153
  %179 = load %struct.super_block*, %struct.super_block** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %179, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %181, i32 %182)
  br label %277

184:                                              ; preds = %136
  br label %185

185:                                              ; preds = %184, %177
  %186 = load %struct.super_block*, %struct.super_block** %5, align 8
  %187 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %186)
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %189, 2
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %193 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 1, %194
  %196 = load i32, i32* %12, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %191, %185
  %199 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %200 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %205 = call i32 @de_down_pointer(%struct.hpfs_dirent* %204)
  %206 = icmp slt i32 %205, 16
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct.super_block*, %struct.super_block** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %208, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %209, i32 %210, i32 %211)
  br label %277

213:                                              ; preds = %203
  br label %214

214:                                              ; preds = %213, %198
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %214
  %217 = load i8*, i8** %11, align 8
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = load i8*, i8** %11, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add i32 %224, 1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = shl i32 %229, 8
  %231 = add nsw i32 %222, %230
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, %231
  store i32 %233, i32* %9, align 4
  br label %90

234:                                              ; preds = %90
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.dnode*, %struct.dnode** %8, align 8
  %237 = getelementptr inbounds %struct.dnode, %struct.dnode* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32_to_cpu(i32 %238)
  %240 = icmp ne i32 %235, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load %struct.super_block*, %struct.super_block** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %242, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  br label %277

245:                                              ; preds = %234
  %246 = load i8*, i8** %11, align 8
  %247 = load i32, i32* %10, align 4
  %248 = add i32 %247, 30
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp ne i32 %252, 1
  br i1 %253, label %263, label %254

254:                                              ; preds = %245
  %255 = load i8*, i8** %11, align 8
  %256 = load i32, i32* %10, align 4
  %257 = add i32 %256, 31
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %255, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp ne i32 %261, 255
  br i1 %262, label %263, label %267

263:                                              ; preds = %254, %245
  %264 = load %struct.super_block*, %struct.super_block** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %265)
  br label %277

267:                                              ; preds = %254
  %268 = load i32, i32* %12, align 4
  %269 = icmp eq i32 %268, 3
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %270, %267
  br label %274

274:                                              ; preds = %273, %41
  br label %275

275:                                              ; preds = %274, %34
  %276 = load %struct.dnode*, %struct.dnode** %8, align 8
  store %struct.dnode* %276, %struct.dnode** %4, align 8
  br label %280

277:                                              ; preds = %263, %241, %207, %178, %130, %81, %56
  %278 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %279 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %278)
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %280

280:                                              ; preds = %277, %275, %29, %24
  %281 = load %struct.dnode*, %struct.dnode** %4, align 8
  ret %struct.dnode* %281
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local %struct.dnode* @hpfs_map_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
