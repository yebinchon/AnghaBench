; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lookup_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lookup_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.ubifs_znode* }
%union.ubifs_key = type { i32 }

@UBIFS_INVALID_KEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32)* @lookup_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @lookup_znode(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca %struct.ubifs_znode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %18 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %19 = call i64 @key_type(%struct.ubifs_info* %17, %union.ubifs_key* %18)
  %20 = load i64, i64* @UBIFS_INVALID_KEY, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubifs_assert(%struct.ubifs_info* %16, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ubifs_znode* @ERR_PTR(i32 %28)
  store %struct.ubifs_znode* %29, %struct.ubifs_znode** %6, align 8
  br label %288

30:                                               ; preds = %5
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.ubifs_znode*, %struct.ubifs_znode** %33, align 8
  store %struct.ubifs_znode* %34, %struct.ubifs_znode** %12, align 8
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %36 = icmp ne %struct.ubifs_znode* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = call %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %38, %struct.TYPE_4__* %40, i32* null, i32 0)
  store %struct.ubifs_znode* %41, %struct.ubifs_znode** %12, align 8
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %43 = call i64 @IS_ERR(%struct.ubifs_znode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %46, %struct.ubifs_znode** %6, align 8
  br label %288

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %63, %struct.ubifs_znode** %6, align 8
  br label %288

64:                                               ; preds = %55, %48
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %67 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %288

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %120
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %74 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %75 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %76 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %73, %struct.ubifs_znode* %74, %union.ubifs_key* %75, i32* %14)
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %72
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %81 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %82 = call %struct.ubifs_znode* @left_znode(%struct.ubifs_info* %80, %struct.ubifs_znode* %81)
  store %struct.ubifs_znode* %82, %struct.ubifs_znode** %12, align 8
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %84 = icmp ne %struct.ubifs_znode* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %288

86:                                               ; preds = %79
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %88 = call i64 @IS_ERR(%struct.ubifs_znode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %91, %struct.ubifs_znode** %6, align 8
  br label %288

92:                                               ; preds = %86
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %95 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %96 = call i32 @ubifs_search_zbranch(%struct.ubifs_info* %93, %struct.ubifs_znode* %94, %union.ubifs_key* %95, i32* %14)
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = icmp sge i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @ubifs_assert(%struct.ubifs_info* %97, i32 %100)
  br label %102

102:                                              ; preds = %92, %72
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %104 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %121

110:                                              ; preds = %102
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %112 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %111, %struct.ubifs_znode* %112, i32 %113)
  store %struct.ubifs_znode* %114, %struct.ubifs_znode** %12, align 8
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %116 = call i64 @IS_ERR(%struct.ubifs_znode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %119, %struct.ubifs_znode** %6, align 8
  br label %288

120:                                              ; preds = %110
  br label %72

121:                                              ; preds = %109
  %122 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %123 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %122, i32 0, i32 2
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %121
  %133 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %134 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %132
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %145 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %144, %struct.ubifs_znode* %145, i32 %146)
  store %struct.ubifs_znode* %147, %struct.ubifs_znode** %6, align 8
  br label %288

148:                                              ; preds = %132, %121
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %150 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %151 = call i32 @is_hash_key(%struct.ubifs_info* %149, %union.ubifs_key* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %288

154:                                              ; preds = %148
  %155 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %155, %struct.ubifs_znode** %13, align 8
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %154, %221
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %181

163:                                              ; preds = %157
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %165 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %166 = call %struct.ubifs_znode* @left_znode(%struct.ubifs_info* %164, %struct.ubifs_znode* %165)
  store %struct.ubifs_znode* %166, %struct.ubifs_znode** %12, align 8
  %167 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %168 = icmp ne %struct.ubifs_znode* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  br label %222

170:                                              ; preds = %163
  %171 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %172 = call i64 @IS_ERR(%struct.ubifs_znode* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %175, %struct.ubifs_znode** %6, align 8
  br label %288

176:                                              ; preds = %170
  %177 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %178 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %176, %160
  %182 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %183 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %182, i32 0, i32 2
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %181
  %193 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %194 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %192
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %205 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %206 = load i32, i32* %14, align 4
  %207 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %204, %struct.ubifs_znode* %205, i32 %206)
  store %struct.ubifs_znode* %207, %struct.ubifs_znode** %6, align 8
  br label %288

208:                                              ; preds = %192, %181
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %210 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %211 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %210, i32 0, i32 2
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 2
  %217 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %218 = call i64 @keys_cmp(%struct.ubifs_info* %209, i32* %216, %union.ubifs_key* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %222

221:                                              ; preds = %208
  br label %157

222:                                              ; preds = %220, %169
  %223 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  store %struct.ubifs_znode* %223, %struct.ubifs_znode** %12, align 8
  %224 = load i32, i32* %15, align 4
  store i32 %224, i32* %14, align 4
  br label %225

225:                                              ; preds = %222, %286
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  %228 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %229 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp sge i32 %227, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %225
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %234 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %235 = call %struct.ubifs_znode* @right_znode(%struct.ubifs_info* %233, %struct.ubifs_znode* %234)
  store %struct.ubifs_znode* %235, %struct.ubifs_znode** %12, align 8
  %236 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %237 = icmp ne %struct.ubifs_znode* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %232
  br label %287

239:                                              ; preds = %232
  %240 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %241 = call i64 @IS_ERR(%struct.ubifs_znode* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %244, %struct.ubifs_znode** %6, align 8
  br label %288

245:                                              ; preds = %239
  store i32 0, i32* %14, align 4
  br label %246

246:                                              ; preds = %245, %225
  %247 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %248 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %247, i32 0, i32 2
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %273

257:                                              ; preds = %246
  %258 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %259 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %258, i32 0, i32 2
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %257
  %269 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %270 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %271 = load i32, i32* %14, align 4
  %272 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %269, %struct.ubifs_znode* %270, i32 %271)
  store %struct.ubifs_znode* %272, %struct.ubifs_znode** %6, align 8
  br label %288

273:                                              ; preds = %257, %246
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %275 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %276 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %275, i32 0, i32 2
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %283 = call i64 @keys_cmp(%struct.ubifs_info* %274, i32* %281, %union.ubifs_key* %282)
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %273
  br label %287

286:                                              ; preds = %273
  br label %225

287:                                              ; preds = %285, %238
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %6, align 8
  br label %288

288:                                              ; preds = %287, %268, %243, %203, %174, %153, %143, %118, %90, %85, %70, %62, %45, %26
  %289 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  ret %struct.ubifs_znode* %289
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_search_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %union.ubifs_key*, i32*) #1

declare dso_local %struct.ubifs_znode* @left_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local %struct.ubifs_znode* @right_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
