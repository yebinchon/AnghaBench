; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_layout_cnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_layout_cnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ubifs_cnode*, i32 }
%struct.ubifs_cnode = type { i64, %struct.ubifs_cnode*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"LPT out of space at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @layout_cnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_cnodes(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_cnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %12, i32 0, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %2, align 4
  br label %463

18:                                               ; preds = %1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 18
  %21 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %20, align 8
  store %struct.ubifs_cnode* %21, %struct.ubifs_cnode** %11, align 8
  %22 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %23 = icmp ne %struct.ubifs_cnode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %463

25:                                               ; preds = %18
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 19
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %62, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %50, %40, %25
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  store i32 1, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %89, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %77, %67
  br label %95

95:                                               ; preds = %265, %94
  %96 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %97 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %6, align 4
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %116

108:                                              ; preds = %95
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %108, %100
  br label %117

117:                                              ; preds = %193, %173, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %125, label %211

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ALIGN(i32 %126, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @upd_ltab(%struct.ubifs_info* %131, i32 %132, i32 %137, i32 %140)
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %142, i32 2, i32 %147)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %150 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %149, i32* %4)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %125
  br label %449

154:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %164 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %163, i32 0, i32 14
  %165 = load i32, i32* %164, align 8
  %166 = icmp sle i32 %162, %165
  br label %167

167:                                              ; preds = %161, %154
  %168 = phi i1 [ false, %154 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @ubifs_assert(%struct.ubifs_info* %155, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %190, label %173

173:                                              ; preds = %167
  store i32 1, i32* %8, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %179 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %5, align 4
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %185, i32 1, i32 %188)
  br label %117

190:                                              ; preds = %167
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %190
  store i32 1, i32* %9, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %196 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %199 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %201 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %5, align 4
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %205, i32 1, i32 %208)
  br label %117

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210, %117
  %212 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %213 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %212, i32 0, i32 2
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = icmp ne %struct.TYPE_4__* %214, null
  br i1 %215, label %216, label %239

216:                                              ; preds = %211
  %217 = load i32, i32* %4, align 4
  %218 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %219 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %218, i32 0, i32 2
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %224 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  store i32 %217, i32* %227, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %230 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %229, i32 0, i32 2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %235 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  store i32 %228, i32* %238, align 4
  br label %246

239:                                              ; preds = %211
  %240 = load i32, i32* %4, align 4
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %241, i32 0, i32 15
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %245 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %244, i32 0, i32 16
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %239, %216
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %5, align 4
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %250, i32 1, i32 %251)
  %253 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %254 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %253, i32 0, i32 1
  %255 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %254, align 8
  store %struct.ubifs_cnode* %255, %struct.ubifs_cnode** %11, align 8
  br label %256

256:                                              ; preds = %246
  %257 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %258 = icmp ne %struct.ubifs_cnode* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %11, align 8
  %261 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %262 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %261, i32 0, i32 18
  %263 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %262, align 8
  %264 = icmp ne %struct.ubifs_cnode* %260, %263
  br label %265

265:                                              ; preds = %259, %256
  %266 = phi i1 [ false, %256 ], [ %264, %259 ]
  br i1 %266, label %95, label %267

267:                                              ; preds = %265
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %343, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %271, %274
  %276 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %277 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %275, %278
  br i1 %279, label %280, label %326

280:                                              ; preds = %270
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 17
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ALIGN(i32 %281, i32 %284)
  store i32 %285, i32* %7, align 4
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %289 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %7, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %5, align 4
  %295 = sub nsw i32 %293, %294
  %296 = call i32 @upd_ltab(%struct.ubifs_info* %286, i32 %287, i32 %292, i32 %295)
  %297 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %299 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %5, align 4
  %302 = sub nsw i32 %300, %301
  %303 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %297, i32 2, i32 %302)
  %304 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %305 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %304, i32* %4)
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %10, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %280
  br label %449

309:                                              ; preds = %280
  store i32 0, i32* %5, align 4
  %310 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %311 = load i32, i32* %4, align 4
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %313 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %312, i32 0, i32 13
  %314 = load i32, i32* %313, align 4
  %315 = icmp sge i32 %311, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %309
  %317 = load i32, i32* %4, align 4
  %318 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %319 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %318, i32 0, i32 14
  %320 = load i32, i32* %319, align 8
  %321 = icmp sle i32 %317, %320
  br label %322

322:                                              ; preds = %316, %309
  %323 = phi i1 [ false, %309 ], [ %321, %316 ]
  %324 = zext i1 %323 to i32
  %325 = call i32 @ubifs_assert(%struct.ubifs_info* %310, i32 %324)
  br label %326

