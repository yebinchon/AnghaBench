; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_parse_elem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_parse_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"did not find %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"duplicate key\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unnecessary key\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"duplicate value\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"unnecessary value\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"value smaller than 4B for map in map?\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"not enough value arguments for map in map\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"value smaller than 4B for map of progs?\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"not enough value arguments for map of progs\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.12 = private unnamed_addr constant [141 x i8] c"Warning: updating program array via MAP_ID, make sure this map is kept open\0A         by some process or pinned otherwise update will be lost\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"noexist\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"exist\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"flags specified multiple times: %s\00", align 1
@BPF_ANY = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@BPF_EXIST = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"expected key or value, got: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.bpf_map_info*, i8*, i8*, i32, i32, i32*, i32**)* @parse_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_elem(i8** %0, %struct.bpf_map_info* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.bpf_map_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store %struct.bpf_map_info* %1, %struct.bpf_map_info** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32** %7, i32*** %17, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %251

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %9, align 4
  br label %251

37:                                               ; preds = %8
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @is_prefix(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %48
  store i32 -1, i32* %9, align 4
  br label %251

53:                                               ; preds = %42
  %54 = load i8**, i8*** %10, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i8** @parse_bytes(i8** %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %57)
  store i8** %58, i8*** %10, align 8
  %59 = load i8**, i8*** %10, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 -1, i32* %9, align 4
  br label %251

62:                                               ; preds = %53
  %63 = load i8**, i8*** %10, align 8
  %64 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32**, i32*** %17, align 8
  %70 = call i32 @parse_elem(i8** %63, %struct.bpf_map_info* %64, i8* null, i8* %65, i32 %66, i32 %67, i32* %68, i32** %69)
  store i32 %70, i32* %9, align 4
  br label %251

71:                                               ; preds = %37
  %72 = load i8**, i8*** %10, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @is_prefix(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %187

76:                                               ; preds = %71
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %86

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  store i32 -1, i32* %9, align 4
  br label %251

87:                                               ; preds = %76
  %88 = load i8**, i8*** %10, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %10, align 8
  %90 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %91 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @map_is_map_of_maps(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %87
  store i32 2, i32* %19, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %251

100:                                              ; preds = %95
  %101 = load i8**, i8*** %10, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8**, i8*** %10, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %105, %100
  %111 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %251

112:                                              ; preds = %105
  %113 = call i32 @map_parse_fd(i32* %19, i8*** %10)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -1, i32* %9, align 4
  br label %251

117:                                              ; preds = %112
  %118 = load i8*, i8** %13, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load i32**, i32*** %17, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32**, i32*** %17, align 8
  %123 = load i32*, i32** %122, align 8
  store i32 %121, i32* %123, align 4
  br label %179

124:                                              ; preds = %87
  %125 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %126 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @map_is_map_of_progs(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %166

130:                                              ; preds = %124
  store i32 2, i32* %20, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 4
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %251

135:                                              ; preds = %130
  %136 = load i8**, i8*** %10, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i8**, i8*** %10, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %140, %135
  %146 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %251

147:                                              ; preds = %140
  %148 = load i8**, i8*** %10, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @is_prefix(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 @p_info(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.12, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %147
  %155 = call i32 @prog_parse_fd(i32* %20, i8*** %10)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 -1, i32* %9, align 4
  br label %251

159:                                              ; preds = %154
  %160 = load i8*, i8** %13, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32**, i32*** %17, align 8
  store i32* %161, i32** %162, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32**, i32*** %17, align 8
  %165 = load i32*, i32** %164, align 8
  store i32 %163, i32* %165, align 4
  br label %178

166:                                              ; preds = %124
  %167 = load i8**, i8*** %10, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i8** @parse_bytes(i8** %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %168, i32 %169)
  store i8** %170, i8*** %10, align 8
  %171 = load i8**, i8*** %10, align 8
  %172 = icmp ne i8** %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  store i32 -1, i32* %9, align 4
  br label %251

174:                                              ; preds = %166
  %175 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @fill_per_cpu_value(%struct.bpf_map_info* %175, i8* %176)
  br label %178

178:                                              ; preds = %174, %159
  br label %179

179:                                              ; preds = %178, %117
  %180 = load i8**, i8*** %10, align 8
  %181 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32*, i32** %16, align 8
  %186 = call i32 @parse_elem(i8** %180, %struct.bpf_map_info* %181, i8* %182, i8* null, i32 %183, i32 %184, i32* %185, i32** null)
  store i32 %186, i32* %9, align 4
  br label %251

187:                                              ; preds = %71
  %188 = load i8**, i8*** %10, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @is_prefix(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %187
  %193 = load i8**, i8*** %10, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @is_prefix(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load i8**, i8*** %10, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @is_prefix(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %197, %192, %187
  %203 = load i32*, i32** %16, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %202
  %206 = load i8**, i8*** %10, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* %207)
  store i32 -1, i32* %9, align 4
  br label %251

209:                                              ; preds = %202
  %210 = load i8**, i8*** %10, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @is_prefix(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @BPF_ANY, align 4
  %216 = load i32*, i32** %16, align 8
  store i32 %215, i32* %216, align 4
  br label %235

217:                                              ; preds = %209
  %218 = load i8**, i8*** %10, align 8
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @is_prefix(i8* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* @BPF_NOEXIST, align 4
  %224 = load i32*, i32** %16, align 8
  store i32 %223, i32* %224, align 4
  br label %234

225:                                              ; preds = %217
  %226 = load i8**, i8*** %10, align 8
  %227 = load i8*, i8** %226, align 8
  %228 = call i64 @is_prefix(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i32, i32* @BPF_EXIST, align 4
  %232 = load i32*, i32** %16, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %225
  br label %234

234:                                              ; preds = %233, %222
  br label %235

235:                                              ; preds = %234, %214
  %236 = load i8**, i8*** %10, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 1
  %238 = load %struct.bpf_map_info*, %struct.bpf_map_info** %11, align 8
  %239 = load i8*, i8** %12, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = load i32**, i32*** %17, align 8
  %244 = call i32 @parse_elem(i8** %237, %struct.bpf_map_info* %238, i8* %239, i8* %240, i32 %241, i32 %242, i32* null, i32** %243)
  store i32 %244, i32* %9, align 4
  br label %251

245:                                              ; preds = %197
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  %248 = load i8**, i8*** %10, align 8
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %249)
  store i32 -1, i32* %9, align 4
  br label %251

251:                                              ; preds = %247, %235, %205, %179, %173, %158, %145, %133, %116, %110, %98, %86, %62, %61, %52, %31, %30
  %252 = load i32, i32* %9, align 4
  ret i32 %252
}

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i8** @parse_bytes(i8**, i8*, i8*, i32) #1

declare dso_local i64 @map_is_map_of_maps(i32) #1

declare dso_local i32 @map_parse_fd(i32*, i8***) #1

declare dso_local i64 @map_is_map_of_progs(i32) #1

declare dso_local i32 @p_info(i8*) #1

declare dso_local i32 @prog_parse_fd(i32*, i8***) #1

declare dso_local i32 @fill_per_cpu_value(%struct.bpf_map_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
