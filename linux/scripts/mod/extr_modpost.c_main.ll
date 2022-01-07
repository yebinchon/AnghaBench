; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i64, %struct.module* }
%struct.symbol = type { i32, %struct.TYPE_2__*, i32, i64, %struct.symbol* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer = type { %struct.ext_sym_list*, i64 }
%struct.ext_sym_list = type { i8*, %struct.ext_sym_list* }

@.str = private unnamed_addr constant [18 x i8] c"i:I:e:mnsT:o:awEd\00", align 1
@optarg = common dso_local global i8* null, align 8
@external_module = common dso_local global i32 0, align 4
@modversions = common dso_local global i32 0, align 4
@ignore_missing_files = common dso_local global i32 0, align 4
@all_versions = common dso_local global i32 0, align 4
@vmlinux_section_warnings = common dso_local global i32 0, align 4
@warn_unresolved = common dso_local global i32 0, align 4
@sec_mismatch_fatal = common dso_local global i32 0, align 4
@write_namespace_deps = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@modules = common dso_local global %struct.module* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.mod.c\00", align 1
@sec_mismatch_count = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"modpost: Section mismatches detected.\0ASet CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.\0A\00", align 1
@SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@symbolhash = common dso_local global %struct.symbol** null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s] is a static %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.buffer, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext_sym_list*, align 8
  %16 = alloca %struct.ext_sym_list*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.symbol*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = bitcast %struct.buffer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.ext_sym_list* null, %struct.ext_sym_list** %16, align 8
  br label %22

