; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__parse_elf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__parse_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type opaque
%struct.btf_ext = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to init libelf for %s\0A\00", align 1
@LIBBPF_ERRNO__LIBELF = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to open %s: %s\0A\00", align 1
@LIBBPF_ERRNO__FORMAT = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to open %s as ELF file\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get EHDR from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"non-native ELF endianness is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to get e_shstrndx from %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to get section(%d) header from %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to get section(%d) name from %s\0A\00", align 1
@BTF_ELF_SEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to get section(%d, %s) data from %s\0A\00", align 1
@BTF_EXT_ELF_SEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btf* @btf__parse_elf(i8* %0, %struct.btf_ext** %1) #0 {
  %3 = alloca %struct.btf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btf_ext**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.btf_ext** %1, %struct.btf_ext*** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.btf* null, %struct.btf** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32, i32* @EV_CURRENT, align 4
  %18 = call i64 @elf_version(i32 %17)
  %19 = load i64, i64* @EV_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @LIBBPF_ERRNO__LIBELF, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.btf_ext* @ERR_PTR(i32 %25)
  %27 = bitcast %struct.btf_ext* %26 to %struct.btf*
  store %struct.btf* %27, %struct.btf** %3, align 8
  br label %233

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i8* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.btf_ext* @ERR_PTR(i32 %41)
  %43 = bitcast %struct.btf_ext* %42 to %struct.btf*
  store %struct.btf* %43, %struct.btf** %3, align 8
  br label %233

44:                                               ; preds = %28
  %45 = load i32, i32* @LIBBPF_ERRNO__FORMAT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ELF_C_READ, align 4
  %49 = call i32* @elf_begin(i32 %47, i32 %48, i32* null)
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %191

55:                                               ; preds = %44
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @gelf_getehdr(i32* %56, %struct.TYPE_10__* %14)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %191

62:                                               ; preds = %55
  %63 = call i32 @btf_check_endianness(%struct.TYPE_10__* %14)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %191

67:                                               ; preds = %62
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @elf_getscn(i32* %68, i32 %70)
  %72 = call i32 @elf_rawdata(i32 %71, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %191

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %142, %140, %121, %77
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32* @elf_nextscn(i32* %79, i32* %80)
  store i32* %81, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %143

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = call %struct.TYPE_9__* @gelf_getshdr(i32* %86, %struct.TYPE_9__* %15)
  %88 = icmp ne %struct.TYPE_9__* %87, %15
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %90, i8* %91)
  br label %191

93:                                               ; preds = %83
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @elf_strptr(i32* %94, i32 %96, i32 %98)
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %103, i8* %104)
  br label %191

106:                                              ; preds = %93
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* @BTF_ELF_SEC, align 4
  %109 = call i64 @strcmp(i8* %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load i32*, i32** %12, align 8
  %113 = call %struct.TYPE_11__* @elf_getdata(i32* %112, i32 0)
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %6, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %117, i8* %118, i8* %119)
  br label %191

121:                                              ; preds = %111
  br label %78

122:                                              ; preds = %106
  %123 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %124 = icmp ne %struct.btf_ext** %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* @BTF_EXT_ELF_SEC, align 4
  %128 = call i64 @strcmp(i8* %126, i32 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load i32*, i32** %12, align 8
  %132 = call %struct.TYPE_11__* @elf_getdata(i32* %131, i32 0)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %7, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = icmp ne %struct.TYPE_11__* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = load i8*, i8** %16, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %136, i8* %137, i8* %138)
  br label %191

140:                                              ; preds = %130
  br label %78

141:                                              ; preds = %125, %122
  br label %142

142:                                              ; preds = %141
  br label %78

143:                                              ; preds = %78
  store i32 0, i32* %8, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = icmp ne %struct.TYPE_11__* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @ENOENT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %191

