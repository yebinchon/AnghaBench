; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_corrections_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_corrections_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@norm_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%X;%[^;];%[^;];%d.%d.%d #\00", align 1
@buf0 = common dso_local global i8* null, align 8
@buf1 = common dso_local global i8* null, align 8
@corrections = common dso_local global %struct.TYPE_4__* null, align 8
@corrections_count = common dso_local global i32 0, align 4
@unicode_data = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c" %X -> %s -> %s V%d_%d_%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Found %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @corrections_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corrections_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [19 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @verbose, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** @norm_name, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i8*, i8** @norm_name, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** @norm_name, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @open_fail(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %56, %41, %27
  %29 = load i32, i32* @line, align 4
  %30 = load i32, i32* @LINESIZE, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @fgets(i32 %29, i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* @line, align 4
  %36 = load i8*, i8** @buf0, align 8
  %37 = load i8*, i8** @buf1, align 8
  %38 = call i32 @sscanf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %2, i8* %36, i8* %37, i32* %3, i32* %4, i32* %5)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %28

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @utf32valid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @age_valid(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46, %42
  %53 = load i8*, i8** @norm_name, align 8
  %54 = load i32, i32* @line, align 4
  %55 = call i32 @line_fail(i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load i32, i32* %11, align 4
  %61 = call %struct.TYPE_4__* @calloc(i32 %60, i32 4)
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** @corrections, align 8
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* @corrections_count, align 4
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @rewind(i32* %63)
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %181, %78, %59
  %66 = load i32, i32* @line, align 4
  %67 = load i32, i32* @LINESIZE, align 4
  %68 = load i32*, i32** %1, align 8
  %69 = call i64 @fgets(i32 %66, i32 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %184

71:                                               ; preds = %65
  %72 = load i32, i32* @line, align 4
  %73 = load i8*, i8** @buf0, align 8
  %74 = load i8*, i8** @buf1, align 8
  %75 = call i32 @sscanf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %2, i8* %73, i8* %74, i32* %3, i32* %4, i32* %5)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 6
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %65

79:                                               ; preds = %71
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @utf32valid(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @age_valid(i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83, %79
  %90 = load i8*, i8** @norm_name, align 8
  %91 = load i32, i32* @line, align 4
  %92 = call i32 @line_fail(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @corrections, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unicode_data, align 8
  %99 = load i32, i32* %2, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = bitcast %struct.TYPE_4__* %97 to i8*
  %103 = bitcast %struct.TYPE_4__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @corrections, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %2, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @UNICODE_AGE(i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @corrections, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %118, i32* %123, align 4
  store i32 0, i32* %10, align 4
  %124 = load i8*, i8** @buf0, align 8
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %145, %93
  %126 = load i8*, i8** %9, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @strtoul(i8* %130, i8** %9, i32 16)
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [19 x i32], [19 x i32]* %8, i64 0, i64 %133
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [19 x i32], [19 x i32]* %8, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @utf32valid(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %129
  %142 = load i8*, i8** @norm_name, align 8
  %143 = load i32, i32* @line, align 4
  %144 = call i32 @line_fail(i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %129
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %125

148:                                              ; preds = %125
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [19 x i32], [19 x i32]* %8, i64 0, i64 %151
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i32* @malloc(i32 %156)
  store i32* %157, i32** %7, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds [19 x i32], [19 x i32]* %8, i64 0, i64 0
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memcpy(i32* %158, i32* %159, i32 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @corrections, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i32* %165, i32** %170, align 8
  %171 = load i32, i32* @verbose, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %181

173:                                              ; preds = %148
  %174 = load i32, i32* %2, align 4
  %175 = load i8*, i8** @buf0, align 8
  %176 = load i8*, i8** @buf1, align 8
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %174, i8* %175, i8* %176, i32 %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %173, %148
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %65

184:                                              ; preds = %65
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @fclose(i32* %185)
  %187 = load i32, i32* @verbose, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i8*, i8** @norm_name, align 8
  %197 = call i32 @file_fail(i8* %196)
  br label %198

198:                                              ; preds = %195, %192
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @utf32valid(i32) #1

declare dso_local i32 @age_valid(i32, i32, i32) #1

declare dso_local i32 @line_fail(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @rewind(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNICODE_AGE(i32, i32, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @file_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
