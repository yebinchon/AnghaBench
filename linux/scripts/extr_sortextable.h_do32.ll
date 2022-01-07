; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_sortextable.h_do32.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_sortextable.h_do32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SHN_UNDEF = common dso_local global i32 0, align 4
@SHN_XINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@SHT_REL = common dso_local global i32 0, align 4
@SHT_RELA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@SHT_SYMTAB_SHNDX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"no .strtab in  file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"no .symtab in  file: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"no __ex_table in  file: %s\0A\00", align 1
@extable_ent_size = common dso_local global i32 0, align 4
@compare_extable = common dso_local global i32 0, align 4
@STT_OBJECT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"main_extable_sort_needed\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"no main_extable_sort_needed symbol in  file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32 (i8*, i32)*)* @do_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_func(%struct.TYPE_7__* %0, i8* %1, i32 (i8*, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %23, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = bitcast %struct.TYPE_7__* %29 to i8*
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = call i32 @_r(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = call i32 @r2(i32* %38)
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %26, align 4
  %41 = load i32, i32* @SHN_UNDEF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = call i32 @_r(i32* %46)
  store i32 %47, i32* %26, align 4
  br label %48

48:                                               ; preds = %43, %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @r2(i32* %50)
  store i32 %51, i32* %27, align 4
  %52 = load i32, i32* %27, align 4
  %53 = load i32, i32* @SHN_XINDEX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = call i32 @r(i32* %58)
  store i32 %59, i32* %27, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = load i32, i32* %27, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = bitcast %struct.TYPE_7__* %65 to i8*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = call i32 @_r(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8* %71, i8** %20, align 8
  store i32 0, i32* %24, align 4
  br label %72

72:                                               ; preds = %186, %60
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %26, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %189

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = call i32 @r(i32* %81)
  store i32 %82, i32* %25, align 4
  %83 = load i8*, i8** %20, align 8
  %84 = load i32, i32* %25, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %11, align 8
  %94 = load i32, i32* %24, align 4
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %89, %76
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = call i32 @r(i32* %100)
  %102 = load i32, i32* @SHT_REL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %95
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = call i32 @r(i32* %109)
  %111 = load i32, i32* @SHT_RELA, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %104, %95
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = load i32, i32* %24, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = call i32 @r(i32* %118)
  %120 = load i32, i32* %23, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = bitcast %struct.TYPE_7__* %123 to i8*
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = call i32 @_r(i32* %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %124, i64 %131
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %17, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = load i32, i32* %24, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = call i32 @_r(i32* %138)
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %122, %113, %104
  %141 = load i8*, i8** %20, align 8
  %142 = load i32, i32* %25, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %10, align 8
  br label %152

152:                                              ; preds = %147, %140
  %153 = load i8*, i8** %20, align 8
  %154 = load i32, i32* %25, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = load i32, i32* %24, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %162
  store %struct.TYPE_6__* %163, %struct.TYPE_6__** %9, align 8
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = load i32, i32* %24, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = call i32 @r(i32* %169)
  %171 = load i32, i32* @SHT_SYMTAB_SHNDX, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %164
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = bitcast %struct.TYPE_7__* %174 to i8*
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = call i32 @_r(i32* %180)
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %175, i64 %182
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %14, align 8
  br label %185

185:                                              ; preds = %173, %164
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %24, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %24, align 4
  br label %72

189:                                              ; preds = %72
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = icmp eq %struct.TYPE_6__* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* @stderr, align 4
  %194 = load i8*, i8** %5, align 8
  %195 = call i32 @fprintf(i32 %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %194)
  %196 = call i32 (...) @fail_file()
  br label %197

197:                                              ; preds = %192, %189
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %199 = icmp eq %struct.TYPE_6__* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32, i32* @stderr, align 4
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @fprintf(i32 %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %202)
  %204 = call i32 (...) @fail_file()
  br label %205

205:                                              ; preds = %200, %197
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = bitcast %struct.TYPE_7__* %206 to i8*
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = call i32 @_r(i32* %209)
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %207, i64 %211
  %213 = bitcast i8* %212 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %213, %struct.TYPE_5__** %13, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %215 = icmp eq %struct.TYPE_6__* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %205
  %217 = load i32, i32* @stderr, align 4
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @fprintf(i32 %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %218)
  %220 = call i32 (...) @fail_file()
  br label %221

221:                                              ; preds = %216, %205
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %223 = bitcast %struct.TYPE_7__* %222 to i8*
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = call i32 @_r(i32* %225)
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %223, i64 %227
  store i8* %228, i8** %21, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %230 = bitcast %struct.TYPE_7__* %229 to i8*
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = call i32 @_r(i32* %232)
  %234 = sext i32 %233 to i64
  %235 = getelementptr i8, i8* %230, i64 %234
  store i8* %235, i8** %22, align 8
  %236 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %237 = icmp ne i32 (i8*, i32)* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %221
  %239 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %240 = load i8*, i8** %22, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = call i32 @_r(i32* %242)
  %244 = call i32 %239(i8* %240, i32 %243)
  br label %256

245:                                              ; preds = %221
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = call i32 @_r(i32* %247)
  %249 = load i32, i32* @extable_ent_size, align 4
  %250 = sdiv i32 %248, %249
  store i32 %250, i32* %28, align 4
  %251 = load i8*, i8** %22, align 8
  %252 = load i32, i32* %28, align 4
  %253 = load i32, i32* @extable_ent_size, align 4
  %254 = load i32, i32* @compare_extable, align 4
  %255 = call i32 @qsort(i8* %251, i32 %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %245, %238
  %257 = load i32*, i32** %17, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i32*, i32** %17, align 8
  %261 = load i32, i32* %18, align 4
  %262 = call i32 @memset(i32* %260, i32 0, i32 %261)
  br label %263

263:                                              ; preds = %259, %256
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %24, align 4
  br label %264

264:                                              ; preds = %306, %263
  %265 = load i32, i32* %24, align 4
  %266 = sext i32 %265 to i64
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = call i32 @_r(i32* %268)
  %270 = sext i32 %269 to i64
  %271 = udiv i64 %270, 16
  %272 = icmp ult i64 %266, %271
  br i1 %272, label %273, label %309

273:                                              ; preds = %264
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %275 = bitcast %struct.TYPE_7__* %274 to i8*
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = call i32 @_r(i32* %277)
  %279 = sext i32 %278 to i64
  %280 = getelementptr i8, i8* %275, i64 %279
  %281 = bitcast i8* %280 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %281, %struct.TYPE_5__** %12, align 8
  %282 = load i32, i32* %24, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i64 %284
  store %struct.TYPE_5__* %285, %struct.TYPE_5__** %12, align 8
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @ELF_ST_TYPE(i32 %288)
  %290 = load i64, i64* @STT_OBJECT, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %273
  br label %306

293:                                              ; preds = %273
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 2
  %296 = call i32 @r(i32* %295)
  store i32 %296, i32* %25, align 4
  %297 = load i8*, i8** %21, align 8
  %298 = load i32, i32* %25, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = call i64 @strcmp(i8* %300, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %304, %struct.TYPE_5__** %15, align 8
  br label %309

305:                                              ; preds = %293
  br label %306

306:                                              ; preds = %305, %292
  %307 = load i32, i32* %24, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %24, align 4
  br label %264

309:                                              ; preds = %303, %264
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %311 = icmp eq %struct.TYPE_5__* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = load i32, i32* @stderr, align 4
  %314 = load i8*, i8** %5, align 8
  %315 = call i32 @fprintf(i32 %313, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %314)
  %316 = call i32 (...) @fail_file()
  br label %317

317:                                              ; preds = %312, %309
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = call i32 @r2(i32* %320)
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %324 = ptrtoint %struct.TYPE_5__* %322 to i64
  %325 = ptrtoint %struct.TYPE_5__* %323 to i64
  %326 = sub i64 %324, %325
  %327 = sdiv exact i64 %326, 16
  %328 = trunc i64 %327 to i32
  %329 = load i32*, i32** %14, align 8
  %330 = call i64 @get_secindex(i32 %321, i32 %328, i32* %329)
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %330
  store %struct.TYPE_6__* %331, %struct.TYPE_6__** %16, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %333 = bitcast %struct.TYPE_7__* %332 to i8*
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = call i32 @_r(i32* %335)
  %337 = sext i32 %336 to i64
  %338 = getelementptr i8, i8* %333, i64 %337
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = call i32 @_r(i32* %340)
  %342 = sext i32 %341 to i64
  %343 = getelementptr i8, i8* %338, i64 %342
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = call i32 @_r(i32* %345)
  %347 = sext i32 %346 to i64
  %348 = sub i64 0, %347
  %349 = getelementptr i8, i8* %343, i64 %348
  %350 = bitcast i8* %349 to i32*
  store i32* %350, i32** %19, align 8
  %351 = load i32*, i32** %19, align 8
  %352 = call i32 @w(i32 0, i32* %351)
  ret void
}

declare dso_local i32 @_r(i32*) #1

declare dso_local i32 @r2(i32*) #1

declare dso_local i32 @r(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fail_file(...) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @get_secindex(i32, i32, i32*) #1

declare dso_local i32 @w(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