326:                                              ; preds = %322, %270
  store i32 1, i32* %8, align 4
  %327 = load i32, i32* %4, align 4
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %329 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %328, i32 0, i32 4
  store i32 %327, i32* %329, align 8
  %330 = load i32, i32* %5, align 4
  %331 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %332 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %331, i32 0, i32 5
  store i32 %330, i32* %332, align 4
  %333 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %334 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %5, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %5, align 4
  %338 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %339 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %340 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %338, i32 1, i32 %341)
  br label %343

343:                                              ; preds = %326, %267
  %344 = load i32, i32* %9, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %419, label %346

346:                                              ; preds = %343
  %347 = load i32, i32* %5, align 4
  %348 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %349 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %347, %350
  %352 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %353 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = icmp sgt i32 %351, %354
  br i1 %355, label %356, label %402

356:                                              ; preds = %346
  %357 = load i32, i32* %5, align 4
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %359 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %358, i32 0, i32 17
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @ALIGN(i32 %357, i32 %360)
  store i32 %361, i32* %7, align 4
  %362 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %363 = load i32, i32* %4, align 4
  %364 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %365 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %7, align 4
  %368 = sub nsw i32 %366, %367
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* %5, align 4
  %371 = sub nsw i32 %369, %370
  %372 = call i32 @upd_ltab(%struct.ubifs_info* %362, i32 %363, i32 %368, i32 %371)
  %373 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %374 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %375 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %5, align 4
  %378 = sub nsw i32 %376, %377
  %379 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %373, i32 2, i32 %378)
  %380 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %381 = call i32 @alloc_lpt_leb(%struct.ubifs_info* %380, i32* %4)
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %356
  br label %449

385:                                              ; preds = %356
  store i32 0, i32* %5, align 4
  %386 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %387 = load i32, i32* %4, align 4
  %388 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %389 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %388, i32 0, i32 13
  %390 = load i32, i32* %389, align 4
  %391 = icmp sge i32 %387, %390
  br i1 %391, label %392, label %398

392:                                              ; preds = %385
  %393 = load i32, i32* %4, align 4
  %394 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %395 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %394, i32 0, i32 14
  %396 = load i32, i32* %395, align 8
  %397 = icmp sle i32 %393, %396
  br label %398

398:                                              ; preds = %392, %385
  %399 = phi i1 [ false, %385 ], [ %397, %392 ]
  %400 = zext i1 %399 to i32
  %401 = call i32 @ubifs_assert(%struct.ubifs_info* %386, i32 %400)
  br label %402

402:                                              ; preds = %398, %346
  %403 = load i32, i32* %4, align 4
  %404 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %405 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %404, i32 0, i32 7
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %5, align 4
  %407 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %408 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %407, i32 0, i32 8
  store i32 %406, i32* %408, align 8
  %409 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %410 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %5, align 4
  %413 = add nsw i32 %412, %411
  store i32 %413, i32* %5, align 4
  %414 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %415 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %416 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %414, i32 1, i32 %417)
  br label %419

419:                                              ; preds = %402, %343
  %420 = load i32, i32* %5, align 4
  %421 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %422 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %421, i32 0, i32 17
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @ALIGN(i32 %420, i32 %423)
  store i32 %424, i32* %7, align 4
  %425 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %426 = load i32, i32* %4, align 4
  %427 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %428 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %7, align 4
  %431 = sub nsw i32 %429, %430
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* %5, align 4
  %434 = sub nsw i32 %432, %433
  %435 = call i32 @upd_ltab(%struct.ubifs_info* %425, i32 %426, i32 %431, i32 %434)
  %436 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %437 = load i32, i32* %7, align 4
  %438 = load i32, i32* %5, align 4
  %439 = sub nsw i32 %437, %438
  %440 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %436, i32 4, i32 %439)
  %441 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %442 = load i32, i32* %7, align 4
  %443 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %441, i32 3, i32 %442)
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %10, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %419
  %447 = load i32, i32* %10, align 4
  store i32 %447, i32* %2, align 4
  br label %463

448:                                              ; preds = %419
  store i32 0, i32* %2, align 4
  br label %463

449:                                              ; preds = %384, %308, %153
  %450 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %451 = load i32, i32* %4, align 4
  %452 = load i32, i32* %5, align 4
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* %9, align 4
  %455 = load i32, i32* %8, align 4
  %456 = call i32 @ubifs_err(%struct.ubifs_info* %450, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %451, i32 %452, i32 %453, i32 %454, i32 %455)
  %457 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %458 = call i32 @ubifs_dump_lpt_info(%struct.ubifs_info* %457)
  %459 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %460 = call i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info* %459)
  %461 = call i32 (...) @dump_stack()
  %462 = load i32, i32* %10, align 4
  store i32 %462, i32* %2, align 4
  br label %463

463:                                              ; preds = %449, %448, %446, %24, %16
  %464 = load i32, i32* %2, align 4
  ret i32 %464
}

declare dso_local i32 @dbg_chk_lpt_sz(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @upd_ltab(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @alloc_lpt_leb(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_dump_lpt_info(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
