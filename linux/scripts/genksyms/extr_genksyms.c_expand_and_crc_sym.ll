; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_expand_and_crc_sym.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_expand_and_crc_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.symbol = type { %struct.symbol*, i8*, %struct.string_list* }
%struct.string_list = type { i32, i8*, %struct.string_list* }

@flag_dump_defs = common dso_local global i32 0, align 4
@debugfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@expansion_trail = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"expand undefined %s %s\00", align 1
@symbol_types = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@expand_and_crc_sym.end = internal global %struct.symbol** @visited_symbols, align 8
@visited_symbols = common dso_local global %struct.symbol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.symbol*, i64)* @expand_and_crc_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_and_crc_sym(%struct.symbol* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.string_list**, align 8
  %8 = alloca %struct.string_list**, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.string_list**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.symbol*, align 8
  %14 = alloca %struct.string_list*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.symbol*, %struct.symbol** %4, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 2
  %17 = load %struct.string_list*, %struct.string_list** %16, align 8
  store %struct.string_list* %17, %struct.string_list** %6, align 8
  store i32 1, i32* %11, align 4
  %18 = load %struct.string_list*, %struct.string_list** %6, align 8
  %19 = icmp ne %struct.string_list* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %3, align 8
  br label %240

22:                                               ; preds = %2
  %23 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %23, %struct.string_list** %9, align 8
  br label %24

24:                                               ; preds = %29, %22
  %25 = load %struct.string_list*, %struct.string_list** %9, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 2
  %27 = load %struct.string_list*, %struct.string_list** %26, align 8
  store %struct.string_list* %27, %struct.string_list** %9, align 8
  %28 = icmp ne %struct.string_list* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %24

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call %struct.string_list** @alloca(i32 %36)
  store %struct.string_list** %37, %struct.string_list*** %8, align 8
  %38 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.string_list*, %struct.string_list** %38, i64 %40
  store %struct.string_list** %41, %struct.string_list*** %7, align 8
  %42 = load %struct.string_list**, %struct.string_list*** %7, align 8
  %43 = getelementptr inbounds %struct.string_list*, %struct.string_list** %42, i64 -1
  store %struct.string_list** %43, %struct.string_list*** %10, align 8
  %44 = load %struct.string_list*, %struct.string_list** %6, align 8
  %45 = load %struct.string_list**, %struct.string_list*** %10, align 8
  %46 = getelementptr inbounds %struct.string_list*, %struct.string_list** %45, i32 -1
  store %struct.string_list** %46, %struct.string_list*** %10, align 8
  store %struct.string_list* %44, %struct.string_list** %45, align 8
  br label %47

47:                                               ; preds = %52, %32
  %48 = load %struct.string_list*, %struct.string_list** %6, align 8
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %48, i32 0, i32 2
  %50 = load %struct.string_list*, %struct.string_list** %49, align 8
  store %struct.string_list* %50, %struct.string_list** %6, align 8
  %51 = icmp ne %struct.string_list* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.string_list*, %struct.string_list** %6, align 8
  %54 = load %struct.string_list**, %struct.string_list*** %10, align 8
  %55 = getelementptr inbounds %struct.string_list*, %struct.string_list** %54, i32 -1
  store %struct.string_list** %55, %struct.string_list*** %10, align 8
  store %struct.string_list* %53, %struct.string_list** %54, align 8
  br label %47

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %225, %56
  %58 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %59 = load %struct.string_list**, %struct.string_list*** %7, align 8
  %60 = icmp ne %struct.string_list** %58, %59
  br i1 %60, label %61, label %226

61:                                               ; preds = %57
  %62 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %63 = getelementptr inbounds %struct.string_list*, %struct.string_list** %62, i32 1
  store %struct.string_list** %63, %struct.string_list*** %8, align 8
  %64 = load %struct.string_list*, %struct.string_list** %62, align 8
  store %struct.string_list* %64, %struct.string_list** %12, align 8
  %65 = load %struct.string_list*, %struct.string_list** %12, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %225 [
    i32 131, label %68
    i32 132, label %85
    i32 129, label %85
    i32 130, label %124
    i32 128, label %124
    i32 133, label %124
  ]

68:                                               ; preds = %61
  %69 = load i32, i32* @flag_dump_defs, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* @debugfile, align 4
  %73 = load %struct.string_list*, %struct.string_list** %12, align 8
  %74 = getelementptr inbounds %struct.string_list, %struct.string_list* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.string_list*, %struct.string_list** %12, align 8
  %79 = getelementptr inbounds %struct.string_list, %struct.string_list* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @partial_crc32(i8* %80, i64 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @partial_crc32_one(i8 signext 32, i64 %83)
  store i64 %84, i64* %5, align 8
  br label %225

85:                                               ; preds = %61, %61
  %86 = load %struct.string_list*, %struct.string_list** %12, align 8
  %87 = getelementptr inbounds %struct.string_list, %struct.string_list* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.string_list*, %struct.string_list** %12, align 8
  %90 = getelementptr inbounds %struct.string_list, %struct.string_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.symbol* @find_symbol(i8* %88, i32 %91, i32 0)
  store %struct.symbol* %92, %struct.symbol** %13, align 8
  %93 = load %struct.symbol*, %struct.symbol** %13, align 8
  %94 = getelementptr inbounds %struct.symbol, %struct.symbol* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %85
  %98 = load i32, i32* @flag_dump_defs, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @debugfile, align 4
  %102 = load %struct.string_list*, %struct.string_list** %12, align 8
  %103 = getelementptr inbounds %struct.string_list, %struct.string_list* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %100, %97
  %107 = load %struct.string_list*, %struct.string_list** %12, align 8
  %108 = getelementptr inbounds %struct.string_list, %struct.string_list* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @partial_crc32(i8* %109, i64 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @partial_crc32_one(i8 signext 32, i64 %112)
  store i64 %113, i64* %5, align 8
  br label %123

114:                                              ; preds = %85
  %115 = load i8*, i8** @expansion_trail, align 8
  %116 = load %struct.symbol*, %struct.symbol** %13, align 8
  %117 = getelementptr inbounds %struct.symbol, %struct.symbol* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.symbol*, %struct.symbol** %13, align 8
  %119 = bitcast %struct.symbol* %118 to i8*
  store i8* %119, i8** @expansion_trail, align 8
  %120 = load %struct.symbol*, %struct.symbol** %13, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @expand_and_crc_sym(%struct.symbol* %120, i64 %121)
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %114, %106
  br label %225

124:                                              ; preds = %61, %61, %61
  %125 = load %struct.string_list*, %struct.string_list** %12, align 8
  %126 = getelementptr inbounds %struct.string_list, %struct.string_list* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.string_list*, %struct.string_list** %12, align 8
  %129 = getelementptr inbounds %struct.string_list, %struct.string_list* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.symbol* @find_symbol(i8* %127, i32 %130, i32 0)
  store %struct.symbol* %131, %struct.symbol** %13, align 8
  %132 = load %struct.symbol*, %struct.symbol** %13, align 8
  %133 = icmp ne %struct.symbol* %132, null
  br i1 %133, label %173, label %134

134:                                              ; preds = %124
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %136 = load %struct.string_list*, %struct.string_list** %12, align 8
  %137 = getelementptr inbounds %struct.string_list, %struct.string_list* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.string_list*, %struct.string_list** %12, align 8
  %144 = getelementptr inbounds %struct.string_list, %struct.string_list* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @error_with_pos(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %142, i8* %145)
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %148 = load %struct.string_list*, %struct.string_list** %12, align 8
  %149 = getelementptr inbounds %struct.string_list, %struct.string_list* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @mk_node(i8* %154)
  %156 = load %struct.string_list*, %struct.string_list** %12, align 8
  %157 = getelementptr inbounds %struct.string_list, %struct.string_list* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @mk_node(i8* %158)
  %160 = call i32 @mk_node(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %161 = call i32 @mk_node(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %162 = call i32 @mk_node(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %163 = call %struct.string_list* @concat_list(i32 %155, i32 %159, i32 %160, i32 %161, i32 %162, i32* null)
  store %struct.string_list* %163, %struct.string_list** %14, align 8
  %164 = load %struct.string_list*, %struct.string_list** %12, align 8
  %165 = getelementptr inbounds %struct.string_list, %struct.string_list* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.string_list*, %struct.string_list** %12, align 8
  %168 = getelementptr inbounds %struct.string_list, %struct.string_list* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.string_list*, %struct.string_list** %14, align 8
  %172 = call %struct.symbol* @add_symbol(i8* %166, i64 %170, %struct.string_list* %171, i32 0)
  store %struct.symbol* %172, %struct.symbol** %13, align 8
  br label %173

173:                                              ; preds = %134, %124
  %174 = load %struct.symbol*, %struct.symbol** %13, align 8
  %175 = getelementptr inbounds %struct.symbol, %struct.symbol* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %215

178:                                              ; preds = %173
  %179 = load i32, i32* @flag_dump_defs, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = load i32, i32* @debugfile, align 4
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %184 = load %struct.string_list*, %struct.string_list** %12, align 8
  %185 = getelementptr inbounds %struct.string_list, %struct.string_list* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.string_list*, %struct.string_list** %12, align 8
  %192 = getelementptr inbounds %struct.string_list, %struct.string_list* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %190, i8* %193)
  br label %195

195:                                              ; preds = %181, %178
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %197 = load %struct.string_list*, %struct.string_list** %12, align 8
  %198 = getelementptr inbounds %struct.string_list, %struct.string_list* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i64, i64* %5, align 8
  %205 = call i64 @partial_crc32(i8* %203, i64 %204)
  store i64 %205, i64* %5, align 8
  %206 = load i64, i64* %5, align 8
  %207 = call i64 @partial_crc32_one(i8 signext 32, i64 %206)
  store i64 %207, i64* %5, align 8
  %208 = load %struct.string_list*, %struct.string_list** %12, align 8
  %209 = getelementptr inbounds %struct.string_list, %struct.string_list* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load i64, i64* %5, align 8
  %212 = call i64 @partial_crc32(i8* %210, i64 %211)
  store i64 %212, i64* %5, align 8
  %213 = load i64, i64* %5, align 8
  %214 = call i64 @partial_crc32_one(i8 signext 32, i64 %213)
  store i64 %214, i64* %5, align 8
  br label %224

215:                                              ; preds = %173
  %216 = load i8*, i8** @expansion_trail, align 8
  %217 = load %struct.symbol*, %struct.symbol** %13, align 8
  %218 = getelementptr inbounds %struct.symbol, %struct.symbol* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = load %struct.symbol*, %struct.symbol** %13, align 8
  %220 = bitcast %struct.symbol* %219 to i8*
  store i8* %220, i8** @expansion_trail, align 8
  %221 = load %struct.symbol*, %struct.symbol** %13, align 8
  %222 = load i64, i64* %5, align 8
  %223 = call i64 @expand_and_crc_sym(%struct.symbol* %221, i64 %222)
  store i64 %223, i64* %5, align 8
  br label %224

224:                                              ; preds = %215, %195
  br label %225

225:                                              ; preds = %61, %224, %123, %77
  br label %57

226:                                              ; preds = %57
  %227 = load %struct.symbol*, %struct.symbol** %4, align 8
  %228 = getelementptr inbounds %struct.symbol, %struct.symbol* %227, i32 0, i32 0
  %229 = load %struct.symbol*, %struct.symbol** %228, align 8
  %230 = icmp ne %struct.symbol* %229, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %226
  %232 = load %struct.symbol*, %struct.symbol** %4, align 8
  %233 = load %struct.symbol**, %struct.symbol*** @expand_and_crc_sym.end, align 8
  store %struct.symbol* %232, %struct.symbol** %233, align 8
  %234 = load %struct.symbol*, %struct.symbol** %4, align 8
  %235 = getelementptr inbounds %struct.symbol, %struct.symbol* %234, i32 0, i32 0
  store %struct.symbol** %235, %struct.symbol*** @expand_and_crc_sym.end, align 8
  %236 = load %struct.symbol*, %struct.symbol** %4, align 8
  %237 = getelementptr inbounds %struct.symbol, %struct.symbol* %236, i32 0, i32 0
  store %struct.symbol* inttoptr (i64 -1 to %struct.symbol*), %struct.symbol** %237, align 8
  br label %238

238:                                              ; preds = %231, %226
  %239 = load i64, i64* %5, align 8
  store i64 %239, i64* %3, align 8
  br label %240

240:                                              ; preds = %238, %20
  %241 = load i64, i64* %3, align 8
  ret i64 %241
}

declare dso_local %struct.string_list** @alloca(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @partial_crc32(i8*, i64) #1

declare dso_local i64 @partial_crc32_one(i8 signext, i64) #1

declare dso_local %struct.symbol* @find_symbol(i8*, i32, i32) #1

declare dso_local i32 @error_with_pos(i8*, i8*, i8*) #1

declare dso_local %struct.string_list* @concat_list(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mk_node(i8*) #1

declare dso_local %struct.symbol* @add_symbol(i8*, i64, %struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