149:                                              ; preds = %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.btf_ext* @btf__new(i32 %152, i32 %155)
  %157 = bitcast %struct.btf_ext* %156 to %struct.btf*
  store %struct.btf* %157, %struct.btf** %11, align 8
  %158 = load %struct.btf*, %struct.btf** %11, align 8
  %159 = bitcast %struct.btf* %158 to %struct.btf_ext*
  %160 = call i64 @IS_ERR(%struct.btf_ext* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %191

163:                                              ; preds = %149
  %164 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %165 = icmp ne %struct.btf_ext** %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = icmp ne %struct.TYPE_11__* %167, null
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.btf_ext* @btf_ext__new(i32 %172, i32 %175)
  %177 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  store %struct.btf_ext* %176, %struct.btf_ext** %177, align 8
  %178 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %179 = load %struct.btf_ext*, %struct.btf_ext** %178, align 8
  %180 = call i64 @IS_ERR(%struct.btf_ext* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %169
  br label %191

183:                                              ; preds = %169
  br label %190

184:                                              ; preds = %166, %163
  %185 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %186 = icmp ne %struct.btf_ext** %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  store %struct.btf_ext* null, %struct.btf_ext** %188, align 8
  br label %189

189:                                              ; preds = %187, %184
  br label %190

190:                                              ; preds = %189, %183
  br label %191

191:                                              ; preds = %190, %182, %162, %146, %135, %116, %102, %89, %74, %65, %59, %52
  %192 = load i32*, i32** %13, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @elf_end(i32* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @close(i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = call %struct.btf_ext* @ERR_PTR(i32 %203)
  %205 = bitcast %struct.btf_ext* %204 to %struct.btf*
  store %struct.btf* %205, %struct.btf** %3, align 8
  br label %233

206:                                              ; preds = %197
  %207 = load %struct.btf*, %struct.btf** %11, align 8
  %208 = bitcast %struct.btf* %207 to %struct.btf_ext*
  %209 = call i64 @IS_ERR(%struct.btf_ext* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load %struct.btf*, %struct.btf** %11, align 8
  store %struct.btf* %212, %struct.btf** %3, align 8
  br label %233

213:                                              ; preds = %206
  %214 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %215 = icmp ne %struct.btf_ext** %214, null
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %218 = load %struct.btf_ext*, %struct.btf_ext** %217, align 8
  %219 = call i64 @IS_ERR(%struct.btf_ext* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load %struct.btf*, %struct.btf** %11, align 8
  %223 = bitcast %struct.btf* %222 to %struct.btf_ext*
  %224 = call i32 @btf__free(%struct.btf_ext* %223)
  %225 = load %struct.btf_ext**, %struct.btf_ext*** %5, align 8
  %226 = load %struct.btf_ext*, %struct.btf_ext** %225, align 8
  %227 = call i32 @PTR_ERR(%struct.btf_ext* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call %struct.btf_ext* @ERR_PTR(i32 %228)
  %230 = bitcast %struct.btf_ext* %229 to %struct.btf*
  store %struct.btf* %230, %struct.btf** %3, align 8
  br label %233

231:                                              ; preds = %216, %213
  %232 = load %struct.btf*, %struct.btf** %11, align 8
  store %struct.btf* %232, %struct.btf** %3, align 8
  br label %233

233:                                              ; preds = %231, %221, %211, %202, %34, %21
  %234 = load %struct.btf*, %struct.btf** %3, align 8
  ret %struct.btf* %234
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local %struct.btf_ext* @ERR_PTR(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @gelf_getehdr(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @btf_check_endianness(%struct.TYPE_10__*) #1

declare dso_local i32 @elf_rawdata(i32, i32*) #1

declare dso_local i32 @elf_getscn(i32*, i32) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getshdr(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @elf_getdata(i32*, i32) #1

declare dso_local %struct.btf_ext* @btf__new(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btf_ext*) #1

declare dso_local %struct.btf_ext* @btf_ext__new(i32, i32) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @btf__free(%struct.btf_ext*) #1

declare dso_local i32 @PTR_ERR(%struct.btf_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
