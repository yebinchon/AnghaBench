; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_ignore_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_ignore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@prop_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%X..%X ; %s # \00", align 1
@buf0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Default_Ignorable_Code_Point\00", align 1
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c" %X..%X Default_Ignorable_Code_Point\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%X ; %s # \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c" %X Default_Ignorable_Code_Point\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Found %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ignore_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignore_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @verbose, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** @prop_name, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i8*, i8** @prop_name, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** @prop_name, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @open_fail(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @assert(i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %164, %161, %116, %103, %41, %22
  %26 = load i32, i32* @line, align 4
  %27 = load i32, i32* @LINESIZE, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = call i64 @fgets(i32 %26, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %165

31:                                               ; preds = %25
  %32 = load i32, i32* @line, align 4
  %33 = load i32, i32* @buf0, align 4
  %34 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %3, i32* %4, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %104

37:                                               ; preds = %31
  %38 = load i32, i32* @buf0, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %25

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @utf32valid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @utf32valid(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** @prop_name, align 8
  %52 = load i32, i32* @line, align 4
  %53 = call i32 @line_fail(i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %93, %54
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %62 = load i32, i32* %2, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @free(i32* %66)
  %68 = call i32* @malloc(i32 4)
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %72 = load i32, i32* %2, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32* %70, i32** %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %77 = load i32, i32* %2, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @free(i32* %81)
  %83 = call i32* @malloc(i32 4)
  store i32* %83, i32** %5, align 8
  %84 = load i32*, i32** %5, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %87 = load i32, i32* %2, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* %85, i32** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %60
  %94 = load i32, i32* %2, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load i32, i32* @verbose, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %25

104:                                              ; preds = %31
  %105 = load i32, i32* @line, align 4
  %106 = load i32, i32* @buf0, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i32*
  %109 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %2, i32* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %164

112:                                              ; preds = %104
  %113 = load i32, i32* @buf0, align 4
  %114 = call i64 @strcmp(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %25

117:                                              ; preds = %112
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @utf32valid(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** @prop_name, align 8
  %123 = load i32, i32* @line, align 4
  %124 = call i32 @line_fail(i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %127 = load i32, i32* %2, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @free(i32* %131)
  %133 = call i32* @malloc(i32 4)
  store i32* %133, i32** %5, align 8
  %134 = load i32*, i32** %5, align 8
  store i32 0, i32* %134, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %137 = load i32, i32* %2, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32* %135, i32** %140, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %142 = load i32, i32* %2, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @free(i32* %146)
  %148 = call i32* @malloc(i32 4)
  store i32* %148, i32** %5, align 8
  %149 = load i32*, i32** %5, align 8
  store i32 0, i32* %149, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %152 = load i32, i32* %2, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i32* %150, i32** %155, align 8
  %156 = load i32, i32* @verbose, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %125
  %159 = load i32, i32* %2, align 4
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %125
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %25

164:                                              ; preds = %104
  br label %25

165:                                              ; preds = %25
  %166 = load i32*, i32** %1, align 8
  %167 = call i32 @fclose(i32* %166)
  %168 = load i32, i32* @verbose, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %6, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** @prop_name, align 8
  %178 = call i32 @file_fail(i8* %177)
  br label %179

179:                                              ; preds = %176, %173
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @utf32valid(i32) #1

declare dso_local i32 @line_fail(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @file_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
