; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_set_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_ea.c_hpfs_set_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fnode = type { i8*, i8*, i32, i8*, i8*, i8* }
%struct.extended_attribute = type { i32, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"fnode %08lx: ea_offs == %03x, ea_size_s == %03x\00", align 1
@FNODE_anode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_set_ea(%struct.inode* %0, %struct.fnode* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca %struct.extended_attribute*, align 8
  %19 = alloca %struct.extended_attribute*, align 8
  %20 = alloca [268 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.buffer_head*, align 8
  %28 = alloca %struct.buffer_head*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fnode* %1, %struct.fnode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %12, align 8
  %37 = load %struct.fnode*, %struct.fnode** %7, align 8
  %38 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %37)
  store %struct.extended_attribute* %38, %struct.extended_attribute** %19, align 8
  %39 = load %struct.fnode*, %struct.fnode** %7, align 8
  %40 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %39)
  store %struct.extended_attribute* %40, %struct.extended_attribute** %18, align 8
  br label %41

41:                                               ; preds = %87, %5
  %42 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %43 = load %struct.extended_attribute*, %struct.extended_attribute** %19, align 8
  %44 = icmp ult %struct.extended_attribute* %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %41
  %46 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %47 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcmp(i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %45
  %53 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %54 = call i64 @ea_indirect(%struct.extended_attribute* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %58 = call i32 @ea_len(%struct.extended_attribute* %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.super_block*, %struct.super_block** %12, align 8
  %63 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %64 = call i32 @ea_in_anode(%struct.extended_attribute* %63)
  %65 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %66 = call i32 @ea_sec(%struct.extended_attribute* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @set_indirect_ea(%struct.super_block* %62, i32 %64, i32 %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %56
  br label %85

71:                                               ; preds = %52
  %72 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %73 = call i32 @ea_valuelen(%struct.extended_attribute* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %78 = call i32 @ea_data(%struct.extended_attribute* %77)
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @memcpy(i8* %80, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %71
  br label %85

85:                                               ; preds = %84, %70
  br label %698

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %89 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %88)
  store %struct.extended_attribute* %89, %struct.extended_attribute** %18, align 8
  br label %41

90:                                               ; preds = %41
  %91 = load %struct.fnode*, %struct.fnode** %7, align 8
  %92 = getelementptr inbounds %struct.fnode, %struct.fnode* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @le32_to_cpu(i8* %93)
  store i32 %94, i32* %16, align 4
  %95 = load %struct.fnode*, %struct.fnode** %7, align 8
  %96 = getelementptr inbounds %struct.fnode, %struct.fnode* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @le32_to_cpu(i8* %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.fnode*, %struct.fnode** %7, align 8
  %100 = call i32 @fnode_in_anode(%struct.fnode* %99)
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %198, %90
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %208

105:                                              ; preds = %101
  %106 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %107 = bitcast i8* %106 to %struct.extended_attribute*
  store %struct.extended_attribute* %107, %struct.extended_attribute** %18, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load %struct.super_block*, %struct.super_block** %12, align 8
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %118, i32 %119)
  br label %698

121:                                              ; preds = %105
  %122 = load %struct.super_block*, %struct.super_block** %12, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %127 = call i64 @hpfs_ea_read(%struct.super_block* %122, i32 %123, i32 %124, i32 %125, i32 4, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %698

130:                                              ; preds = %121
  %131 = load %struct.super_block*, %struct.super_block** %12, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, 4
  %136 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %137 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %141 = call i64 @ea_indirect(%struct.extended_attribute* %140)
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 8, i32 0
  %145 = add nsw i32 %139, %144
  %146 = getelementptr inbounds [268 x i8], [268 x i8]* %20, i64 0, i64 0
  %147 = getelementptr inbounds i8, i8* %146, i64 4
  %148 = call i64 @hpfs_ea_read(%struct.super_block* %131, i32 %132, i32 %133, i32 %135, i32 %145, i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  br label %698

151:                                              ; preds = %130
  %152 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %153 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @strcmp(i32 %154, i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %198, label %158

158:                                              ; preds = %151
  %159 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %160 = call i64 @ea_indirect(%struct.extended_attribute* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %164 = call i32 @ea_len(%struct.extended_attribute* %163)
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.super_block*, %struct.super_block** %12, align 8
  %169 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %170 = call i32 @ea_in_anode(%struct.extended_attribute* %169)
  %171 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %172 = call i32 @ea_sec(%struct.extended_attribute* %171)
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @set_indirect_ea(%struct.super_block* %168, i32 %170, i32 %172, i8* %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %162
  br label %197

177:                                              ; preds = %158
  %178 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %179 = call i32 @ea_valuelen(%struct.extended_attribute* %178)
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.super_block*, %struct.super_block** %12, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = add i32 %186, 4
  %188 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %189 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %187, %190
  %192 = add i32 %191, 1
  %193 = load i32, i32* %10, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = call i64 (%struct.super_block*, i32, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %183, i32 %184, i32 %185, i32 %192, i32 %193, i8* %194)
  br label %196

196:                                              ; preds = %182, %177
  br label %197

197:                                              ; preds = %196, %176
  br label %698

198:                                              ; preds = %151
  %199 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %200 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %203 = call i32 @ea_valuelen(%struct.extended_attribute* %202)
  %204 = add nsw i32 %201, %203
  %205 = add nsw i32 %204, 5
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %101

208:                                              ; preds = %101
  %209 = load %struct.fnode*, %struct.fnode** %7, align 8
  %210 = getelementptr inbounds %struct.fnode, %struct.fnode* %209, i32 0, i32 5
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @le16_to_cpu(i8* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %208
  %215 = call i8* @cpu_to_le16(i32 196)
  %216 = load %struct.fnode*, %struct.fnode** %7, align 8
  %217 = getelementptr inbounds %struct.fnode, %struct.fnode* %216, i32 0, i32 5
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %214, %208
  %219 = load %struct.fnode*, %struct.fnode** %7, align 8
  %220 = getelementptr inbounds %struct.fnode, %struct.fnode* %219, i32 0, i32 5
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @le16_to_cpu(i8* %221)
  %223 = icmp ult i32 %222, 196
  br i1 %223, label %240, label %224

224:                                              ; preds = %218
  %225 = load %struct.fnode*, %struct.fnode** %7, align 8
  %226 = getelementptr inbounds %struct.fnode, %struct.fnode* %225, i32 0, i32 5
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @le16_to_cpu(i8* %227)
  %229 = load %struct.fnode*, %struct.fnode** %7, align 8
  %230 = getelementptr inbounds %struct.fnode, %struct.fnode* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @le16_to_cpu(i8* %231)
  %233 = add i32 %228, %232
  %234 = load %struct.fnode*, %struct.fnode** %7, align 8
  %235 = getelementptr inbounds %struct.fnode, %struct.fnode* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @le16_to_cpu(i8* %236)
  %238 = add i32 %233, %237
  %239 = icmp ugt i32 %238, 512
  br i1 %239, label %240, label %254

240:                                              ; preds = %224, %218
  %241 = load %struct.super_block*, %struct.super_block** %12, align 8
  %242 = load %struct.inode*, %struct.inode** %6, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.fnode*, %struct.fnode** %7, align 8
  %246 = getelementptr inbounds %struct.fnode, %struct.fnode* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @le16_to_cpu(i8* %247)
  %249 = load %struct.fnode*, %struct.fnode** %7, align 8
  %250 = getelementptr inbounds %struct.fnode, %struct.fnode* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @le16_to_cpu(i8* %251)
  %253 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %244, i32 %248, i32 %252)
  br label %698

254:                                              ; preds = %224
  %255 = load %struct.fnode*, %struct.fnode** %7, align 8
  %256 = getelementptr inbounds %struct.fnode, %struct.fnode* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @le16_to_cpu(i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.fnode*, %struct.fnode** %7, align 8
  %262 = getelementptr inbounds %struct.fnode, %struct.fnode* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @le32_to_cpu(i8* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %329, label %266

266:                                              ; preds = %260, %254
  %267 = load %struct.fnode*, %struct.fnode** %7, align 8
  %268 = getelementptr inbounds %struct.fnode, %struct.fnode* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @le16_to_cpu(i8* %269)
  %271 = load %struct.fnode*, %struct.fnode** %7, align 8
  %272 = getelementptr inbounds %struct.fnode, %struct.fnode* %271, i32 0, i32 4
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @le16_to_cpu(i8* %273)
  %275 = add i32 %270, %274
  %276 = load %struct.fnode*, %struct.fnode** %7, align 8
  %277 = getelementptr inbounds %struct.fnode, %struct.fnode* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @le16_to_cpu(i8* %278)
  %280 = add i32 %275, %279
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @strlen(i8* %281)
  %283 = add i32 %280, %282
  %284 = load i32, i32* %10, align 4
  %285 = add i32 %283, %284
  %286 = add i32 %285, 5
  %287 = icmp ule i32 %286, 512
  br i1 %287, label %288, label %329

288:                                              ; preds = %266
  %289 = load %struct.fnode*, %struct.fnode** %7, align 8
  %290 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %289)
  store %struct.extended_attribute* %290, %struct.extended_attribute** %18, align 8
  %291 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %292 = bitcast %struct.extended_attribute* %291 to i8*
  store i8 0, i8* %292, align 1
  %293 = load i8*, i8** %8, align 8
  %294 = call i32 @strlen(i8* %293)
  %295 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %296 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %299 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %10, align 4
  %301 = ashr i32 %300, 8
  %302 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %303 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 4
  %304 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %305 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load i8*, i8** %8, align 8
  %308 = call i32 @strcpy(i32 %306, i8* %307)
  %309 = load %struct.extended_attribute*, %struct.extended_attribute** %18, align 8
  %310 = call i32 @ea_data(%struct.extended_attribute* %309)
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = load i8*, i8** %9, align 8
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @memcpy(i8* %312, i8* %313, i32 %314)
  %316 = load %struct.fnode*, %struct.fnode** %7, align 8
  %317 = getelementptr inbounds %struct.fnode, %struct.fnode* %316, i32 0, i32 3
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @le16_to_cpu(i8* %318)
  %320 = load i8*, i8** %8, align 8
  %321 = call i32 @strlen(i8* %320)
  %322 = add i32 %319, %321
  %323 = load i32, i32* %10, align 4
  %324 = add i32 %322, %323
  %325 = add i32 %324, 5
  %326 = call i8* @cpu_to_le16(i32 %325)
  %327 = load %struct.fnode*, %struct.fnode** %7, align 8
  %328 = getelementptr inbounds %struct.fnode, %struct.fnode* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  br label %635

329:                                              ; preds = %266, %260
  %330 = load %struct.fnode*, %struct.fnode** %7, align 8
  %331 = getelementptr inbounds %struct.fnode, %struct.fnode* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @le16_to_cpu(i8* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %390

335:                                              ; preds = %329
  %336 = load %struct.fnode*, %struct.fnode** %7, align 8
  %337 = getelementptr inbounds %struct.fnode, %struct.fnode* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @le32_to_cpu(i8* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %390, label %341

341:                                              ; preds = %335
  %342 = load %struct.super_block*, %struct.super_block** %12, align 8
  %343 = load i64, i64* %11, align 8
  %344 = call i32 @hpfs_alloc_sector(%struct.super_block* %342, i64 %343, i32 1, i32 0)
  store i32 %344, i32* %21, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  br label %698

347:                                              ; preds = %341
  %348 = load %struct.super_block*, %struct.super_block** %12, align 8
  %349 = load i32, i32* %21, align 4
  %350 = call i8* @hpfs_get_sector(%struct.super_block* %348, i32 %349, %struct.buffer_head** %22)
  store i8* %350, i8** %23, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %356, label %352

352:                                              ; preds = %347
  %353 = load %struct.super_block*, %struct.super_block** %12, align 8
  %354 = load i32, i32* %21, align 4
  %355 = call i32 @hpfs_free_sectors(%struct.super_block* %353, i32 %354, i32 1)
  br label %698

356:                                              ; preds = %347
  %357 = load i8*, i8** %23, align 8
  %358 = load %struct.fnode*, %struct.fnode** %7, align 8
  %359 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %358)
  %360 = bitcast %struct.extended_attribute* %359 to i8*
  %361 = load %struct.fnode*, %struct.fnode** %7, align 8
  %362 = getelementptr inbounds %struct.fnode, %struct.fnode* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @le16_to_cpu(i8* %363)
  %365 = call i32 @memcpy(i8* %357, i8* %360, i32 %364)
  %366 = load %struct.fnode*, %struct.fnode** %7, align 8
  %367 = getelementptr inbounds %struct.fnode, %struct.fnode* %366, i32 0, i32 3
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @le16_to_cpu(i8* %368)
  %370 = call i8* @cpu_to_le32(i32 %369)
  %371 = load %struct.fnode*, %struct.fnode** %7, align 8
  %372 = getelementptr inbounds %struct.fnode, %struct.fnode* %371, i32 0, i32 0
  store i8* %370, i8** %372, align 8
  %373 = call i8* @cpu_to_le16(i32 0)
  %374 = load %struct.fnode*, %struct.fnode** %7, align 8
  %375 = getelementptr inbounds %struct.fnode, %struct.fnode* %374, i32 0, i32 3
  store i8* %373, i8** %375, align 8
  %376 = load i32, i32* %21, align 4
  %377 = call i8* @cpu_to_le32(i32 %376)
  %378 = load %struct.fnode*, %struct.fnode** %7, align 8
  %379 = getelementptr inbounds %struct.fnode, %struct.fnode* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  %380 = load i32, i32* @FNODE_anode, align 4
  %381 = xor i32 %380, -1
  %382 = load %struct.fnode*, %struct.fnode** %7, align 8
  %383 = getelementptr inbounds %struct.fnode, %struct.fnode* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = and i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %387 = call i32 @mark_buffer_dirty(%struct.buffer_head* %386)
  %388 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %389 = call i32 @brelse(%struct.buffer_head* %388)
  br label %390

390:                                              ; preds = %356, %335, %329
  %391 = load %struct.fnode*, %struct.fnode** %7, align 8
  %392 = getelementptr inbounds %struct.fnode, %struct.fnode* %391, i32 0, i32 0
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @le32_to_cpu(i8* %393)
  %395 = add nsw i32 %394, 5
  %396 = load i8*, i8** %8, align 8
  %397 = call i32 @strlen(i8* %396)
  %398 = add nsw i32 %395, %397
  %399 = load i32, i32* %10, align 4
  %400 = add nsw i32 %398, %399
  store i32 %400, i32* %13, align 4
  %401 = load %struct.fnode*, %struct.fnode** %7, align 8
  %402 = getelementptr inbounds %struct.fnode, %struct.fnode* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @le32_to_cpu(i8* %403)
  %405 = add nsw i32 %404, 511
  %406 = ashr i32 %405, 9
  store i32 %406, i32* %15, align 4
  %407 = load i32, i32* %13, align 4
  %408 = icmp uge i32 %407, 30000
  br i1 %408, label %409, label %410

409:                                              ; preds = %390
  br label %646

410:                                              ; preds = %390
  br label %411

411:                                              ; preds = %557, %410
  %412 = load i32, i32* %13, align 4
  %413 = add i32 %412, 511
  %414 = lshr i32 %413, 9
  %415 = load i32, i32* %15, align 4
  %416 = icmp ugt i32 %414, %415
  br i1 %416, label %417, label %558

417:                                              ; preds = %411
  %418 = load i32, i32* %15, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %440, label %420

420:                                              ; preds = %417
  %421 = load %struct.super_block*, %struct.super_block** %12, align 8
  %422 = load i64, i64* %11, align 8
  %423 = call i32 @hpfs_alloc_sector(%struct.super_block* %421, i64 %422, i32 1, i32 0)
  store i32 %423, i32* %24, align 4
  %424 = load i32, i32* %24, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %420
  br label %646

427:                                              ; preds = %420
  %428 = load i32, i32* %24, align 4
  %429 = call i8* @cpu_to_le32(i32 %428)
  %430 = load %struct.fnode*, %struct.fnode** %7, align 8
  %431 = getelementptr inbounds %struct.fnode, %struct.fnode* %430, i32 0, i32 1
  store i8* %429, i8** %431, align 8
  %432 = load i32, i32* @FNODE_anode, align 4
  %433 = xor i32 %432, -1
  %434 = load %struct.fnode*, %struct.fnode** %7, align 8
  %435 = getelementptr inbounds %struct.fnode, %struct.fnode* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = and i32 %436, %433
  store i32 %437, i32* %435, align 8
  %438 = load i32, i32* %15, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %15, align 4
  br label %539

440:                                              ; preds = %417
  %441 = load %struct.fnode*, %struct.fnode** %7, align 8
  %442 = call i32 @fnode_in_anode(%struct.fnode* %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %538, label %444

444:                                              ; preds = %440
  %445 = load %struct.super_block*, %struct.super_block** %12, align 8
  %446 = load %struct.fnode*, %struct.fnode** %7, align 8
  %447 = getelementptr inbounds %struct.fnode, %struct.fnode* %446, i32 0, i32 1
  %448 = load i8*, i8** %447, align 8
  %449 = call i32 @le32_to_cpu(i8* %448)
  %450 = load i32, i32* %15, align 4
  %451 = add nsw i32 %449, %450
  %452 = call i64 @hpfs_alloc_if_possible(%struct.super_block* %445, i32 %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %444
  %455 = load i32, i32* %15, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %15, align 4
  br label %537

457:                                              ; preds = %444
  %458 = load %struct.super_block*, %struct.super_block** %12, align 8
  %459 = load i64, i64* %11, align 8
  %460 = load i32, i32* %13, align 4
  %461 = add i32 %460, 511
  %462 = lshr i32 %461, 9
  %463 = sub i32 1, %462
  %464 = call i32 @hpfs_alloc_sector(%struct.super_block* %458, i64 %459, i32 1, i32 %463)
  store i32 %464, i32* %25, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %467, label %466

466:                                              ; preds = %457
  br label %646

467:                                              ; preds = %457
  store i32 0, i32* %26, align 4
  br label %468

468:                                              ; preds = %519, %467
  %469 = load i32, i32* %26, align 4
  %470 = load i32, i32* %15, align 4
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %522

472:                                              ; preds = %468
  %473 = load %struct.super_block*, %struct.super_block** %12, align 8
  %474 = load %struct.fnode*, %struct.fnode** %7, align 8
  %475 = getelementptr inbounds %struct.fnode, %struct.fnode* %474, i32 0, i32 1
  %476 = load i8*, i8** %475, align 8
  %477 = call i32 @le32_to_cpu(i8* %476)
  %478 = load i32, i32* %26, align 4
  %479 = add nsw i32 %477, %478
  %480 = load i32, i32* %15, align 4
  %481 = load i32, i32* %26, align 4
  %482 = sub nsw i32 %480, %481
  %483 = sub nsw i32 %482, 1
  %484 = call i8* @hpfs_map_sector(%struct.super_block* %473, i32 %479, %struct.buffer_head** %27, i32 %483)
  store i8* %484, i8** %29, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %493, label %486

486:                                              ; preds = %472
  %487 = load %struct.super_block*, %struct.super_block** %12, align 8
  %488 = load i32, i32* %25, align 4
  %489 = load i32, i32* %13, align 4
  %490 = add i32 %489, 511
  %491 = lshr i32 %490, 9
  %492 = call i32 @hpfs_free_sectors(%struct.super_block* %487, i32 %488, i32 %491)
  br label %646

493:                                              ; preds = %472
  %494 = load %struct.super_block*, %struct.super_block** %12, align 8
  %495 = load i32, i32* %25, align 4
  %496 = load i32, i32* %26, align 4
  %497 = add nsw i32 %495, %496
  %498 = call i8* @hpfs_get_sector(%struct.super_block* %494, i32 %497, %struct.buffer_head** %28)
  store i8* %498, i8** %30, align 8
  %499 = icmp ne i8* %498, null
  br i1 %499, label %509, label %500

500:                                              ; preds = %493
  %501 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %502 = call i32 @brelse(%struct.buffer_head* %501)
  %503 = load %struct.super_block*, %struct.super_block** %12, align 8
  %504 = load i32, i32* %25, align 4
  %505 = load i32, i32* %13, align 4
  %506 = add i32 %505, 511
  %507 = lshr i32 %506, 9
  %508 = call i32 @hpfs_free_sectors(%struct.super_block* %503, i32 %504, i32 %507)
  br label %646

509:                                              ; preds = %493
  %510 = load i8*, i8** %30, align 8
  %511 = load i8*, i8** %29, align 8
  %512 = call i32 @memcpy(i8* %510, i8* %511, i32 512)
  %513 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %514 = call i32 @brelse(%struct.buffer_head* %513)
  %515 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %516 = call i32 @mark_buffer_dirty(%struct.buffer_head* %515)
  %517 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %518 = call i32 @brelse(%struct.buffer_head* %517)
  br label %519

519:                                              ; preds = %509
  %520 = load i32, i32* %26, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %26, align 4
  br label %468

522:                                              ; preds = %468
  %523 = load %struct.super_block*, %struct.super_block** %12, align 8
  %524 = load %struct.fnode*, %struct.fnode** %7, align 8
  %525 = getelementptr inbounds %struct.fnode, %struct.fnode* %524, i32 0, i32 1
  %526 = load i8*, i8** %525, align 8
  %527 = call i32 @le32_to_cpu(i8* %526)
  %528 = load i32, i32* %15, align 4
  %529 = call i32 @hpfs_free_sectors(%struct.super_block* %523, i32 %527, i32 %528)
  %530 = load i32, i32* %25, align 4
  %531 = call i8* @cpu_to_le32(i32 %530)
  %532 = load %struct.fnode*, %struct.fnode** %7, align 8
  %533 = getelementptr inbounds %struct.fnode, %struct.fnode* %532, i32 0, i32 1
  store i8* %531, i8** %533, align 8
  %534 = load i32, i32* %13, align 4
  %535 = add i32 %534, 511
  %536 = lshr i32 %535, 9
  store i32 %536, i32* %15, align 4
  br label %537

537:                                              ; preds = %522, %454
  br label %538

538:                                              ; preds = %537, %440
  br label %539

539:                                              ; preds = %538, %427
  %540 = load %struct.fnode*, %struct.fnode** %7, align 8
  %541 = call i32 @fnode_in_anode(%struct.fnode* %540)
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %557

543:                                              ; preds = %539
  %544 = load %struct.super_block*, %struct.super_block** %12, align 8
  %545 = load %struct.fnode*, %struct.fnode** %7, align 8
  %546 = getelementptr inbounds %struct.fnode, %struct.fnode* %545, i32 0, i32 1
  %547 = load i8*, i8** %546, align 8
  %548 = call i32 @le32_to_cpu(i8* %547)
  %549 = load i32, i32* %15, align 4
  %550 = call i32 @hpfs_add_sector_to_btree(%struct.super_block* %544, i32 %548, i32 0, i32 %549)
  %551 = icmp ne i32 %550, -1
  br i1 %551, label %552, label %555

552:                                              ; preds = %543
  %553 = load i32, i32* %15, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %15, align 4
  br label %556

555:                                              ; preds = %543
  br label %646

556:                                              ; preds = %552
  br label %557

557:                                              ; preds = %556, %539
  br label %411

558:                                              ; preds = %411
  %559 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %559, align 1
  %560 = load i8*, i8** %8, align 8
  %561 = call i32 @strlen(i8* %560)
  %562 = trunc i32 %561 to i8
  %563 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  store i8 %562, i8* %563, align 1
  %564 = load i32, i32* %10, align 4
  %565 = and i32 %564, 255
  %566 = trunc i32 %565 to i8
  %567 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 2
  store i8 %566, i8* %567, align 1
  %568 = load i32, i32* %10, align 4
  %569 = ashr i32 %568, 8
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 3
  store i8 %570, i8* %571, align 1
  %572 = load %struct.super_block*, %struct.super_block** %12, align 8
  %573 = load %struct.fnode*, %struct.fnode** %7, align 8
  %574 = getelementptr inbounds %struct.fnode, %struct.fnode* %573, i32 0, i32 1
  %575 = load i8*, i8** %574, align 8
  %576 = call i32 @le32_to_cpu(i8* %575)
  %577 = load %struct.fnode*, %struct.fnode** %7, align 8
  %578 = call i32 @fnode_in_anode(%struct.fnode* %577)
  %579 = load %struct.fnode*, %struct.fnode** %7, align 8
  %580 = getelementptr inbounds %struct.fnode, %struct.fnode* %579, i32 0, i32 0
  %581 = load i8*, i8** %580, align 8
  %582 = call i32 @le32_to_cpu(i8* %581)
  %583 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %584 = call i64 (%struct.super_block*, i32, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %572, i32 %576, i32 %578, i32 %582, i32 4, i8* %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %558
  br label %646

587:                                              ; preds = %558
  %588 = load %struct.super_block*, %struct.super_block** %12, align 8
  %589 = load %struct.fnode*, %struct.fnode** %7, align 8
  %590 = getelementptr inbounds %struct.fnode, %struct.fnode* %589, i32 0, i32 1
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 @le32_to_cpu(i8* %591)
  %593 = load %struct.fnode*, %struct.fnode** %7, align 8
  %594 = call i32 @fnode_in_anode(%struct.fnode* %593)
  %595 = load %struct.fnode*, %struct.fnode** %7, align 8
  %596 = getelementptr inbounds %struct.fnode, %struct.fnode* %595, i32 0, i32 0
  %597 = load i8*, i8** %596, align 8
  %598 = call i32 @le32_to_cpu(i8* %597)
  %599 = add nsw i32 %598, 4
  %600 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i32
  %603 = add nsw i32 %602, 1
  %604 = load i8*, i8** %8, align 8
  %605 = call i64 (%struct.super_block*, i32, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %588, i32 %592, i32 %594, i32 %599, i32 %603, i8* %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %587
  br label %646

608:                                              ; preds = %587
  %609 = load %struct.super_block*, %struct.super_block** %12, align 8
  %610 = load %struct.fnode*, %struct.fnode** %7, align 8
  %611 = getelementptr inbounds %struct.fnode, %struct.fnode* %610, i32 0, i32 1
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 @le32_to_cpu(i8* %612)
  %614 = load %struct.fnode*, %struct.fnode** %7, align 8
  %615 = call i32 @fnode_in_anode(%struct.fnode* %614)
  %616 = load %struct.fnode*, %struct.fnode** %7, align 8
  %617 = getelementptr inbounds %struct.fnode, %struct.fnode* %616, i32 0, i32 0
  %618 = load i8*, i8** %617, align 8
  %619 = call i32 @le32_to_cpu(i8* %618)
  %620 = add nsw i32 %619, 5
  %621 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 1
  %622 = load i8, i8* %621, align 1
  %623 = zext i8 %622 to i32
  %624 = add nsw i32 %620, %623
  %625 = load i32, i32* %10, align 4
  %626 = load i8*, i8** %9, align 8
  %627 = call i64 (%struct.super_block*, i32, i32, i32, i32, ...) @hpfs_ea_write(%struct.super_block* %609, i32 %613, i32 %615, i32 %624, i32 %625, i8* %626)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %608
  br label %646

630:                                              ; preds = %608
  %631 = load i32, i32* %13, align 4
  %632 = call i8* @cpu_to_le32(i32 %631)
  %633 = load %struct.fnode*, %struct.fnode** %7, align 8
  %634 = getelementptr inbounds %struct.fnode, %struct.fnode* %633, i32 0, i32 0
  store i8* %632, i8** %634, align 8
  br label %635

635:                                              ; preds = %630, %288
  %636 = load i8*, i8** %8, align 8
  %637 = call i32 @strlen(i8* %636)
  %638 = add nsw i32 5, %637
  %639 = load i32, i32* %10, align 4
  %640 = add nsw i32 %638, %639
  %641 = load %struct.inode*, %struct.inode** %6, align 8
  %642 = call %struct.TYPE_2__* @hpfs_i(%struct.inode* %641)
  %643 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 4
  %645 = add nsw i32 %644, %640
  store i32 %645, i32* %643, align 4
  br label %698

646:                                              ; preds = %629, %607, %586, %555, %500, %486, %466, %426, %409
  %647 = load %struct.fnode*, %struct.fnode** %7, align 8
  %648 = getelementptr inbounds %struct.fnode, %struct.fnode* %647, i32 0, i32 1
  %649 = load i8*, i8** %648, align 8
  %650 = call i32 @le32_to_cpu(i8* %649)
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %692

652:                                              ; preds = %646
  %653 = load %struct.fnode*, %struct.fnode** %7, align 8
  %654 = call i32 @fnode_in_anode(%struct.fnode* %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %669

656:                                              ; preds = %652
  %657 = load %struct.super_block*, %struct.super_block** %12, align 8
  %658 = load %struct.fnode*, %struct.fnode** %7, align 8
  %659 = getelementptr inbounds %struct.fnode, %struct.fnode* %658, i32 0, i32 1
  %660 = load i8*, i8** %659, align 8
  %661 = call i32 @le32_to_cpu(i8* %660)
  %662 = load %struct.fnode*, %struct.fnode** %7, align 8
  %663 = getelementptr inbounds %struct.fnode, %struct.fnode* %662, i32 0, i32 0
  %664 = load i8*, i8** %663, align 8
  %665 = call i32 @le32_to_cpu(i8* %664)
  %666 = add nsw i32 %665, 511
  %667 = ashr i32 %666, 9
  %668 = call i32 @hpfs_truncate_btree(%struct.super_block* %657, i32 %661, i32 1, i32 %667)
  br label %691

669:                                              ; preds = %652
  %670 = load %struct.super_block*, %struct.super_block** %12, align 8
  %671 = load %struct.fnode*, %struct.fnode** %7, align 8
  %672 = getelementptr inbounds %struct.fnode, %struct.fnode* %671, i32 0, i32 1
  %673 = load i8*, i8** %672, align 8
  %674 = call i32 @le32_to_cpu(i8* %673)
  %675 = load %struct.fnode*, %struct.fnode** %7, align 8
  %676 = getelementptr inbounds %struct.fnode, %struct.fnode* %675, i32 0, i32 0
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @le32_to_cpu(i8* %677)
  %679 = add nsw i32 %678, 511
  %680 = ashr i32 %679, 9
  %681 = add nsw i32 %674, %680
  %682 = load i32, i32* %15, align 4
  %683 = load %struct.fnode*, %struct.fnode** %7, align 8
  %684 = getelementptr inbounds %struct.fnode, %struct.fnode* %683, i32 0, i32 0
  %685 = load i8*, i8** %684, align 8
  %686 = call i32 @le32_to_cpu(i8* %685)
  %687 = add nsw i32 %686, 511
  %688 = ashr i32 %687, 9
  %689 = sub nsw i32 %682, %688
  %690 = call i32 @hpfs_free_sectors(%struct.super_block* %670, i32 %681, i32 %689)
  br label %691

691:                                              ; preds = %669, %656
  br label %698

692:                                              ; preds = %646
  %693 = call i8* @cpu_to_le32(i32 0)
  %694 = load %struct.fnode*, %struct.fnode** %7, align 8
  %695 = getelementptr inbounds %struct.fnode, %struct.fnode* %694, i32 0, i32 0
  store i8* %693, i8** %695, align 8
  %696 = load %struct.fnode*, %struct.fnode** %7, align 8
  %697 = getelementptr inbounds %struct.fnode, %struct.fnode* %696, i32 0, i32 1
  store i8* %693, i8** %697, align 8
  br label %698

698:                                              ; preds = %85, %112, %129, %150, %197, %240, %346, %352, %635, %692, %691
  ret void
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @ea_indirect(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i32 @set_indirect_ea(%struct.super_block*, i32, i32, i8*, i32) #1

declare dso_local i32 @ea_in_anode(%struct.extended_attribute*) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_valuelen(%struct.extended_attribute*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @fnode_in_anode(%struct.fnode*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @hpfs_ea_write(%struct.super_block*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @hpfs_alloc_sector(%struct.super_block*, i64, i32, i32) #1

declare dso_local i8* @hpfs_get_sector(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @hpfs_alloc_if_possible(%struct.super_block*, i32) #1

declare dso_local i8* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @hpfs_add_sector_to_btree(%struct.super_block*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @hpfs_truncate_btree(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
