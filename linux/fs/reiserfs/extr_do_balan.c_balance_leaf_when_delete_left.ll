; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_balance_leaf_when_delete_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32, i32, %struct.buffer_head**, %struct.buffer_head**, i32*, i32*, %struct.buffer_head**, i32*, i32*, i32 }
%struct.buffer_head = type { i32 }

@LEAF_FROM_S_TO_L = common dso_local global i32 0, align 4
@LEAF_FROM_R_TO_L = common dso_local global i32 0, align 4
@LEAF_FROM_S_TO_R = common dso_local global i32 0, align 4
@LEAF_FROM_L_TO_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PAP-12045: rnum must be 0 (%d)\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"PAP-12050: rnum(%d) and lnum(%d) and item number(%d) in S[0] are not consistent\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"PAP-12055: bad rbytes (%d)/lbytes (%d) parameters when items are not split\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"PAP-12060: bad rbytes (%d)/lbytes (%d) parameters when items are split\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*)* @balance_leaf_when_delete_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_leaf_when_delete_left(%struct.tree_balance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  %6 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %7 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.buffer_head* @PATH_PLAST_BUFFER(i32 %8)
  store %struct.buffer_head* %9, %struct.buffer_head** %4, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = call i32 @B_NR_ITEMS(%struct.buffer_head* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %153

18:                                               ; preds = %1
  %19 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %20 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %133

25:                                               ; preds = %18
  %26 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 8
  %28 = load %struct.buffer_head**, %struct.buffer_head*** %27, align 8
  %29 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %28, i64 0
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  %31 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.buffer_head* @PATH_H_PPARENT(i32 %33, i32 0)
  %35 = icmp eq %struct.buffer_head* %30, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %25
  %37 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @PATH_H_POSITION(i32 %39, i32 1)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 8
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %44, align 8
  %46 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %45, i64 0
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = call i32 @B_NR_ITEMS(%struct.buffer_head* %47)
  %49 = icmp slt i32 1, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %42
  %51 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %52 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %53 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %52, i32 0, i32 10
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %58 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 8
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %63, align 8
  %65 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %64, i64 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  %67 = call i32 @replace_key(%struct.tree_balance* %51, i32 %56, i32 %61, %struct.buffer_head* %66, i32 1)
  br label %68

68:                                               ; preds = %50, %42, %36
  %69 = load i32, i32* @LEAF_FROM_S_TO_L, align 4
  %70 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @leaf_move_items(i32 %69, %struct.tree_balance* %70, i32 %71, i32 -1, i32* null)
  %73 = load i32, i32* @LEAF_FROM_R_TO_L, align 4
  %74 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %75 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %76 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %75, i32 0, i32 5
  %77 = load %struct.buffer_head**, %struct.buffer_head*** %76, align 8
  %78 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %77, i64 0
  %79 = load %struct.buffer_head*, %struct.buffer_head** %78, align 8
  %80 = call i32 @B_NR_ITEMS(%struct.buffer_head* %79)
  %81 = call i32 @leaf_move_items(i32 %73, %struct.tree_balance* %74, i32 %80, i32 -1, i32* null)
  %82 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %84 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %82, %struct.buffer_head* %83)
  %85 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %86 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %87 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %86, i32 0, i32 5
  %88 = load %struct.buffer_head**, %struct.buffer_head*** %87, align 8
  %89 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %88, i64 0
  %90 = load %struct.buffer_head*, %struct.buffer_head** %89, align 8
  %91 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %85, %struct.buffer_head* %90)
  store i32 0, i32* %2, align 4
  br label %291

