; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_ibalance.c_internal_define_dest_src_infos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_ibalance.c_internal_define_dest_src_infos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32*, i32, i8**, i8**, i32, i8**, i8**, %struct.buffer_head**, %struct.buffer_head** }
%struct.buffer_info = type { i8*, i8*, i8*, %struct.tree_balance* }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ibalance-1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"shift type is unknown (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tree_balance*, i32, %struct.buffer_info*, %struct.buffer_info*, i32*, %struct.buffer_head**)* @internal_define_dest_src_infos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_define_dest_src_infos(i32 %0, %struct.tree_balance* %1, i32 %2, %struct.buffer_info* %3, %struct.buffer_info* %4, i32* %5, %struct.buffer_head** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree_balance*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_info*, align 8
  %12 = alloca %struct.buffer_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.buffer_head**, align 8
  store i32 %0, i32* %8, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.buffer_info* %3, %struct.buffer_info** %11, align 8
  store %struct.buffer_info* %4, %struct.buffer_info** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %14, align 8
  %15 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %16 = call i32 @memset(%struct.buffer_info* %15, i32 0, i32 32)
  %17 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %18 = call i32 @memset(%struct.buffer_info* %17, i32 0, i32 32)
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %372 [
    i32 129, label %20
    i32 131, label %88
    i32 130, label %156
    i32 128, label %224
    i32 134, label %292
    i32 132, label %319
    i32 133, label %345
  ]

20:                                               ; preds = %7
  %21 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %22 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %23 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %22, i32 0, i32 3
  store %struct.tree_balance* %21, %struct.tree_balance** %23, align 8
  %24 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @PATH_H_PBUFFER(i32 %26, i32 %27)
  %29 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %30 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %32 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i8* @PATH_H_PPARENT(i32 %33, i32 %34)
  %36 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %37 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %39 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8* @PATH_H_POSITION(i32 %40, i32 %42)
  %44 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %45 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %47 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %48 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %47, i32 0, i32 3
  store %struct.tree_balance* %46, %struct.tree_balance** %48, align 8
  %49 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %50 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %49, i32 0, i32 7
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %57 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %59 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %58, i32 0, i32 6
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %66 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @get_left_neighbor_position(%struct.tree_balance* %67, i32 %68)
  %70 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %71 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %73 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %81 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %80, i32 0, i32 9
  %82 = load %struct.buffer_head**, %struct.buffer_head*** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %82, i64 %84
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %86, %struct.buffer_head** %87, align 8
  br label %378

88:                                               ; preds = %7
  %89 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %90 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %91 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %90, i32 0, i32 3
  store %struct.tree_balance* %89, %struct.tree_balance** %91, align 8
  %92 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 7
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %100 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %102 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %101, i32 0, i32 6
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %109 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @get_left_neighbor_position(%struct.tree_balance* %110, i32 %111)
  %113 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %114 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %116 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %117 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %116, i32 0, i32 3
  store %struct.tree_balance* %115, %struct.tree_balance** %117, align 8
  %118 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %119 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i8* @PATH_H_PBUFFER(i32 %120, i32 %121)
  %123 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %124 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %126 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i8* @PATH_H_PPARENT(i32 %127, i32 %128)
  %130 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %131 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %133 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  %137 = call i8* @PATH_H_POSITION(i32 %134, i32 %136)
  %138 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %139 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %141 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %13, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %149 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %148, i32 0, i32 9
  %150 = load %struct.buffer_head**, %struct.buffer_head*** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %150, i64 %152
  %154 = load %struct.buffer_head*, %struct.buffer_head** %153, align 8
  %155 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %154, %struct.buffer_head** %155, align 8
  br label %378

156:                                              ; preds = %7
  %157 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %158 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %159 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %158, i32 0, i32 3
  store %struct.tree_balance* %157, %struct.tree_balance** %159, align 8
  %160 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %161 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %160, i32 0, i32 4
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %168 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %170 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %177 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i8* @get_right_neighbor_position(%struct.tree_balance* %178, i32 %179)
  %181 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %182 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %184 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %185 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %184, i32 0, i32 3
  store %struct.tree_balance* %183, %struct.tree_balance** %185, align 8
  %186 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %187 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i8* @PATH_H_PBUFFER(i32 %188, i32 %189)
  %191 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %192 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %194 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i8* @PATH_H_PPARENT(i32 %195, i32 %196)
  %198 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %199 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %201 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  %205 = call i8* @PATH_H_POSITION(i32 %202, i32 %204)
  %206 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %207 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %209 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %13, align 8
  store i32 %214, i32* %215, align 4
  %216 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %217 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %216, i32 0, i32 8
  %218 = load %struct.buffer_head**, %struct.buffer_head*** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %218, i64 %220
  %222 = load %struct.buffer_head*, %struct.buffer_head** %221, align 8
  %223 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %222, %struct.buffer_head** %223, align 8
  br label %378

