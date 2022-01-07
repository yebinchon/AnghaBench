; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_insert-sys-cert.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32 }
%struct.sym = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"b:c:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid ELF file.\0A\00", align 1
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid ELF magic.\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@CURRENT_ELFCLASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"ELF class mismatch.\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"ELF endian mismatch.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not find section header.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Could not find the symbol table.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Please provide a System.map file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CERT_SYM = common dso_local global i32 0, align 4
@USED_SYM = common dso_local global i32 0, align 4
@LSIZE_SYM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Symbol table found.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"System.map is ignored.\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Certificate is larger than the reserved area!\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Certificate was already inserted.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [44 x i8] c"Replacing previously inserted certificate.\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Inserted the contents of %s into %lx.\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Used %d bytes out of %d bytes reserved.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sym, align 8
  %19 = alloca %struct.sym, align 8
  %20 = alloca %struct.sym, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %17, align 8
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %16, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %16, align 4
  switch i32 %27, label %34 [
    i32 115, label %28
    i32 98, label %30
    i32 99, label %32
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %6, align 8
  br label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %7, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %8, align 8
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32, %30, %28
  br label %21

36:                                               ; preds = %21
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39, %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @print_usage(i8* %45)
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @read_file(i8* %50, i32* %10)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = call %struct.TYPE_7__* @map_file(i8* %58, i32* %9)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %11, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  %64 = call i32 @exit(i32 %63) #3
  unreachable

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 16
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  %72 = call i32 @exit(i32 %71) #3
  unreachable

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @EI_MAG0, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ELFMAG0, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %109, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @EI_MAG1, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ELFMAG1, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %109, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @EI_MAG2, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ELFMAG2, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @EI_MAG3, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ELFMAG3, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100, %91, %82, %73
  %110 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EXIT_FAILURE, align 4
  %112 = call i32 @exit(i32 %111) #3
  unreachable

113:                                              ; preds = %100
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @EI_CLASS, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CURRENT_ELFCLASS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @EXIT_FAILURE, align 4
  %125 = call i32 @exit(i32 %124) #3
  unreachable

126:                                              ; preds = %113
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @EI_DATA, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i64 (...) @endianness()
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @exit(i32 %137) #3
  unreachable

139:                                              ; preds = %126
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %147 = load i32, i32* @EXIT_FAILURE, align 4
  %148 = call i32 @exit(i32 %147) #3
  unreachable

149:                                              ; preds = %139
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %151 = call i32* @get_symbol_table(%struct.TYPE_7__* %150)
  store i32* %151, i32** %17, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %195, label %154

154:                                              ; preds = %149
  %155 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i8*, i8** %6, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @print_usage(i8* %162)
  %164 = load i32, i32* @EXIT_FAILURE, align 4
  %165 = call i32 @exit(i32 %164) #3
  unreachable

166:                                              ; preds = %154
  %167 = load i8*, i8** %6, align 8
  %168 = call i32* @fopen(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %168, i32** %13, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @perror(i8* %172)
  %174 = load i32, i32* @EXIT_FAILURE, align 4
  %175 = call i32 @exit(i32 %174) #3
  unreachable

176:                                              ; preds = %166
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %178 = load i32*, i32** %13, align 8
  %179 = load i32, i32* @CERT_SYM, align 4
  %180 = call i32 @get_symbol_from_map(%struct.TYPE_7__* %177, i32* %178, i32 %179, %struct.sym* %18)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* @USED_SYM, align 4
  %184 = call i32 @get_symbol_from_map(%struct.TYPE_7__* %181, i32* %182, i32 %183, %struct.sym* %20)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* @LSIZE_SYM, align 4
  %188 = call i32 @get_symbol_from_map(%struct.TYPE_7__* %185, i32* %186, i32 %187, %struct.sym* %19)
  %189 = getelementptr inbounds %struct.sym, %struct.sym* %20, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %190, %192
  %194 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  br label %214

195:                                              ; preds = %149
  %196 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %197 = load i8*, i8** %6, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %195
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = load i32, i32* @CERT_SYM, align 4
  %205 = call i32 @get_symbol_from_table(%struct.TYPE_7__* %202, i32* %203, i32 %204, %struct.sym* %18)
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* @USED_SYM, align 4
  %209 = call i32 @get_symbol_from_table(%struct.TYPE_7__* %206, i32* %207, i32 %208, %struct.sym* %20)
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load i32, i32* @LSIZE_SYM, align 4
  %213 = call i32 @get_symbol_from_table(%struct.TYPE_7__* %210, i32* %211, i32 %212, %struct.sym* %19)
  br label %214

214:                                              ; preds = %201, %176
  %215 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.sym, %struct.sym* %19, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.sym, %struct.sym* %20, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %222, %218, %214
  %227 = load i32, i32* @EXIT_FAILURE, align 4
  %228 = call i32 @exit(i32 %227) #3
  unreachable

229:                                              ; preds = %222
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %231 = call i32 @print_sym(%struct.TYPE_7__* %230, %struct.sym* %18)
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %233 = call i32 @print_sym(%struct.TYPE_7__* %232, %struct.sym* %20)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %235 = call i32 @print_sym(%struct.TYPE_7__* %234, %struct.sym* %19)
  %236 = getelementptr inbounds %struct.sym, %struct.sym* %19, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = inttoptr i64 %237 to i64*
  store i64* %238, i64** %14, align 8
  %239 = getelementptr inbounds %struct.sym, %struct.sym* %20, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to i32*
  store i32* %241, i32** %15, align 8
  %242 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %229
  %247 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %248 = load i32, i32* @EXIT_FAILURE, align 4
  %249 = call i32 @exit(i32 %248) #3
  unreachable

250:                                              ; preds = %229
  %251 = load i32, i32* %10, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %251, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i64 @strncmp(i64 %257, i8* %258, i32 %259)
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %264 = load i32, i32* @EXIT_SUCCESS, align 4
  %265 = call i32 @exit(i32 %264) #3
  unreachable

266:                                              ; preds = %255, %250
  %267 = load i32*, i32** %15, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = call i32 @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %266
  %273 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i8*, i8** %12, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @memcpy(i64 %274, i8* %275, i32 %276)
  %278 = load i32, i32* %10, align 4
  %279 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %278, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %272
  %283 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %284, %286
  %288 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sub nsw i32 %289, %290
  %292 = call i32 @memset(i64 %287, i32 0, i32 %291)
  br label %293

293:                                              ; preds = %282, %272
  %294 = load i64*, i64** %14, align 8
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = add i64 %295, %297
  %299 = load i32*, i32** %15, align 8
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = sub i64 %298, %301
  %303 = load i64*, i64** %14, align 8
  store i64 %302, i64* %303, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load i32*, i32** %15, align 8
  store i32 %304, i32* %305, align 4
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %306, i32 %308)
  %310 = load i32*, i32** %15, align 8
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.sym, %struct.sym* %18, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %311, i32 %313)
  %315 = load i32, i32* @EXIT_SUCCESS, align 4
  %316 = call i32 @exit(i32 %315) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @print_usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @read_file(i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @map_file(i8*, i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @endianness(...) #1

declare dso_local i32* @get_symbol_table(%struct.TYPE_7__*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @get_symbol_from_map(%struct.TYPE_7__*, i32*, i32, %struct.sym*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @get_symbol_from_table(%struct.TYPE_7__*, i32*, i32, %struct.sym*) #1

declare dso_local i32 @print_sym(%struct.TYPE_7__*, %struct.sym*) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
