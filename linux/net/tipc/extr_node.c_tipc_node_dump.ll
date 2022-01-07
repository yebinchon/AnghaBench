; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@NODE_LMAX = common dso_local global i64 0, align 8
@NODE_LMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"node data: (null)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"node data: %x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"link_entry[0]:\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" mtu: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" media: \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" inputq: \00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"link_entry[1]:\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"bclink:\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_dump(%struct.tipc_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @NODE_LMAX, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @NODE_LMIN, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %9, align 8
  %18 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %19 = icmp ne %struct.tipc_node* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %475

29:                                               ; preds = %16
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %44, %46
  %48 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %49 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %43, i64 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %65 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %64, i32 0, i32 9
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %59, i64 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %83 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %82, i32 0, i32 9
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %77, i64 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 %96, %98
  %100 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %101 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %95, i64 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* %9, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %117 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %128, %130
  %132 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %133 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %127, i64 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i64, i64* %9, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 %144, %146
  %148 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %149 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %143, i64 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %8, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %165 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %159, i64 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %8, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i64, i64* %9, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = sub i64 %176, %178
  %180 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %181 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %175, i64 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i64, i64* %9, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 %192, %194
  %196 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %197 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %191, i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %29
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %4, align 4
  br label %475

208:                                              ; preds = %29
  %209 = load i8*, i8** %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i64, i64* %9, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 %213, %215
  %217 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %212, i64 %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %8, align 4
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i64, i64* %9, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = sub i64 %226, %228
  %230 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %231 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %230, i32 0, i32 1
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %225, i64 %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %8, align 4
  %241 = load i8*, i8** %7, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i64, i64* %9, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = sub i64 %245, %247
  %249 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %244, i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %8, align 4
  %254 = load i8*, i8** %7, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i64, i64* %9, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = sub i64 %258, %260
  %262 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %263 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %262, i32 0, i32 1
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %267 = call i64 @tipc_media_addr_printf(i8* %257, i64 %261, i32* %266)
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %8, align 4
  %272 = load i8*, i8** %7, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i64, i64* %9, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = sub i64 %276, %278
  %280 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %275, i64 %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %8, align 4
  %285 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %286 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %285, i32 0, i32 1
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %292 = load i8*, i8** %7, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = call i64 @tipc_link_dump(i32 %290, i32 %291, i8* %295)
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %8, align 4
  %301 = load i8*, i8** %7, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i64, i64* %9, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = sub i64 %305, %307
  %309 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %304, i64 %308, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %309
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %8, align 4
  %314 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %315 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %314, i32 0, i32 1
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i8*, i8** %7, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = call i64 @tipc_list_dump(i32* %318, i32 0, i8* %322)
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %323
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %8, align 4
  %328 = load i8*, i8** %7, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i64, i64* %9, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = sub i64 %332, %334
  %336 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %331, i64 %335, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %338, %336
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %8, align 4
  %341 = load i8*, i8** %7, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i64, i64* %9, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = sub i64 %345, %347
  %349 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %350 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %349, i32 0, i32 1
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %344, i64 %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %354)
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %357, %355
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %8, align 4
  %360 = load i8*, i8** %7, align 8
  %361 = load i32, i32* %8, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = load i64, i64* %9, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = sub i64 %364, %366
  %368 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %363, i64 %367, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %368
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %8, align 4
  %373 = load i8*, i8** %7, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = load i64, i64* %9, align 8
  %378 = load i32, i32* %8, align 4
  %379 = sext i32 %378 to i64
  %380 = sub i64 %377, %379
  %381 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %382 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %381, i32 0, i32 1
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i64 1
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 2
  %386 = call i64 @tipc_media_addr_printf(i8* %376, i64 %380, i32* %385)
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = add nsw i64 %388, %386
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %8, align 4
  %391 = load i8*, i8** %7, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  %395 = load i64, i64* %9, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = sub i64 %395, %397
  %399 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %394, i64 %398, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %400 = load i32, i32* %8, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %399
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %8, align 4
  %404 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %405 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %404, i32 0, i32 1
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i64 1
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %411 = load i8*, i8** %7, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = call i64 @tipc_link_dump(i32 %409, i32 %410, i8* %414)
  %416 = load i32, i32* %8, align 4
  %417 = sext i32 %416 to i64
  %418 = add nsw i64 %417, %415
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %8, align 4
  %420 = load i8*, i8** %7, align 8
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, i8* %420, i64 %422
  %424 = load i64, i64* %9, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = sub i64 %424, %426
  %428 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %423, i64 %427, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %429 = load i32, i32* %8, align 4
  %430 = sext i32 %429 to i64
  %431 = add nsw i64 %430, %428
  %432 = trunc i64 %431 to i32
  store i32 %432, i32* %8, align 4
  %433 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %434 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %433, i32 0, i32 1
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i64 1
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 0
  %438 = load i8*, i8** %7, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  %442 = call i64 @tipc_list_dump(i32* %437, i32 0, i8* %441)
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = add nsw i64 %444, %442
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %8, align 4
  %447 = load i8*, i8** %7, align 8
  %448 = load i32, i32* %8, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  %451 = load i64, i64* %9, align 8
  %452 = load i32, i32* %8, align 4
  %453 = sext i32 %452 to i64
  %454 = sub i64 %451, %453
  %455 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %450, i64 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %457, %455
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %8, align 4
  %460 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %461 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %465 = load i8*, i8** %7, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, i8* %465, i64 %467
  %469 = call i64 @tipc_link_dump(i32 %463, i32 %464, i8* %468)
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = add nsw i64 %471, %469
  %473 = trunc i64 %472 to i32
  store i32 %473, i32* %8, align 4
  %474 = load i32, i32* %8, align 4
  store i32 %474, i32* %4, align 4
  br label %475

475:                                              ; preds = %208, %206, %20
  %476 = load i32, i32* %4, align 4
  ret i32 %476
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @tipc_media_addr_printf(i8*, i64, i32*) #1

declare dso_local i64 @tipc_link_dump(i32, i32, i8*) #1

declare dso_local i64 @tipc_list_dump(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
