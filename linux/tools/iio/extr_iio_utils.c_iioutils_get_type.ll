; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@FORMAT_SCAN_ELEMENTS_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FORMAT_TYPE_FILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%ce:%c%u/%u>>%u\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to pass scan type description\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"scan type description didn't match\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Failed to close %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"iioutils_get_type(): Failed to close file\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"iioutils_get_type(): Failed to close directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iioutils_get_type(i32* %0, i32* %1, i32* %2, i32* %3, i64* %4, i32* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  %30 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* null, i8** %26, align 8
  %31 = load i32, i32* @FORMAT_SCAN_ELEMENTS_DIR, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %17, align 8
  %35 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %23, i8* %33, i8* %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %9
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %220

41:                                               ; preds = %9
  %42 = load i32, i32* @FORMAT_TYPE_FILE, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8*, i8** %18, align 8
  %46 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %24, i8* %44, i8* %45)
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %21, align 4
  br label %216

52:                                               ; preds = %41
  %53 = load i32, i32* @FORMAT_TYPE_FILE, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %19, align 8
  %57 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %25, i8* %55, i8* %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %21, align 4
  br label %213

63:                                               ; preds = %52
  %64 = load i8*, i8** %23, align 8
  %65 = call i32* @opendir(i8* %64)
  store i32* %65, i32** %22, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @errno, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %21, align 4
  br label %210

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %21, align 4
  br label %74

74:                                               ; preds = %183, %71
  %75 = load i32*, i32** %22, align 8
  %76 = call %struct.dirent* @readdir(i32* %75)
  store %struct.dirent* %76, %struct.dirent** %30, align 8
  %77 = load %struct.dirent*, %struct.dirent** %30, align 8
  %78 = icmp ne %struct.dirent* %77, null
  br i1 %78, label %79, label %184

79:                                               ; preds = %74
  %80 = load i8*, i8** %24, align 8
  %81 = load %struct.dirent*, %struct.dirent** %30, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strcmp(i8* %80, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %25, align 8
  %88 = load %struct.dirent*, %struct.dirent** %30, align 8
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i8* %87, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %183

93:                                               ; preds = %86, %79
  %94 = load i8*, i8** %23, align 8
  %95 = load %struct.dirent*, %struct.dirent** %30, align 8
  %96 = getelementptr inbounds %struct.dirent, %struct.dirent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %97)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %21, align 4
  br label %203

104:                                              ; preds = %93
  %105 = load i8*, i8** %26, align 8
  %106 = call i32* @fopen(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %106, i32** %20, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @errno, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** %26, align 8
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  br label %196

115:                                              ; preds = %104
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @fscanf(i32* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %27, i32* %117, i32* %29, i32* %118)
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %21, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* @errno, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %185

127:                                              ; preds = %115
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 5
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %185

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135
  %137 = load i8, i8* %28, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 98
  %140 = zext i1 %139 to i32
  %141 = load i32*, i32** %16, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %29, align 4
  %143 = udiv i32 %142, 8
  %144 = load i32*, i32** %12, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 64
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i64*, i64** %15, align 8
  store i64 -1, i64* %149, align 8
  br label %157

150:                                              ; preds = %136
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  %154 = shl i64 1, %153
  %155 = sub i64 %154, 1
  %156 = load i64*, i64** %15, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %150, %148
  %158 = load i8, i8* %27, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 115
  %161 = zext i1 %160 to i32
  %162 = load i32*, i32** %11, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %20, align 8
  %164 = call i64 @fclose(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = load i32, i32* @errno, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %26, align 8
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  br label %196

172:                                              ; preds = %157
  store i32* null, i32** %20, align 8
  %173 = load i8*, i8** %26, align 8
  %174 = call i32 @free(i8* %173)
  store i8* null, i8** %26, align 8
  %175 = load i8*, i8** %24, align 8
  %176 = load %struct.dirent*, %struct.dirent** %30, align 8
  %177 = getelementptr inbounds %struct.dirent, %struct.dirent* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @strcmp(i8* %175, i32 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %184

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %86
  br label %74

184:                                              ; preds = %181, %74
  br label %185

185:                                              ; preds = %184, %130, %122
  %186 = load i32*, i32** %20, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32*, i32** %20, align 8
  %190 = call i64 @fclose(i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %188
  br label %195

195:                                              ; preds = %194, %185
  br label %196

196:                                              ; preds = %195, %166, %109
  %197 = load i8*, i8** %26, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i8*, i8** %26, align 8
  %201 = call i32 @free(i8* %200)
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202, %101
  %204 = load i32*, i32** %22, align 8
  %205 = call i32 @closedir(i32* %204)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = call i32 @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %203
  br label %210

210:                                              ; preds = %209, %68
  %211 = load i8*, i8** %25, align 8
  %212 = call i32 @free(i8* %211)
  br label %213

213:                                              ; preds = %210, %60
  %214 = load i8*, i8** %24, align 8
  %215 = call i32 @free(i8* %214)
  br label %216

216:                                              ; preds = %213, %49
  %217 = load i8*, i8** %23, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i32, i32* %21, align 4
  store i32 %219, i32* %10, align 4
  br label %220

220:                                              ; preds = %216, %38
  %221 = load i32, i32* %10, align 4
  ret i32 %221
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
