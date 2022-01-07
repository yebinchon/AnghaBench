; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_3__* }

@corrections_count = common dso_local global i32 0, align 4
@corrections = common dso_local global %struct.unicode_data* null, align 8
@trees_count = common dso_local global i32 0, align 4
@trees = common dso_local global %struct.TYPE_3__* null, align 8
@ages = common dso_local global i32* null, align 8
@nfdi_mark = common dso_local global i8* null, align 8
@nfdicf_mark = common dso_local global i8* null, align 8
@correction_mark = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"nfdicf\00", align 1
@nfdicf_equal = common dso_local global i32 0, align 4
@nfdicf_print = common dso_local global i32 0, align 4
@nfdicf_size = common dso_local global i32 0, align 4
@nfdicf_index = common dso_local global i32 0, align 4
@nfdicf_emit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nfdi\00", align 1
@nfdi_equal = common dso_local global i32 0, align 4
@nfdi_print = common dso_local global i32 0, align 4
@nfdi_size = common dso_local global i32 0, align 4
@nfdi_index = common dso_local global i32 0, align 4
@nfdi_emit = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trees_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trees_init() #0 {
  %1 = alloca %struct.unicode_data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %3, align 4
  br label %7

7:                                                ; preds = %40, %0
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %7
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @corrections_count, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.unicode_data*, %struct.unicode_data** @corrections, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %14, i64 %16
  store %struct.unicode_data* %17, %struct.unicode_data** %1, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %20 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %25 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %31 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %7, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* @trees_count, align 4
  %46 = load i32, i32* @trees_count, align 4
  %47 = call %struct.TYPE_3__* @calloc(i32 %46, i32 4)
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** @trees, align 8
  %48 = load i32, i32* @trees_count, align 4
  store i32 %48, i32* %4, align 4
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %94, %43
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 8
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %90, %49
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @corrections_count, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = load %struct.unicode_data*, %struct.unicode_data** @corrections, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %70, i64 %72
  store %struct.unicode_data* %73, %struct.unicode_data** %1, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %76 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %81 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %87 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %79, %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %65

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %49, label %97

97:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %131, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @trees_count, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32*, i32** @ages, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ult i32 %108, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %103

119:                                              ; preds = %103
  %120 = load i32*, i32** @ages, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 8
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %98

134:                                              ; preds = %98
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %136 = load i32, i32* @trees_count, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %138
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %141 = load i32, i32* @trees_count, align 4
  %142 = sub nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 9
  store %struct.TYPE_3__* %139, %struct.TYPE_3__** %145, align 8
  %146 = load i8*, i8** @nfdi_mark, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %148 = load i32, i32* @trees_count, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 8
  store i8* %146, i8** %152, align 8
  %153 = load i8*, i8** @nfdicf_mark, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %155 = load i32, i32* @trees_count, align 4
  %156 = sub nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  store i8* %153, i8** %159, align 8
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %200, %134
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @trees_count, align 4
  %163 = sub nsw i32 %162, 2
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %203

165:                                              ; preds = %160
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %167 = load i32, i32* @trees_count, align 4
  %168 = sub nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 9
  store %struct.TYPE_3__* %170, %struct.TYPE_3__** %175, align 8
  %176 = load i8*, i8** @correction_mark, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 8
  store i8* %176, i8** %181, align 8
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %183 = load i32, i32* @trees_count, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %185
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 9
  store %struct.TYPE_3__* %186, %struct.TYPE_3__** %192, align 8
  %193 = load i8*, i8** @correction_mark, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 8
  store i8* %193, i8** %199, align 8
  br label %200

200:                                              ; preds = %165
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 2
  store i32 %202, i32* %5, align 4
  br label %160

203:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %285, %203
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @trees_count, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %288

208:                                              ; preds = %204
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %213, align 8
  %214 = load i32, i32* @nfdicf_equal, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 7
  store i32 %214, i32* %219, align 4
  %220 = load i32, i32* @nfdicf_print, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 6
  store i32 %220, i32* %225, align 8
  %226 = load i32, i32* @nfdicf_size, align 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 5
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* @nfdicf_index, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  store i32 %232, i32* %237, align 8
  %238 = load i32, i32* @nfdicf_emit, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  store i32 %238, i32* %243, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %249, align 8
  %250 = load i32, i32* @nfdi_equal, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 7
  store i32 %250, i32* %256, align 4
  %257 = load i32, i32* @nfdi_print, align 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 6
  store i32 %257, i32* %263, align 8
  %264 = load i32, i32* @nfdi_size, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %266 = load i32, i32* %5, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 5
  store i32 %264, i32* %270, align 4
  %271 = load i32, i32* @nfdi_index, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 4
  store i32 %271, i32* %277, align 8
  %278 = load i32, i32* @nfdi_emit, align 4
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 3
  store i32 %278, i32* %284, align 4
  br label %285

285:                                              ; preds = %208
  %286 = load i32, i32* %5, align 4
  %287 = add nsw i32 %286, 2
  store i32 %287, i32* %5, align 4
  br label %204

288:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %289

289:                                              ; preds = %300, %288
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* @trees_count, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = load i32, i32* @NODE, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 2
  store i32 %294, i32* %299, align 8
  br label %300

300:                                              ; preds = %293
  %301 = load i32, i32* %5, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %5, align 4
  br label %289

303:                                              ; preds = %289
  ret void
}

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
