; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_wait_tb_buffers_until_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_fix_node.c_wait_tb_buffers_until_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, i64*, %struct.buffer_head**, %struct.buffer_head**, %struct.buffer_head**, i64*, i64*, %struct.TYPE_3__* }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ILLEGAL_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CFL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CFR\00", align 1
@MAX_FEB_SIZE = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*)* @wait_tb_buffers_until_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_tb_buffers_until_unlocked(%struct.tree_balance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  br label %7

7:                                                ; preds = %434, %1
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  %8 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %9 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %8, i32 0, i32 11
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %48, %7
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ILLEGAL_PATH_ELEMENT_OFFSET, align 4
  %19 = icmp sgt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %51

22:                                               ; preds = %20
  %23 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %24 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %23, i32 0, i32 11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %25, i32 %26)
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %31 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %34 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %33, i32 0, i32 11
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %35, i32 %36)
  %38 = call i32 @clear_all_dirty_bits(i32 %32, %struct.buffer_head* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %42 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %41, i32 0, i32 11
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__* %43, i32 %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %4, align 8
  br label %46

46:                                               ; preds = %40, %29
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %13

51:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %364, %51
  %53 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %54 = icmp ne %struct.buffer_head* %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_HEIGHT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 10
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %59, %55, %52
  %69 = phi i1 [ false, %55 ], [ false, %52 ], [ %67, %59 ]
  br i1 %69, label %70, label %367

70:                                               ; preds = %68
  %71 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %72 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %71, i32 0, i32 9
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %215

79:                                               ; preds = %70
  %80 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %81 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %80, i32 0, i32 8
  %82 = load %struct.buffer_head**, %struct.buffer_head*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %82, i64 %84
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = icmp ne %struct.buffer_head* %86, null
  br i1 %87, label %88, label %122

88:                                               ; preds = %79
  %89 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %90 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 8
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %94, i64 %96
  %98 = load %struct.buffer_head*, %struct.buffer_head** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @tb_buffer_sanity_check(i32 %91, %struct.buffer_head* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %102 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 8
  %106 = load %struct.buffer_head**, %struct.buffer_head*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %106, i64 %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %109, align 8
  %111 = call i32 @clear_all_dirty_bits(i32 %103, %struct.buffer_head* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %88
  %114 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %115 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %114, i32 0, i32 8
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %118
  %120 = load %struct.buffer_head*, %struct.buffer_head** %119, align 8
  store %struct.buffer_head* %120, %struct.buffer_head** %4, align 8
  br label %121

121:                                              ; preds = %113, %88
  br label %122

122:                                              ; preds = %121, %79
  %123 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %124 = icmp ne %struct.buffer_head* %123, null
  br i1 %124, label %168, label %125

125:                                              ; preds = %122
  %126 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %127 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %126, i32 0, i32 7
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %128, i64 %130
  %132 = load %struct.buffer_head*, %struct.buffer_head** %131, align 8
  %133 = icmp ne %struct.buffer_head* %132, null
  br i1 %133, label %134, label %168

134:                                              ; preds = %125
  %135 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %136 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %139 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %138, i32 0, i32 7
  %140 = load %struct.buffer_head**, %struct.buffer_head*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %140, i64 %142
  %144 = load %struct.buffer_head*, %struct.buffer_head** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @tb_buffer_sanity_check(i32 %137, %struct.buffer_head* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %148 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %151 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %150, i32 0, i32 7
  %152 = load %struct.buffer_head**, %struct.buffer_head*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %152, i64 %154
  %156 = load %struct.buffer_head*, %struct.buffer_head** %155, align 8
  %157 = call i32 @clear_all_dirty_bits(i32 %149, %struct.buffer_head* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %134
  %160 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %161 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %160, i32 0, i32 7
  %162 = load %struct.buffer_head**, %struct.buffer_head*** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %162, i64 %164
  %166 = load %struct.buffer_head*, %struct.buffer_head** %165, align 8
  store %struct.buffer_head* %166, %struct.buffer_head** %4, align 8
  br label %167

167:                                              ; preds = %159, %134
  br label %168

168:                                              ; preds = %167, %125, %122
  %169 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %170 = icmp ne %struct.buffer_head* %169, null
  br i1 %170, label %214, label %171

171:                                              ; preds = %168
  %172 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %173 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %172, i32 0, i32 6
  %174 = load %struct.buffer_head**, %struct.buffer_head*** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %174, i64 %176
  %178 = load %struct.buffer_head*, %struct.buffer_head** %177, align 8
  %179 = icmp ne %struct.buffer_head* %178, null
  br i1 %179, label %180, label %214

180:                                              ; preds = %171
  %181 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %182 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %185 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %184, i32 0, i32 6
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %186, i64 %188
  %190 = load %struct.buffer_head*, %struct.buffer_head** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @tb_buffer_sanity_check(i32 %183, %struct.buffer_head* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %194 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %197 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %196, i32 0, i32 6
  %198 = load %struct.buffer_head**, %struct.buffer_head*** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %198, i64 %200
  %202 = load %struct.buffer_head*, %struct.buffer_head** %201, align 8
  %203 = call i32 @clear_all_dirty_bits(i32 %195, %struct.buffer_head* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %180
  %206 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %207 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %206, i32 0, i32 6
  %208 = load %struct.buffer_head**, %struct.buffer_head*** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %208, i64 %210
  %212 = load %struct.buffer_head*, %struct.buffer_head** %211, align 8
  store %struct.buffer_head* %212, %struct.buffer_head** %4, align 8
  br label %213

213:                                              ; preds = %205, %180
  br label %214

214:                                              ; preds = %213, %171, %168
  br label %215

215:                                              ; preds = %214, %70
  %216 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %217 = icmp ne %struct.buffer_head* %216, null
  br i1 %217, label %363, label %218

218:                                              ; preds = %215
  %219 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %220 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %219, i32 0, i32 5
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %363

227:                                              ; preds = %218
  %228 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %229 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %228, i32 0, i32 4
  %230 = load %struct.buffer_head**, %struct.buffer_head*** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %230, i64 %232
  %234 = load %struct.buffer_head*, %struct.buffer_head** %233, align 8
  %235 = icmp ne %struct.buffer_head* %234, null
  br i1 %235, label %236, label %270

236:                                              ; preds = %227
  %237 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %238 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %241 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %240, i32 0, i32 4
  %242 = load %struct.buffer_head**, %struct.buffer_head*** %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %242, i64 %244
  %246 = load %struct.buffer_head*, %struct.buffer_head** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @tb_buffer_sanity_check(i32 %239, %struct.buffer_head* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %247)
  %249 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %250 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %253 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %252, i32 0, i32 4
  %254 = load %struct.buffer_head**, %struct.buffer_head*** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %254, i64 %256
  %258 = load %struct.buffer_head*, %struct.buffer_head** %257, align 8
  %259 = call i32 @clear_all_dirty_bits(i32 %251, %struct.buffer_head* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %236
  %262 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %263 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %262, i32 0, i32 4
  %264 = load %struct.buffer_head**, %struct.buffer_head*** %263, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %264, i64 %266
  %268 = load %struct.buffer_head*, %struct.buffer_head** %267, align 8
  store %struct.buffer_head* %268, %struct.buffer_head** %4, align 8
  br label %269

269:                                              ; preds = %261, %236
  br label %270

270:                                              ; preds = %269, %227
  %271 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %272 = icmp ne %struct.buffer_head* %271, null
  br i1 %272, label %316, label %273

273:                                              ; preds = %270
  %274 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %275 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %274, i32 0, i32 3
  %276 = load %struct.buffer_head**, %struct.buffer_head*** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %276, i64 %278
  %280 = load %struct.buffer_head*, %struct.buffer_head** %279, align 8
  %281 = icmp ne %struct.buffer_head* %280, null
  br i1 %281, label %282, label %316

282:                                              ; preds = %273
  %283 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %284 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %287 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %286, i32 0, i32 3
  %288 = load %struct.buffer_head**, %struct.buffer_head*** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %288, i64 %290
  %292 = load %struct.buffer_head*, %struct.buffer_head** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @tb_buffer_sanity_check(i32 %285, %struct.buffer_head* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %293)
  %295 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %296 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %299 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %298, i32 0, i32 3
  %300 = load %struct.buffer_head**, %struct.buffer_head*** %299, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %300, i64 %302
  %304 = load %struct.buffer_head*, %struct.buffer_head** %303, align 8
  %305 = call i32 @clear_all_dirty_bits(i32 %297, %struct.buffer_head* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %282
  %308 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %309 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %308, i32 0, i32 3
  %310 = load %struct.buffer_head**, %struct.buffer_head*** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %310, i64 %312
  %314 = load %struct.buffer_head*, %struct.buffer_head** %313, align 8
  store %struct.buffer_head* %314, %struct.buffer_head** %4, align 8
  br label %315

315:                                              ; preds = %307, %282
  br label %316

316:                                              ; preds = %315, %273, %270
  %317 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %318 = icmp ne %struct.buffer_head* %317, null
  br i1 %318, label %362, label %319

319:                                              ; preds = %316
  %320 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %321 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %320, i32 0, i32 2
  %322 = load %struct.buffer_head**, %struct.buffer_head*** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %322, i64 %324
  %326 = load %struct.buffer_head*, %struct.buffer_head** %325, align 8
  %327 = icmp ne %struct.buffer_head* %326, null
  br i1 %327, label %328, label %362

328:                                              ; preds = %319
  %329 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %330 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %333 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %332, i32 0, i32 2
  %334 = load %struct.buffer_head**, %struct.buffer_head*** %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %334, i64 %336
  %338 = load %struct.buffer_head*, %struct.buffer_head** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = call i32 @tb_buffer_sanity_check(i32 %331, %struct.buffer_head* %338, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %339)
  %341 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %342 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %345 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %344, i32 0, i32 2
  %346 = load %struct.buffer_head**, %struct.buffer_head*** %345, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %346, i64 %348
  %350 = load %struct.buffer_head*, %struct.buffer_head** %349, align 8
  %351 = call i32 @clear_all_dirty_bits(i32 %343, %struct.buffer_head* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %361, label %353

353:                                              ; preds = %328
  %354 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %355 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %354, i32 0, i32 2
  %356 = load %struct.buffer_head**, %struct.buffer_head*** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %356, i64 %358
  %360 = load %struct.buffer_head*, %struct.buffer_head** %359, align 8
  store %struct.buffer_head* %360, %struct.buffer_head** %4, align 8
  br label %361

361:                                              ; preds = %353, %328
  br label %362

362:                                              ; preds = %361, %319, %316
  br label %363

363:                                              ; preds = %362, %218, %215
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %52

367:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %368

368:                                              ; preds = %409, %367
  %369 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %370 = icmp ne %struct.buffer_head* %369, null
  br i1 %370, label %375, label %371

371:                                              ; preds = %368
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* @MAX_FEB_SIZE, align 4
  %374 = icmp slt i32 %372, %373
  br label %375

375:                                              ; preds = %371, %368
  %376 = phi i1 [ false, %368 ], [ %374, %371 ]
  br i1 %376, label %377, label %412

377:                                              ; preds = %375
  %378 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %379 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %378, i32 0, i32 1
  %380 = load %struct.buffer_head**, %struct.buffer_head*** %379, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %380, i64 %382
  %384 = load %struct.buffer_head*, %struct.buffer_head** %383, align 8
  %385 = icmp ne %struct.buffer_head* %384, null
  br i1 %385, label %386, label %408

386:                                              ; preds = %377
  %387 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %388 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %391 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %390, i32 0, i32 1
  %392 = load %struct.buffer_head**, %struct.buffer_head*** %391, align 8
  %393 = load i32, i32* %5, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %392, i64 %394
  %396 = load %struct.buffer_head*, %struct.buffer_head** %395, align 8
  %397 = call i32 @clear_all_dirty_bits(i32 %389, %struct.buffer_head* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %386
  %400 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %401 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %400, i32 0, i32 1
  %402 = load %struct.buffer_head**, %struct.buffer_head*** %401, align 8
  %403 = load i32, i32* %5, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %402, i64 %404
  %406 = load %struct.buffer_head*, %struct.buffer_head** %405, align 8
  store %struct.buffer_head* %406, %struct.buffer_head** %4, align 8
  br label %407

407:                                              ; preds = %399, %386
  br label %408

408:                                              ; preds = %407, %377
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %5, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %5, align 4
  br label %368

412:                                              ; preds = %375
  %413 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %414 = icmp ne %struct.buffer_head* %413, null
  br i1 %414, label %415, label %433

415:                                              ; preds = %412
  %416 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %417 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @reiserfs_write_unlock_nested(i32 %418)
  store i32 %419, i32* %6, align 4
  %420 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %421 = call i32 @__wait_on_buffer(%struct.buffer_head* %420)
  %422 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %423 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* %6, align 4
  %426 = call i32 @reiserfs_write_lock_nested(i32 %424, i32 %425)
  %427 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %428 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %415
  %431 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %431, i32* %2, align 4
  br label %439

432:                                              ; preds = %415
  br label %433

433:                                              ; preds = %432, %412
  br label %434

434:                                              ; preds = %433
  %435 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %436 = icmp ne %struct.buffer_head* %435, null
  br i1 %436, label %7, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* @CARRY_ON, align 4
  store i32 %438, i32* %2, align 4
  br label %439

439:                                              ; preds = %437, %430
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @clear_all_dirty_bits(i32, %struct.buffer_head*) #1

declare dso_local i32 @tb_buffer_sanity_check(i32, %struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @__wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