22:                                               ; preds = %56, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %54 [
    i32 105, label %29
    i32 73, label %31
    i32 101, label %33
    i32 109, label %43
    i32 110, label %44
    i32 111, label %45
    i32 97, label %47
    i32 115, label %48
    i32 84, label %49
    i32 119, label %51
    i32 69, label %52
    i32 100, label %53
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %8, align 8
  br label %56

31:                                               ; preds = %27
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %9, align 8
  store i32 1, i32* @external_module, align 4
  br label %56

33:                                               ; preds = %27
  store i32 1, i32* @external_module, align 4
  %34 = call i32 @malloc(i32 16)
  %35 = call %struct.ext_sym_list* @NOFAIL(i32 %34)
  store %struct.ext_sym_list* %35, %struct.ext_sym_list** %15, align 8
  %36 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %37 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  %38 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %37, i32 0, i32 1
  store %struct.ext_sym_list* %36, %struct.ext_sym_list** %38, align 8
  %39 = load i8*, i8** @optarg, align 8
  %40 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  %41 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  store %struct.ext_sym_list* %42, %struct.ext_sym_list** %16, align 8
  br label %56

43:                                               ; preds = %27
  store i32 1, i32* @modversions, align 4
  br label %56

44:                                               ; preds = %27
  store i32 1, i32* @ignore_missing_files, align 4
  br label %56

45:                                               ; preds = %27
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %10, align 8
  br label %56

47:                                               ; preds = %27
  store i32 1, i32* @all_versions, align 4
  br label %56

48:                                               ; preds = %27
  store i32 0, i32* @vmlinux_section_warnings, align 4
  br label %56

49:                                               ; preds = %27
  %50 = load i8*, i8** @optarg, align 8
  store i8* %50, i8** %11, align 8
  br label %56

51:                                               ; preds = %27
  store i32 1, i32* @warn_unresolved, align 4
  br label %56

52:                                               ; preds = %27
  store i32 1, i32* @sec_mismatch_fatal, align 4
  br label %56

53:                                               ; preds = %27
  store i32 1, i32* @write_namespace_deps, align 4
  br label %56

54:                                               ; preds = %27
  %55 = call i32 @exit(i32 1) #5
  unreachable

56:                                               ; preds = %53, %52, %51, %49, %48, %47, %45, %44, %43, %33, %31, %29
  br label %22

57:                                               ; preds = %22
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @read_dump(i8* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @read_dump(i8* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %73, %69
  %71 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %72 = icmp ne %struct.ext_sym_list* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %75 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @read_dump(i8* %76, i32 0)
  %78 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %79 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %78, i32 0, i32 1
  %80 = load %struct.ext_sym_list*, %struct.ext_sym_list** %79, align 8
  store %struct.ext_sym_list* %80, %struct.ext_sym_list** %15, align 8
  %81 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %82 = call i32 @free(%struct.ext_sym_list* %81)
  %83 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  store %struct.ext_sym_list* %83, %struct.ext_sym_list** %16, align 8
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* @optind, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* @optind, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @optind, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @read_symbols(i8* %95)
  br label %85

97:                                               ; preds = %85
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @read_symbols_from_files(i8* %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %13, align 4
  %104 = load %struct.module*, %struct.module** @modules, align 8
  store %struct.module* %104, %struct.module** %6, align 8
  br label %105

105:                                              ; preds = %163, %103
  %106 = load %struct.module*, %struct.module** %6, align 8
  %107 = icmp ne %struct.module* %106, null
  br i1 %107, label %108, label %167

108:                                              ; preds = %105
  %109 = load i32, i32* @PATH_MAX, align 4
  %110 = zext i32 %109 to i64
  %111 = call i8* @llvm.stacksave()
  store i8* %111, i8** %17, align 8
  %112 = alloca i8, i64 %110, align 16
  store i64 %110, i64* %18, align 8
  %113 = load %struct.module*, %struct.module** %6, align 8
  %114 = getelementptr inbounds %struct.module, %struct.module* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 11, i32* %19, align 4
  br label %159

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.module*, %struct.module** %6, align 8
  %121 = call i32 @check_modname_len(%struct.module* %120)
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load %struct.module*, %struct.module** %6, align 8
  %125 = call i32 @check_exports(%struct.module* %124)
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* @write_namespace_deps, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  store i32 11, i32* %19, align 4
  br label %159

131:                                              ; preds = %118
  %132 = load %struct.module*, %struct.module** %6, align 8
  %133 = call i32 @add_header(%struct.buffer* %7, %struct.module* %132)
  %134 = load i32, i32* @external_module, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @add_intree_flag(%struct.buffer* %7, i32 %137)
  %139 = call i32 @add_retpoline(%struct.buffer* %7)
  %140 = load %struct.module*, %struct.module** %6, align 8
  %141 = getelementptr inbounds %struct.module, %struct.module* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @add_staging_flag(%struct.buffer* %7, i8* %142)
  %144 = load %struct.module*, %struct.module** %6, align 8
  %145 = call i32 @add_versions(%struct.buffer* %7, %struct.module* %144)
  %146 = load i32, i32* %13, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %13, align 4
  %148 = load %struct.module*, %struct.module** %6, align 8
  %149 = call i32 @add_depends(%struct.buffer* %7, %struct.module* %148)
  %150 = load %struct.module*, %struct.module** %6, align 8
  %151 = call i32 @add_moddevtable(%struct.buffer* %7, %struct.module* %150)
  %152 = load %struct.module*, %struct.module** %6, align 8
  %153 = call i32 @add_srcversion(%struct.buffer* %7, %struct.module* %152)
  %154 = load %struct.module*, %struct.module** %6, align 8
  %155 = getelementptr inbounds %struct.module, %struct.module* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %156)
  %158 = call i32 @write_if_changed(%struct.buffer* %7, i8* %112)
  store i32 0, i32* %19, align 4
  br label %159

159:                                              ; preds = %131, %130, %117
  %160 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %19, align 4
  switch i32 %161, label %251 [
    i32 0, label %162
    i32 11, label %163
  ]

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %159
  %164 = load %struct.module*, %struct.module** %6, align 8
  %165 = getelementptr inbounds %struct.module, %struct.module* %164, i32 0, i32 2
  %166 = load %struct.module*, %struct.module** %165, align 8
  store %struct.module* %166, %struct.module** %6, align 8
  br label %105

167:                                              ; preds = %105
  %168 = load i32, i32* @write_namespace_deps, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 (...) @write_namespace_deps_files()
  store i32 0, i32* %3, align 4
  br label %249

172:                                              ; preds = %167
  %173 = load i8*, i8** %10, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @write_dump(i8* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i64, i64* @sec_mismatch_count, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* @sec_mismatch_fatal, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @fatal(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %181, %178
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %241, %186
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @SYMBOL_HASH_SIZE, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %244

191:                                              ; preds = %187
  %192 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.symbol*, %struct.symbol** %192, i64 %194
  %196 = load %struct.symbol*, %struct.symbol** %195, align 8
  store %struct.symbol* %196, %struct.symbol** %20, align 8
  br label %197

197:                                              ; preds = %236, %191
  %198 = load %struct.symbol*, %struct.symbol** %20, align 8
  %199 = icmp ne %struct.symbol* %198, null
  br i1 %199, label %200, label %240

200:                                              ; preds = %197
  %201 = load %struct.symbol*, %struct.symbol** %20, align 8
  %202 = getelementptr inbounds %struct.symbol, %struct.symbol* %201, i32 0, i32 1
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @is_vmlinux(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %200
  %209 = load %struct.symbol*, %struct.symbol** %20, align 8
  %210 = getelementptr inbounds %struct.symbol, %struct.symbol* %209, i32 0, i32 1
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %208
  br label %236

216:                                              ; preds = %208, %200
  %217 = load %struct.symbol*, %struct.symbol** %20, align 8
  %218 = getelementptr inbounds %struct.symbol, %struct.symbol* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %235

221:                                              ; preds = %216
  %222 = load %struct.symbol*, %struct.symbol** %20, align 8
  %223 = getelementptr inbounds %struct.symbol, %struct.symbol* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.symbol*, %struct.symbol** %20, align 8
  %226 = getelementptr inbounds %struct.symbol, %struct.symbol* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.symbol*, %struct.symbol** %20, align 8
  %231 = getelementptr inbounds %struct.symbol, %struct.symbol* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @export_str(i32 %232)
  %234 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %224, i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %221, %216
  br label %236

236:                                              ; preds = %235, %215
  %237 = load %struct.symbol*, %struct.symbol** %20, align 8
  %238 = getelementptr inbounds %struct.symbol, %struct.symbol* %237, i32 0, i32 4
  %239 = load %struct.symbol*, %struct.symbol** %238, align 8
  store %struct.symbol* %239, %struct.symbol** %20, align 8
  br label %197

240:                                              ; preds = %197
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %187

244:                                              ; preds = %187
  %245 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %246 = load %struct.ext_sym_list*, %struct.ext_sym_list** %245, align 8
  %247 = call i32 @free(%struct.ext_sym_list* %246)
  %248 = load i32, i32* %13, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %244, %170
  %250 = load i32, i32* %3, align 4
  ret i32 %250

251:                                              ; preds = %159
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local %struct.ext_sym_list* @NOFAIL(i32) #2

declare dso_local i32 @malloc(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @read_dump(i8*, i32) #2

declare dso_local i32 @free(%struct.ext_sym_list*) #2

declare dso_local i32 @read_symbols(i8*) #2

declare dso_local i32 @read_symbols_from_files(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i32 @check_modname_len(%struct.module*) #2

declare dso_local i32 @check_exports(%struct.module*) #2

declare dso_local i32 @add_header(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_intree_flag(%struct.buffer*, i32) #2

declare dso_local i32 @add_retpoline(%struct.buffer*) #2

declare dso_local i32 @add_staging_flag(%struct.buffer*, i8*) #2

declare dso_local i32 @add_versions(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_depends(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_moddevtable(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_srcversion(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @write_if_changed(%struct.buffer*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

declare dso_local i32 @write_namespace_deps_files(...) #2

declare dso_local i32 @write_dump(i8*) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i64 @is_vmlinux(i32) #2

declare dso_local i32 @warn(i8*, i32, i32, i32) #2

declare dso_local i32 @export_str(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
