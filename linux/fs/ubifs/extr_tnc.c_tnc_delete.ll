; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ubifs_znode*, i32, i32, i32 }
%struct.ubifs_znode = type { i64, i32, i32, i32, i64, %struct.ubifs_znode*, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"deleting key \00", align 1
@OBSOLETE_ZNODE = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode*, i32)* @tnc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_delete(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_zbranch*, align 8
  %9 = alloca %struct.ubifs_znode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubifs_assert(%struct.ubifs_info* %12, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(%struct.ubifs_info* %19, i32 %30)
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %32, i32 0, i32 6
  %34 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %34, i64 %36
  %38 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %37, i32 0, i32 4
  %39 = call i32 @dbg_tnck(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %40, i32 0, i32 6
  %42 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %42, i64 %44
  store %struct.ubifs_zbranch* %45, %struct.ubifs_zbranch** %8, align 8
  %46 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %47 = call i32 @lnc_free(%struct.ubifs_zbranch* %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %49 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %50 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %48, i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %28
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %61 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %59, %struct.ubifs_znode* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %338

63:                                               ; preds = %28
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %88, %63
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %68 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %74 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %73, i32 0, i32 6
  %75 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %75, i64 %77
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %80 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %79, i32 0, i32 6
  %81 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %81, i64 %84
  %86 = bitcast %struct.ubifs_zbranch* %78 to i8*
  %87 = bitcast %struct.ubifs_zbranch* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %93 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %97 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %338

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %149, %101
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %105 = call i32 @ubifs_zn_obsolete(%struct.ubifs_znode* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @ubifs_assert(%struct.ubifs_info* %103, i32 %108)
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %112 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %111)
  %113 = call i32 @ubifs_assert(%struct.ubifs_info* %110, i32 %112)
  %114 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %115 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %114, i32 0, i32 5
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %115, align 8
  store %struct.ubifs_znode* %116, %struct.ubifs_znode** %9, align 8
  %117 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %118 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %7, align 4
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 2
  %122 = call i32 @atomic_long_dec(i32* %121)
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %124 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %125 = call i32 @insert_old_idx_znode(%struct.ubifs_info* %123, %struct.ubifs_znode* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %102
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %338

130:                                              ; preds = %102
  %131 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %132 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %137 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %138 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %137, i32 0, i32 3
  %139 = call i32 @__set_bit(i32 %136, i32* %138)
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 1
  %142 = call i32 @atomic_long_inc(i32* %141)
  %143 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  br label %147

144:                                              ; preds = %130
  %145 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %146 = call i32 @kfree(%struct.ubifs_znode* %145)
  br label %147

147:                                              ; preds = %144, %135
  %148 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  store %struct.ubifs_znode* %148, %struct.ubifs_znode** %6, align 8
  br label %149

149:                                              ; preds = %147
  %150 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %151 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %102, label %154

154:                                              ; preds = %149
  %155 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %156 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %160 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %161 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @ubifs_assert(%struct.ubifs_info* %159, i32 %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %210, %154
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %170 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %167
  %174 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %175 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %174, i32 0, i32 6
  %176 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %176, i64 %178
  %180 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %181 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %180, i32 0, i32 6
  %182 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %182, i64 %185
  %187 = bitcast %struct.ubifs_zbranch* %179 to i8*
  %188 = bitcast %struct.ubifs_zbranch* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 32, i1 false)
  %189 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %190 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %189, i32 0, i32 6
  %191 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %191, i64 %193
  %195 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %194, i32 0, i32 3
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = icmp ne %struct.TYPE_3__* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %173
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %201 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %200, i32 0, i32 6
  %202 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %202, i64 %204
  %206 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %205, i32 0, i32 3
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i32 %199, i32* %208, align 4
  br label %209

209:                                              ; preds = %198, %173
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %167

213:                                              ; preds = %167
  %214 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %215 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %214, i32 0, i32 5
  %216 = load %struct.ubifs_znode*, %struct.ubifs_znode** %215, align 8
  %217 = icmp ne %struct.ubifs_znode* %216, null
  br i1 %217, label %337, label %218

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %335, %218
  %220 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %221 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %226 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br label %229

229:                                              ; preds = %224, %219
  %230 = phi i1 [ false, %219 ], [ %228, %224 ]
  br i1 %230, label %231, label %336

231:                                              ; preds = %229
  %232 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %232, %struct.ubifs_znode** %9, align 8
  %233 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %234 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %233, i32 0, i32 6
  %235 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %234, align 8
  %236 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %235, i64 0
  store %struct.ubifs_zbranch* %236, %struct.ubifs_zbranch** %8, align 8
  %237 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %238 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %239 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %237, %struct.ubifs_znode* %238, i32 0)
  store %struct.ubifs_znode* %239, %struct.ubifs_znode** %6, align 8
  %240 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %241 = call i64 @IS_ERR(%struct.ubifs_znode* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %231
  %244 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %245 = call i32 @PTR_ERR(%struct.ubifs_znode* %244)
  store i32 %245, i32* %4, align 4
  br label %338

246:                                              ; preds = %231
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %248 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %249 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %247, %struct.ubifs_zbranch* %248)
  store %struct.ubifs_znode* %249, %struct.ubifs_znode** %6, align 8
  %250 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %251 = call i64 @IS_ERR(%struct.ubifs_znode* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %255 = call i32 @PTR_ERR(%struct.ubifs_znode* %254)
  store i32 %255, i32* %4, align 4
  br label %338

256:                                              ; preds = %246
  %257 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %258 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %257, i32 0, i32 5
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %258, align 8
  %259 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %260 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %259, i32 0, i32 2
  store i32 0, i32* %260, align 4
  %261 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %262 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %282

266:                                              ; preds = %256
  %267 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @insert_old_idx(%struct.ubifs_info* %267, i32 %271, i32 %275)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %266
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %4, align 4
  br label %338

281:                                              ; preds = %266
  br label %282

282:                                              ; preds = %281, %256
  %283 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %284 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %287 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  store i32 %285, i32* %288, align 8
  %289 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %290 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %293 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  store i32 %291, i32* %294, align 4
  %295 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %296 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %299 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 1
  store i32 %297, i32* %300, align 8
  %301 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %302 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %303 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  store %struct.ubifs_znode* %301, %struct.ubifs_znode** %304, align 8
  %305 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %306 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %307 = call i32 @ubifs_zn_obsolete(%struct.ubifs_znode* %306)
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = call i32 @ubifs_assert(%struct.ubifs_info* %305, i32 %310)
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %313 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %314 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %313)
  %315 = call i32 @ubifs_assert(%struct.ubifs_info* %312, i32 %314)
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 2
  %318 = call i32 @atomic_long_dec(i32* %317)
  %319 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %320 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %282
  %324 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %325 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %326 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %325, i32 0, i32 3
  %327 = call i32 @__set_bit(i32 %324, i32* %326)
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %329 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %328, i32 0, i32 1
  %330 = call i32 @atomic_long_inc(i32* %329)
  %331 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  br label %335

332:                                              ; preds = %282
  %333 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %334 = call i32 @kfree(%struct.ubifs_znode* %333)
  br label %335

335:                                              ; preds = %332, %323
  br label %219

336:                                              ; preds = %229
  br label %337

337:                                              ; preds = %336, %213
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %337, %279, %253, %243, %128, %100, %58
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_tnck(i32*, i8*) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ubifs_zn_obsolete(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @insert_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*) #1

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