92:                                               ; preds = %25
  %93 = load i32, i32* @LEAF_FROM_S_TO_R, align 4
  %94 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @leaf_move_items(i32 %93, %struct.tree_balance* %94, i32 %95, i32 -1, i32* null)
  %97 = load i32, i32* @LEAF_FROM_L_TO_R, align 4
  %98 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %99 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %100 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %99, i32 0, i32 4
  %101 = load %struct.buffer_head**, %struct.buffer_head*** %100, align 8
  %102 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %101, i64 0
  %103 = load %struct.buffer_head*, %struct.buffer_head** %102, align 8
  %104 = call i32 @B_NR_ITEMS(%struct.buffer_head* %103)
  %105 = call i32 @leaf_move_items(i32 %97, %struct.tree_balance* %98, i32 %104, i32 -1, i32* null)
  %106 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %107 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %108 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %113 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %118 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %117, i32 0, i32 5
  %119 = load %struct.buffer_head**, %struct.buffer_head*** %118, align 8
  %120 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %119, i64 0
  %121 = load %struct.buffer_head*, %struct.buffer_head** %120, align 8
  %122 = call i32 @replace_key(%struct.tree_balance* %106, i32 %111, i32 %116, %struct.buffer_head* %121, i32 0)
  %123 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %125 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %123, %struct.buffer_head* %124)
  %126 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %127 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %128 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %127, i32 0, i32 4
  %129 = load %struct.buffer_head**, %struct.buffer_head*** %128, align 8
  %130 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %129, i64 0
  %131 = load %struct.buffer_head*, %struct.buffer_head** %130, align 8
  %132 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %126, %struct.buffer_head* %131)
  store i32 -1, i32* %2, align 4
  br label %291

133:                                              ; preds = %18
  %134 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %135 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %142 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @leaf_shift_left(%struct.tree_balance* %147, i32 %148, i32 -1)
  %150 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %152 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %150, %struct.buffer_head* %151)
  store i32 0, i32* %2, align 4
  br label %291

153:                                              ; preds = %1
  %154 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %155 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %160 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %182, label %167

167:                                              ; preds = %153
  %168 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %169 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %174 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %172, %177
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  %181 = icmp sgt i32 %178, %180
  br label %182

182:                                              ; preds = %167, %153
  %183 = phi i1 [ true, %153 ], [ %181, %167 ]
  %184 = zext i1 %183 to i32
  %185 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %186 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %191 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %184, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %194, i32 %195)
  %197 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %198 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %203 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %201, %206
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %182
  %211 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %212 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %217 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, -1
  br label %220

220:                                              ; preds = %215, %210
  %221 = phi i1 [ true, %210 ], [ %219, %215 ]
  br label %222

222:                                              ; preds = %220, %182
  %223 = phi i1 [ false, %182 ], [ %221, %220 ]
  %224 = zext i1 %223 to i32
  %225 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %226 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %229 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %224, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %227, i32 %230)
  %232 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %233 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %238 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %236, %241
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, 1
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %222
  %247 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %248 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %253 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, -1
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i1 [ true, %246 ], [ %255, %251 ]
  br label %258

258:                                              ; preds = %256, %222
  %259 = phi i1 [ false, %222 ], [ %257, %256 ]
  %260 = zext i1 %259 to i32
  %261 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %262 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %265 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i32, i8*, i32, ...) @RFALSE(i32 %260, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %263, i32 %266)
  %268 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %269 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %270 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %275 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @leaf_shift_left(%struct.tree_balance* %268, i32 %273, i32 %276)
  %278 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %279 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %280 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %285 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @leaf_shift_right(%struct.tree_balance* %278, i32 %283, i32 %286)
  %288 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %289 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %290 = call i32 @reiserfs_invalidate_buffer(%struct.tree_balance* %288, %struct.buffer_head* %289)
  store i32 0, i32* %2, align 4
  br label %291

291:                                              ; preds = %258, %133, %92, %68
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i64 @PATH_H_POSITION(i32, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @leaf_move_items(i32, %struct.tree_balance*, i32, i32, i32*) #1

declare dso_local i32 @reiserfs_invalidate_buffer(%struct.tree_balance*, %struct.buffer_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, ...) #1

declare dso_local i32 @leaf_shift_left(%struct.tree_balance*, i32, i32) #1

declare dso_local i32 @leaf_shift_right(%struct.tree_balance*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
