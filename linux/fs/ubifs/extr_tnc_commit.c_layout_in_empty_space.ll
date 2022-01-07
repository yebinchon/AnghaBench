; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_layout_in_empty_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_layout_in_empty_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, i64, i32*, i32, %struct.TYPE_4__*, %struct.ubifs_znode*, i32, %struct.TYPE_3__, i32, %struct.ubifs_znode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ubifs_znode = type { i32, i32, i32, i32, i32, %struct.ubifs_znode*, %struct.ubifs_zbranch*, %struct.ubifs_znode* }
%struct.ubifs_zbranch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @layout_in_empty_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_in_empty_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_zbranch*, align 8
  %19 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 13
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %21, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %5, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %24 = icmp ne %struct.ubifs_znode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %288

26:                                               ; preds = %1
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ALIGN(i32 %38, i32 %41)
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %193, %256
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %59, %struct.ubifs_znode** %4, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %62 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %60, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %91

67:                                               ; preds = %58
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = call i32 @ubifs_err(%struct.ubifs_info* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %288

80:                                               ; preds = %67
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = getelementptr inbounds i32, i32* %83, i64 %86
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %80, %58
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %97 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %100 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %103 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %105 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %104, i32 0, i32 7
  %106 = load %struct.ubifs_znode*, %struct.ubifs_znode** %105, align 8
  store %struct.ubifs_znode* %106, %struct.ubifs_znode** %6, align 8
  %107 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %108 = icmp ne %struct.ubifs_znode* %107, null
  br i1 %108, label %109, label %128

109:                                              ; preds = %91
  %110 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %111 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %19, align 4
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 6
  %115 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %115, i64 %117
  store %struct.ubifs_zbranch* %118, %struct.ubifs_zbranch** %18, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %121 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %124 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %127 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %141

128:                                              ; preds = %91
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 11
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 11
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %128, %109
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @ALIGN(i32 %142, i32 8)
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 10
  %150 = call i32 @atomic_long_dec(i32* %149)
  %151 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %152 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %151, i32 0, i32 5
  %153 = load %struct.ubifs_znode*, %struct.ubifs_znode** %152, align 8
  store %struct.ubifs_znode* %153, %struct.ubifs_znode** %5, align 8
  %154 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %156 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %155, i32 0, i32 9
  %157 = load %struct.ubifs_znode*, %struct.ubifs_znode** %156, align 8
  %158 = icmp eq %struct.ubifs_znode* %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  br label %166

160:                                              ; preds = %141
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %162 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %163 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %161, i32 %164)
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %160, %159
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @ALIGN(i32 %170, i32 8)
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @ALIGN(i32 %174, i32 8)
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %166
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %180
  %191 = load i32, i32* %14, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %58

194:                                              ; preds = %190, %180, %166
  %195 = load i32, i32* %14, align 4
  %196 = icmp sle i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %203, %204
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = icmp sle i32 %205, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %16, align 4
  br label %218

212:                                              ; preds = %200, %197, %194
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @ALIGN(i32 %213, i32 %216)
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %212, %210
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %218
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %225, %226
  %228 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %229 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %227, %230
  br i1 %231, label %232, label %249

232:                                              ; preds = %224
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %12, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %13, align 4
  %242 = sub nsw i32 %240, %241
  %243 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %233, i32 %234, i32 %239, i32 %242, i32 0, i32 0)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %232
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %2, align 4
  br label %288

248:                                              ; preds = %232
  store i32 -1, i32* %7, align 4
  br label %249

249:                                              ; preds = %248, %224
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %13, align 4
  %252 = sub nsw i32 %251, %250
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  store i32 0, i32* %13, align 4
  br label %256

256:                                              ; preds = %255, %249
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %13, align 4
  %259 = sub nsw i32 %257, %258
  store i32 %259, i32* %14, align 4
  br label %58

260:                                              ; preds = %218
  %261 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %264 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %12, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %13, align 4
  %270 = sub nsw i32 %268, %269
  %271 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %261, i32 %262, i32 %267, i32 %270, i32 0, i32 0)
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %260
  %275 = load i32, i32* %17, align 4
  store i32 %275, i32* %2, align 4
  br label %288

276:                                              ; preds = %260
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %280 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %279, i32 0, i32 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  store i32 %283, i32* %287, align 4
  store i32 0, i32* %2, align 4
  br label %288

288:                                              ; preds = %277, %274, %246, %75, %25
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @ubifs_update_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
