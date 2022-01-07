; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_eliminate_yn.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_expr.c_expr_eliminate_yn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { i32*, %struct.expr* }

@E_SYMBOL = common dso_local global i8* null, align 8
@symbol_no = common dso_local global i32 0, align 4
@symbol_yes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.expr*)* @expr_eliminate_yn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_eliminate_yn(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %5 = load %struct.expr*, %struct.expr** %3, align 8
  %6 = icmp ne %struct.expr* %5, null
  br i1 %6, label %7, label %339

7:                                                ; preds = %1
  %8 = load %struct.expr*, %struct.expr** %3, align 8
  %9 = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %337 [
    i32 129, label %11
    i32 128, label %174
  ]

11:                                               ; preds = %7
  %12 = load %struct.expr*, %struct.expr** %3, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.expr*, %struct.expr** %14, align 8
  %16 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %15)
  %17 = load %struct.expr*, %struct.expr** %3, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.expr* %16, %struct.expr** %19, align 8
  %20 = load %struct.expr*, %struct.expr** %3, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.expr*, %struct.expr** %22, align 8
  %24 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %23)
  %25 = load %struct.expr*, %struct.expr** %3, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.expr* %24, %struct.expr** %27, align 8
  %28 = load %struct.expr*, %struct.expr** %3, align 8
  %29 = getelementptr inbounds %struct.expr, %struct.expr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.expr*, %struct.expr** %30, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8*, i8** @E_SYMBOL, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %11
  %39 = load %struct.expr*, %struct.expr** %3, align 8
  %40 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.expr*, %struct.expr** %41, align 8
  %43 = getelementptr inbounds %struct.expr, %struct.expr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, @symbol_no
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.expr*, %struct.expr** %3, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.expr*, %struct.expr** %50, align 8
  %52 = call i32 @expr_free(%struct.expr* %51)
  %53 = load %struct.expr*, %struct.expr** %3, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = call i32 @expr_free(%struct.expr* %56)
  %58 = load i8*, i8** @E_SYMBOL, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.expr*, %struct.expr** %3, align 8
  %61 = getelementptr inbounds %struct.expr, %struct.expr* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.expr*, %struct.expr** %3, align 8
  %63 = getelementptr inbounds %struct.expr, %struct.expr* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32* @symbol_no, i32** %64, align 8
  %65 = load %struct.expr*, %struct.expr** %3, align 8
  %66 = getelementptr inbounds %struct.expr, %struct.expr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %67, align 8
  %68 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %68, %struct.expr** %2, align 8
  br label %341

69:                                               ; preds = %38
  %70 = load %struct.expr*, %struct.expr** %3, align 8
  %71 = getelementptr inbounds %struct.expr, %struct.expr* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.expr*, %struct.expr** %72, align 8
  %74 = getelementptr inbounds %struct.expr, %struct.expr* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, @symbol_yes
  br i1 %77, label %78, label %98

78:                                               ; preds = %69
  %79 = load %struct.expr*, %struct.expr** %3, align 8
  %80 = getelementptr inbounds %struct.expr, %struct.expr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load %struct.expr*, %struct.expr** %81, align 8
  %83 = call i32 @free(%struct.expr* %82)
  %84 = load %struct.expr*, %struct.expr** %3, align 8
  %85 = getelementptr inbounds %struct.expr, %struct.expr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.expr*, %struct.expr** %86, align 8
  store %struct.expr* %87, %struct.expr** %4, align 8
  %88 = load %struct.expr*, %struct.expr** %3, align 8
  %89 = load %struct.expr*, %struct.expr** %3, align 8
  %90 = getelementptr inbounds %struct.expr, %struct.expr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.expr*, %struct.expr** %91, align 8
  %93 = bitcast %struct.expr* %88 to i8*
  %94 = bitcast %struct.expr* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 32, i1 false)
  %95 = load %struct.expr*, %struct.expr** %4, align 8
  %96 = call i32 @free(%struct.expr* %95)
  %97 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %97, %struct.expr** %2, align 8
  br label %341

