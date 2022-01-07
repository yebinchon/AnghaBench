; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_dnode_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_get_dnode_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32, i32, %struct.page*, %struct.page*, %struct.TYPE_5__*, i32, i8* }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.f2fs_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ALLOC_NODE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@LOOKUP_NODE_RA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dnode_of_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca [4 x %struct.page*], align 16
  %10 = alloca %struct.page*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %19 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %18, i32 0, i32 6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_5__* %20)
  store %struct.f2fs_sb_info* %21, %struct.f2fs_sb_info** %8, align 8
  store %struct.page* null, %struct.page** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %23 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = call i32 @get_node_path(%struct.TYPE_5__* %24, i64 %25, i32* %26, i32* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %338

33:                                               ; preds = %3
  %34 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %35 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %34, i32 0, i32 6
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  store i8* %38, i8** %39, align 16
  %40 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %41 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %40, i32 0, i32 5
  %42 = load %struct.page*, %struct.page** %41, align 8
  %43 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  store %struct.page* %42, %struct.page** %43, align 16
  %44 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %45 = load %struct.page*, %struct.page** %44, align 16
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %33
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %50 = load i8*, i8** %49, align 16
  %51 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %48, i8* %50)
  %52 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  store %struct.page* %51, %struct.page** %52, align 16
  %53 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %54 = load %struct.page*, %struct.page** %53, align 16
  %55 = call i64 @IS_ERR(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %59 = load %struct.page*, %struct.page** %58, align 16
  %60 = call i32 @PTR_ERR(%struct.page* %59)
  store i32 %60, i32* %4, align 4
  br label %338

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %64 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %63, i32 0, i32 6
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i64 @f2fs_has_inline_data(%struct.TYPE_5__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %16, align 4
  %74 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %75 = load %struct.page*, %struct.page** %74, align 16
  %76 = call i32 @f2fs_put_page(%struct.page* %75, i32 1)
  br label %314

77:                                               ; preds = %68, %62
  %78 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %79 = load %struct.page*, %struct.page** %78, align 16
  store %struct.page* %79, %struct.page** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = call i8* @get_nid(%struct.page* %83, i32 %85, i32 1)
  %87 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %90 = load %struct.page*, %struct.page** %89, align 16
  %91 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %92 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %91, i32 0, i32 5
  store %struct.page* %90, %struct.page** %92, align 8
  %93 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %94 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %270, %88
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %273

99:                                               ; preds = %95
  store i32 0, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %174, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ALLOC_NODE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %174

109:                                              ; preds = %105
  %110 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %112
  %114 = call i32 @f2fs_alloc_nid(%struct.f2fs_sb_info* %110, i8** %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @ENOSPC, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  br label %304

119:                                              ; preds = %109
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %125 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.page* @f2fs_new_node_page(%struct.dnode_of_data* %126, i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %133
  store %struct.page* %131, %struct.page** %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %136
  %138 = load %struct.page*, %struct.page** %137, align 8
  %139 = call i64 @IS_ERR(%struct.page* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %119
  %142 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %142, i8* %146)
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %149
  %151 = load %struct.page*, %struct.page** %150, align 8
  %152 = call i32 @PTR_ERR(%struct.page* %151)
  store i32 %152, i32* %16, align 4
  br label %304

153:                                              ; preds = %119
  %154 = load %struct.page*, %struct.page** %10, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 1
  %166 = zext i1 %165 to i32
  %167 = call i32 @set_nid(%struct.page* %154, i32 %159, i8* %163, i32 %166)
  %168 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %168, i8* %172)
  store i32 1, i32* %17, align 4
  br label %210

174:                                              ; preds = %105, %99
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @LOOKUP_NODE_RA, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %174
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %178
  %183 = load i32, i32* %14, align 4
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %209

185:                                              ; preds = %182
  %186 = load %struct.page*, %struct.page** %10, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call %struct.page* @f2fs_get_node_page_ra(%struct.page* %186, i32 %191)
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %194
  store %struct.page* %192, %struct.page** %195, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %197
  %199 = load %struct.page*, %struct.page** %198, align 8
  %200 = call i64 @IS_ERR(%struct.page* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %185
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %204
  %206 = load %struct.page*, %struct.page** %205, align 8
  %207 = call i32 @PTR_ERR(%struct.page* %206)
  store i32 %207, i32* %16, align 4
  br label %304

208:                                              ; preds = %185
  store i32 1, i32* %17, align 4
  br label %209

209:                                              ; preds = %208, %182, %178, %174
  br label %210

210:                                              ; preds = %209, %153
  %211 = load i32, i32* %15, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %215 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  %216 = load %struct.page*, %struct.page** %10, align 8
  %217 = call i32 @unlock_page(%struct.page* %216)
  br label %221

218:                                              ; preds = %210
  %219 = load %struct.page*, %struct.page** %10, align 8
  %220 = call i32 @f2fs_put_page(%struct.page* %219, i32 1)
  br label %221

221:                                              ; preds = %218, %213
  %222 = load i32, i32* %17, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %250, label %224

224:                                              ; preds = %221
  %225 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %225, i8* %229)
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %232
  store %struct.page* %230, %struct.page** %233, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %235
  %237 = load %struct.page*, %struct.page** %236, align 8
  %238 = call i64 @IS_ERR(%struct.page* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %224
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %242
  %244 = load %struct.page*, %struct.page** %243, align 8
  %245 = call i32 @PTR_ERR(%struct.page* %244)
  store i32 %245, i32* %16, align 4
  %246 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %247 = load %struct.page*, %struct.page** %246, align 16
  %248 = call i32 @f2fs_put_page(%struct.page* %247, i32 0)
  br label %314

249:                                              ; preds = %224
  br label %250

250:                                              ; preds = %249, %221
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %250
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %256
  %258 = load %struct.page*, %struct.page** %257, align 8
  store %struct.page* %258, %struct.page** %10, align 8
  %259 = load %struct.page*, %struct.page** %10, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @get_nid(%struct.page* %259, i32 %263, i32 0)
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %267
  store i8* %264, i8** %268, align 8
  br label %269

269:                                              ; preds = %254, %250
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %95

273:                                              ; preds = %95
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %279 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %278, i32 0, i32 8
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %285 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %14, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 %287
  %289 = load %struct.page*, %struct.page** %288, align 8
  %290 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %291 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %290, i32 0, i32 4
  store %struct.page* %289, %struct.page** %291, align 8
  %292 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %293 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %292, i32 0, i32 6
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %293, align 8
  %295 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %296 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %295, i32 0, i32 4
  %297 = load %struct.page*, %struct.page** %296, align 8
  %298 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %299 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @datablock_addr(%struct.TYPE_5__* %294, %struct.page* %297, i32 %300)
  %302 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %303 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %302, i32 0, i32 7
  store i32 %301, i32* %303, align 8
  store i32 0, i32* %4, align 4
  br label %338

304:                                              ; preds = %202, %141, %116
  %305 = load %struct.page*, %struct.page** %10, align 8
  %306 = call i32 @f2fs_put_page(%struct.page* %305, i32 1)
  %307 = load i32, i32* %15, align 4
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = getelementptr inbounds [4 x %struct.page*], [4 x %struct.page*]* %9, i64 0, i64 0
  %311 = load %struct.page*, %struct.page** %310, align 16
  %312 = call i32 @f2fs_put_page(%struct.page* %311, i32 0)
  br label %313

313:                                              ; preds = %309, %304
  br label %314

314:                                              ; preds = %313, %240, %71
  %315 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %316 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %315, i32 0, i32 5
  store %struct.page* null, %struct.page** %316, align 8
  %317 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %318 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %317, i32 0, i32 4
  store %struct.page* null, %struct.page** %318, align 8
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* @ENOENT, align 4
  %321 = sub nsw i32 0, %320
  %322 = icmp eq i32 %319, %321
  br i1 %322, label %323, label %336

323:                                              ; preds = %314
  %324 = load i32, i32* %15, align 4
  %325 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %326 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %14, align 4
  %328 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %329 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.dnode_of_data*, %struct.dnode_of_data** %5, align 8
  %335 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %323, %314
  %337 = load i32, i32* %16, align 4
  store i32 %337, i32* %4, align 4
  br label %338

338:                                              ; preds = %336, %273, %57, %31
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @get_node_path(%struct.TYPE_5__*, i64, i32*, i32*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.TYPE_5__*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i8* @get_nid(%struct.page*, i32, i32) #1

declare dso_local i32 @f2fs_alloc_nid(%struct.f2fs_sb_info*, i8**) #1

declare dso_local %struct.page* @f2fs_new_node_page(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @set_nid(%struct.page*, i32, i8*, i32) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i8*) #1

declare dso_local %struct.page* @f2fs_get_node_page_ra(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @datablock_addr(%struct.TYPE_5__*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