224:                                              ; preds = %7
  %225 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %226 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %227 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %226, i32 0, i32 3
  store %struct.tree_balance* %225, %struct.tree_balance** %227, align 8
  %228 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %229 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i8* @PATH_H_PBUFFER(i32 %230, i32 %231)
  %233 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %234 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %236 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = call i8* @PATH_H_PPARENT(i32 %237, i32 %238)
  %240 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %241 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %243 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  %247 = call i8* @PATH_H_POSITION(i32 %244, i32 %246)
  %248 = load %struct.buffer_info*, %struct.buffer_info** %12, align 8
  %249 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  %250 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %251 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %252 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %251, i32 0, i32 3
  store %struct.tree_balance* %250, %struct.tree_balance** %252, align 8
  %253 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %254 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %253, i32 0, i32 4
  %255 = load i8**, i8*** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %261 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %263 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %262, i32 0, i32 3
  %264 = load i8**, i8*** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %270 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %272 = load i32, i32* %10, align 4
  %273 = call i8* @get_right_neighbor_position(%struct.tree_balance* %271, i32 %272)
  %274 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %275 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %274, i32 0, i32 0
  store i8* %273, i8** %275, align 8
  %276 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %277 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %13, align 8
  store i32 %282, i32* %283, align 4
  %284 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %285 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %284, i32 0, i32 8
  %286 = load %struct.buffer_head**, %struct.buffer_head*** %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %286, i64 %288
  %290 = load %struct.buffer_head*, %struct.buffer_head** %289, align 8
  %291 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %290, %struct.buffer_head** %291, align 8
  br label %378

292:                                              ; preds = %7
  %293 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %294 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %295 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %294, i32 0, i32 3
  store %struct.tree_balance* %293, %struct.tree_balance** %295, align 8
  %296 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %297 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %296, i32 0, i32 7
  %298 = load i8**, i8*** %297, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %304 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %303, i32 0, i32 2
  store i8* %302, i8** %304, align 8
  %305 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %306 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %305, i32 0, i32 6
  %307 = load i8**, i8*** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %307, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %313 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  %314 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %315 = load i32, i32* %10, align 4
  %316 = call i8* @get_left_neighbor_position(%struct.tree_balance* %314, i32 %315)
  %317 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %318 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %317, i32 0, i32 0
  store i8* %316, i8** %318, align 8
  br label %378

319:                                              ; preds = %7
  %320 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %321 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %322 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %321, i32 0, i32 3
  store %struct.tree_balance* %320, %struct.tree_balance** %322, align 8
  %323 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %324 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = call i8* @PATH_H_PBUFFER(i32 %325, i32 %326)
  %328 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %329 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %328, i32 0, i32 2
  store i8* %327, i8** %329, align 8
  %330 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %331 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = call i8* @PATH_H_PPARENT(i32 %332, i32 %333)
  %335 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %336 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %335, i32 0, i32 1
  store i8* %334, i8** %336, align 8
  %337 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %338 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  %342 = call i8* @PATH_H_POSITION(i32 %339, i32 %341)
  %343 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %344 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %343, i32 0, i32 0
  store i8* %342, i8** %344, align 8
  br label %378

345:                                              ; preds = %7
  %346 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %347 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %348 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %347, i32 0, i32 3
  store %struct.tree_balance* %346, %struct.tree_balance** %348, align 8
  %349 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %350 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %349, i32 0, i32 4
  %351 = load i8**, i8*** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %351, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %357 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %356, i32 0, i32 2
  store i8* %355, i8** %357, align 8
  %358 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %359 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %358, i32 0, i32 3
  %360 = load i8**, i8*** %359, align 8
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %366 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %365, i32 0, i32 1
  store i8* %364, i8** %366, align 8
  %367 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %368 = load i32, i32* %10, align 4
  %369 = call i8* @get_right_neighbor_position(%struct.tree_balance* %367, i32 %368)
  %370 = load %struct.buffer_info*, %struct.buffer_info** %11, align 8
  %371 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %370, i32 0, i32 0
  store i8* %369, i8** %371, align 8
  br label %378

372:                                              ; preds = %7
  %373 = load %struct.tree_balance*, %struct.tree_balance** %9, align 8
  %374 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = call i32 @reiserfs_panic(i32 %375, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %376)
  br label %378

378:                                              ; preds = %372, %345, %319, %292, %224, %156, %88, %20
  ret void
}

declare dso_local i32 @memset(%struct.buffer_info*, i32, i32) #1

declare dso_local i8* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i8* @PATH_H_PPARENT(i32, i32) #1

declare dso_local i8* @PATH_H_POSITION(i32, i32) #1

declare dso_local i8* @get_left_neighbor_position(%struct.tree_balance*, i32) #1

declare dso_local i8* @get_right_neighbor_position(%struct.tree_balance*, i32) #1

declare dso_local i32 @reiserfs_panic(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