98:                                               ; preds = %69
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %11
  %101 = load %struct.expr*, %struct.expr** %3, align 8
  %102 = getelementptr inbounds %struct.expr, %struct.expr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.expr*, %struct.expr** %103, align 8
  %105 = getelementptr inbounds %struct.expr, %struct.expr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8*, i8** @E_SYMBOL, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %173

111:                                              ; preds = %100
  %112 = load %struct.expr*, %struct.expr** %3, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.expr*, %struct.expr** %114, align 8
  %116 = getelementptr inbounds %struct.expr, %struct.expr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, @symbol_no
  br i1 %119, label %120, label %142

120:                                              ; preds = %111
  %121 = load %struct.expr*, %struct.expr** %3, align 8
  %122 = getelementptr inbounds %struct.expr, %struct.expr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load %struct.expr*, %struct.expr** %123, align 8
  %125 = call i32 @expr_free(%struct.expr* %124)
  %126 = load %struct.expr*, %struct.expr** %3, align 8
  %127 = getelementptr inbounds %struct.expr, %struct.expr* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.expr*, %struct.expr** %128, align 8
  %130 = call i32 @expr_free(%struct.expr* %129)
  %131 = load i8*, i8** @E_SYMBOL, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.expr*, %struct.expr** %3, align 8
  %134 = getelementptr inbounds %struct.expr, %struct.expr* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.expr*, %struct.expr** %3, align 8
  %136 = getelementptr inbounds %struct.expr, %struct.expr* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32* @symbol_no, i32** %137, align 8
  %138 = load %struct.expr*, %struct.expr** %3, align 8
  %139 = getelementptr inbounds %struct.expr, %struct.expr* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %140, align 8
  %141 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %141, %struct.expr** %2, align 8
  br label %341

142:                                              ; preds = %111
  %143 = load %struct.expr*, %struct.expr** %3, align 8
  %144 = getelementptr inbounds %struct.expr, %struct.expr* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load %struct.expr*, %struct.expr** %145, align 8
  %147 = getelementptr inbounds %struct.expr, %struct.expr* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, @symbol_yes
  br i1 %150, label %151, label %171

151:                                              ; preds = %142
  %152 = load %struct.expr*, %struct.expr** %3, align 8
  %153 = getelementptr inbounds %struct.expr, %struct.expr* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load %struct.expr*, %struct.expr** %154, align 8
  %156 = call i32 @free(%struct.expr* %155)
  %157 = load %struct.expr*, %struct.expr** %3, align 8
  %158 = getelementptr inbounds %struct.expr, %struct.expr* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load %struct.expr*, %struct.expr** %159, align 8
  store %struct.expr* %160, %struct.expr** %4, align 8
  %161 = load %struct.expr*, %struct.expr** %3, align 8
  %162 = load %struct.expr*, %struct.expr** %3, align 8
  %163 = getelementptr inbounds %struct.expr, %struct.expr* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load %struct.expr*, %struct.expr** %164, align 8
  %166 = bitcast %struct.expr* %161 to i8*
  %167 = bitcast %struct.expr* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 32, i1 false)
  %168 = load %struct.expr*, %struct.expr** %4, align 8
  %169 = call i32 @free(%struct.expr* %168)
  %170 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %170, %struct.expr** %2, align 8
  br label %341

171:                                              ; preds = %142
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172, %100
  br label %338

