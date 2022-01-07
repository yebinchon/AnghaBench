; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__add_s.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__add_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i64 }

@PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@X_OK = common dso_local global i32 0, align 4
@buildid_dir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to update/scan SDT cache for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_id_cache__add_s(i8* %0, i8* %1, %struct.nsinfo* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nsinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.nsinfo* %2, %struct.nsinfo** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i64, i64* @PATH_MAX, align 8
  store i64 %19, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i8* @zalloc(i64 %20)
  store i8* %21, i8** %15, align 8
  store i8* null, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %30 = call i8* @nsinfo__realpath(i8* %28, %struct.nsinfo* %29)
  store i8* %30, i8** %12, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @realpath(i8* %32, i32* null)
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %236

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @build_id_cache__cachedir(i8* %40, i8* %41, %struct.nsinfo* %42, i32 %43, i32 %44)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %236

49:                                               ; preds = %39
  %50 = load i8*, i8** %14, align 8
  %51 = call i64 @is_regular_file(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %14, align 8
  %55 = call i64 @unlink(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %236

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i8*, i8** %14, align 8
  %61 = call i64 @mkdir_p(i8* %60, i32 493)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %236

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @build_id_cache__basename(i32 %66, i32 %67, i32 0)
  %69 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i8* null, i8** %13, align 8
  br label %236

72:                                               ; preds = %64
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @F_OK, align 4
  %75 = call i64 @access(i8* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8*, i8** %13, align 8
  %82 = call i64 @copyfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %236

85:                                               ; preds = %80
  br label %119

86:                                               ; preds = %77
  %87 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %88 = icmp ne %struct.nsinfo* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %91 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %98 = call i64 @copyfile_ns(i8* %95, i8* %96, %struct.nsinfo* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %236

101:                                              ; preds = %94
  br label %118

102:                                              ; preds = %89, %86
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = call i64 @link(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @EEXIST, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = call i64 @copyfile(i8* %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %236

117:                                              ; preds = %111, %107, %102
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %85
  br label %120

120:                                              ; preds = %119, %72
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %188, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %188, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = getelementptr inbounds i8, i8* %131, i64 -3
  %133 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %132, i32 3)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %188

135:                                              ; preds = %126
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %138 = call i8* @build_id_cache__find_debug(i8* %136, %struct.nsinfo* %137)
  store i8* %138, i8** %17, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %187

141:                                              ; preds = %135
  %142 = call i32 @zfree(i8** %13)
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @build_id_cache__basename(i32 0, i32 0, i32 1)
  %145 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %143, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i8* null, i8** %13, align 8
  br label %236

148:                                              ; preds = %141
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* @F_OK, align 4
  %151 = call i64 @access(i8* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %148
  %154 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %155 = icmp ne %struct.nsinfo* %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %158 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i8*, i8** %17, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %165 = call i64 @copyfile_ns(i8* %162, i8* %163, %struct.nsinfo* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %236

168:                                              ; preds = %161
  br label %185

169:                                              ; preds = %156, %153
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = call i64 @link(i8* %170, i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load i64, i64* @errno, align 8
  %176 = load i64, i64* @EEXIST, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i8*, i8** %17, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = call i64 @copyfile(i8* %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %236

184:                                              ; preds = %178, %174, %169
  br label %185

185:                                              ; preds = %184, %168
  br label %186

186:                                              ; preds = %185, %148
  br label %187

187:                                              ; preds = %186, %135
  br label %188

188:                                              ; preds = %187, %126, %123, %120
  %189 = load i8*, i8** %6, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @build_id_cache__linkname(i8* %189, i8* %190, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  br label %236

195:                                              ; preds = %188
  %196 = load i8*, i8** %15, align 8
  %197 = call i8* @strrchr(i8* %196, i8 signext 47)
  store i8* %197, i8** %16, align 8
  %198 = load i8*, i8** %16, align 8
  store i8 0, i8* %198, align 1
  %199 = load i8*, i8** %15, align 8
  %200 = load i32, i32* @X_OK, align 4
  %201 = call i64 @access(i8* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = load i8*, i8** %15, align 8
  %205 = call i64 @mkdir_p(i8* %204, i32 493)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %236

208:                                              ; preds = %203, %195
  %209 = load i8*, i8** %16, align 8
  store i8 47, i8* %209, align 1
  %210 = load i8*, i8** %14, align 8
  %211 = load i8*, i8** @buildid_dir, align 8
  %212 = call i32 @strlen(i8* %211)
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = getelementptr inbounds i8, i8* %214, i64 -5
  store i8* %215, i8** %16, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i32 @memcpy(i8* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %218 = load i8*, i8** %16, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = call i64 @symlink(i8* %218, i8* %219)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %208
  store i32 0, i32* %18, align 4
  br label %223

223:                                              ; preds = %222, %208
  %224 = load i8*, i8** %12, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i8*, i8** %6, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load %struct.nsinfo*, %struct.nsinfo** %8, align 8
  %230 = call i64 @build_id_cache__add_sdt_cache(i8* %227, i8* %228, %struct.nsinfo* %229)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i8*, i8** %12, align 8
  %234 = call i32 @pr_debug4(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %232, %226, %223
  br label %236

236:                                              ; preds = %235, %207, %194, %183, %167, %147, %116, %100, %84, %71, %63, %57, %48, %37
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i8*, i8** %12, align 8
  %241 = call i32 @free(i8* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load i8*, i8** %17, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load i8*, i8** %14, align 8
  %248 = call i32 @free(i8* %247)
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @free(i8* %249)
  %251 = load i32, i32* %18, align 4
  ret i32 %251
}

declare dso_local i8* @zalloc(i64) #1

declare dso_local i8* @nsinfo__realpath(i8*, %struct.nsinfo*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i8* @build_id_cache__cachedir(i8*, i8*, %struct.nsinfo*, i32, i32) #1

declare dso_local i64 @is_regular_file(i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @mkdir_p(i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @build_id_cache__basename(i32, i32, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @copyfile(i8*, i8*) #1

declare dso_local i64 @copyfile_ns(i8*, i8*, %struct.nsinfo*) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @build_id_cache__find_debug(i8*, %struct.nsinfo*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @build_id_cache__linkname(i8*, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i64 @build_id_cache__add_sdt_cache(i8*, i8*, %struct.nsinfo*) #1

declare dso_local i32 @pr_debug4(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