174:                                              ; preds = %7
  %175 = load %struct.expr*, %struct.expr** %3, align 8
  %176 = getelementptr inbounds %struct.expr, %struct.expr* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load %struct.expr*, %struct.expr** %177, align 8
  %179 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %178)
  %180 = load %struct.expr*, %struct.expr** %3, align 8
  %181 = getelementptr inbounds %struct.expr, %struct.expr* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store %struct.expr* %179, %struct.expr** %182, align 8
  %183 = load %struct.expr*, %struct.expr** %3, align 8
  %184 = getelementptr inbounds %struct.expr, %struct.expr* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.expr*, %struct.expr** %185, align 8
  %187 = call %struct.expr* @expr_eliminate_yn(%struct.expr* %186)
  %188 = load %struct.expr*, %struct.expr** %3, align 8
  %189 = getelementptr inbounds %struct.expr, %struct.expr* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store %struct.expr* %187, %struct.expr** %190, align 8
  %191 = load %struct.expr*, %struct.expr** %3, align 8
  %192 = getelementptr inbounds %struct.expr, %struct.expr* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load %struct.expr*, %struct.expr** %193, align 8
  %195 = getelementptr inbounds %struct.expr, %struct.expr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = load i8*, i8** @E_SYMBOL, align 8
  %200 = icmp eq i8* %198, %199
  br i1 %200, label %201, label %263

201:                                              ; preds = %174
  %202 = load %struct.expr*, %struct.expr** %3, align 8
  %203 = getelementptr inbounds %struct.expr, %struct.expr* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load %struct.expr*, %struct.expr** %204, align 8
  %206 = getelementptr inbounds %struct.expr, %struct.expr* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, @symbol_no
  br i1 %209, label %210, label %230

210:                                              ; preds = %201
  %211 = load %struct.expr*, %struct.expr** %3, align 8
  %212 = getelementptr inbounds %struct.expr, %struct.expr* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load %struct.expr*, %struct.expr** %213, align 8
  %215 = call i32 @free(%struct.expr* %214)
  %216 = load %struct.expr*, %struct.expr** %3, align 8
  %217 = getelementptr inbounds %struct.expr, %struct.expr* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load %struct.expr*, %struct.expr** %218, align 8
  store %struct.expr* %219, %struct.expr** %4, align 8
  %220 = load %struct.expr*, %struct.expr** %3, align 8
  %221 = load %struct.expr*, %struct.expr** %3, align 8
  %222 = getelementptr inbounds %struct.expr, %struct.expr* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load %struct.expr*, %struct.expr** %223, align 8
  %225 = bitcast %struct.expr* %220 to i8*
  %226 = bitcast %struct.expr* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 %226, i64 32, i1 false)
  %227 = load %struct.expr*, %struct.expr** %4, align 8
  %228 = call i32 @free(%struct.expr* %227)
  %229 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %229, %struct.expr** %2, align 8
  br label %341

230:                                              ; preds = %201
  %231 = load %struct.expr*, %struct.expr** %3, align 8
  %232 = getelementptr inbounds %struct.expr, %struct.expr* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load %struct.expr*, %struct.expr** %233, align 8
  %235 = getelementptr inbounds %struct.expr, %struct.expr* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = icmp eq i32* %237, @symbol_yes
  br i1 %238, label %239, label %261

239:                                              ; preds = %230
  %240 = load %struct.expr*, %struct.expr** %3, align 8
  %241 = getelementptr inbounds %struct.expr, %struct.expr* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load %struct.expr*, %struct.expr** %242, align 8
  %244 = call i32 @expr_free(%struct.expr* %243)
  %245 = load %struct.expr*, %struct.expr** %3, align 8
  %246 = getelementptr inbounds %struct.expr, %struct.expr* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load %struct.expr*, %struct.expr** %247, align 8
  %249 = call i32 @expr_free(%struct.expr* %248)
  %250 = load i8*, i8** @E_SYMBOL, align 8
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.expr*, %struct.expr** %3, align 8
  %253 = getelementptr inbounds %struct.expr, %struct.expr* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.expr*, %struct.expr** %3, align 8
  %255 = getelementptr inbounds %struct.expr, %struct.expr* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  store i32* @symbol_yes, i32** %256, align 8
  %257 = load %struct.expr*, %struct.expr** %3, align 8
  %258 = getelementptr inbounds %struct.expr, %struct.expr* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %259, align 8
  %260 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %260, %struct.expr** %2, align 8
  br label %341

261:                                              ; preds = %230
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262, %174
  %264 = load %struct.expr*, %struct.expr** %3, align 8
  %265 = getelementptr inbounds %struct.expr, %struct.expr* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load %struct.expr*, %struct.expr** %266, align 8
  %268 = getelementptr inbounds %struct.expr, %struct.expr* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = load i8*, i8** @E_SYMBOL, align 8
  %273 = icmp eq i8* %271, %272
  br i1 %273, label %274, label %336

274:                                              ; preds = %263
  %275 = load %struct.expr*, %struct.expr** %3, align 8
  %276 = getelementptr inbounds %struct.expr, %struct.expr* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load %struct.expr*, %struct.expr** %277, align 8
  %279 = getelementptr inbounds %struct.expr, %struct.expr* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = icmp eq i32* %281, @symbol_no
  br i1 %282, label %283, label %303

283:                                              ; preds = %274
  %284 = load %struct.expr*, %struct.expr** %3, align 8
  %285 = getelementptr inbounds %struct.expr, %struct.expr* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load %struct.expr*, %struct.expr** %286, align 8
  %288 = call i32 @free(%struct.expr* %287)
  %289 = load %struct.expr*, %struct.expr** %3, align 8
  %290 = getelementptr inbounds %struct.expr, %struct.expr* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 1
  %292 = load %struct.expr*, %struct.expr** %291, align 8
  store %struct.expr* %292, %struct.expr** %4, align 8
  %293 = load %struct.expr*, %struct.expr** %3, align 8
  %294 = load %struct.expr*, %struct.expr** %3, align 8
  %295 = getelementptr inbounds %struct.expr, %struct.expr* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 1
  %297 = load %struct.expr*, %struct.expr** %296, align 8
  %298 = bitcast %struct.expr* %293 to i8*
  %299 = bitcast %struct.expr* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 32, i1 false)
  %300 = load %struct.expr*, %struct.expr** %4, align 8
  %301 = call i32 @free(%struct.expr* %300)
  %302 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %302, %struct.expr** %2, align 8
  br label %341

303:                                              ; preds = %274
  %304 = load %struct.expr*, %struct.expr** %3, align 8
  %305 = getelementptr inbounds %struct.expr, %struct.expr* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load %struct.expr*, %struct.expr** %306, align 8
  %308 = getelementptr inbounds %struct.expr, %struct.expr* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = icmp eq i32* %310, @symbol_yes
  br i1 %311, label %312, label %334

312:                                              ; preds = %303
  %313 = load %struct.expr*, %struct.expr** %3, align 8
  %314 = getelementptr inbounds %struct.expr, %struct.expr* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 1
  %316 = load %struct.expr*, %struct.expr** %315, align 8
  %317 = call i32 @expr_free(%struct.expr* %316)
  %318 = load %struct.expr*, %struct.expr** %3, align 8
  %319 = getelementptr inbounds %struct.expr, %struct.expr* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load %struct.expr*, %struct.expr** %320, align 8
  %322 = call i32 @expr_free(%struct.expr* %321)
  %323 = load i8*, i8** @E_SYMBOL, align 8
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.expr*, %struct.expr** %3, align 8
  %326 = getelementptr inbounds %struct.expr, %struct.expr* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load %struct.expr*, %struct.expr** %3, align 8
  %328 = getelementptr inbounds %struct.expr, %struct.expr* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 0
  store i32* @symbol_yes, i32** %329, align 8
  %330 = load %struct.expr*, %struct.expr** %3, align 8
  %331 = getelementptr inbounds %struct.expr, %struct.expr* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %332, align 8
  %333 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %333, %struct.expr** %2, align 8
  br label %341

334:                                              ; preds = %303
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335, %263
  br label %338

337:                                              ; preds = %7
  br label %338

338:                                              ; preds = %337, %336, %173
  br label %339

339:                                              ; preds = %338, %1
  %340 = load %struct.expr*, %struct.expr** %3, align 8
  store %struct.expr* %340, %struct.expr** %2, align 8
  br label %341

341:                                              ; preds = %339, %312, %283, %239, %210, %151, %120, %78, %47
  %342 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %342
}

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local i32 @free(%struct.expr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
