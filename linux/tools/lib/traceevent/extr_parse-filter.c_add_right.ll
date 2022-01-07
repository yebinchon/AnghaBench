; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_right.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, %struct.tep_filter_arg*, %struct.tep_filter_arg* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32*, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.tep_filter_arg* }
%struct.TYPE_9__ = type { %struct.tep_filter_arg* }

@.str = private unnamed_addr constant [15 x i8] c"Illegal rvalue\00", align 1
@TEP_ERRNO__ILLEGAL_RVALUE = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@TEP_FILTER_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Illegal lvalue for string comparison\00", align 1
@TEP_ERRNO__ILLEGAL_LVALUE = common dso_local global i32 0, align 4
@TEP_FILTER_CMP_MATCH = common dso_local global i32 0, align 4
@TEP_FILTER_CMP_NOT_MATCH = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"RegEx '%s' did not compute\00", align 1
@TEP_ERRNO__INVALID_REGEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal comparison for string\00", align 1
@TEP_ERRNO__ILLEGAL_STRING_CMP = common dso_local global i32 0, align 4
@TEP_FILTER_ARG_STR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate string filter\00", align 1
@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Op not allowed with integers\00", align 1
@TEP_ERRNO__ILLEGAL_INTEGER_CMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Syntax error\00", align 1
@TEP_ERRNO__SYNTAX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*, %struct.tep_filter_arg*, i8*)* @add_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_right(%struct.tep_filter_arg* %0, %struct.tep_filter_arg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_filter_arg*, align 8
  %6 = alloca %struct.tep_filter_arg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_filter_arg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %5, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %13 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %237 [
    i32 139, label %15
    i32 136, label %27
    i32 137, label %39
  ]

15:                                               ; preds = %3
  %16 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %17 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %18, align 8
  %20 = icmp ne %struct.tep_filter_arg* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %239

22:                                               ; preds = %15
  %23 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %24 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %25 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store %struct.tep_filter_arg* %23, %struct.tep_filter_arg** %26, align 8
  br label %238

27:                                               ; preds = %3
  %28 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %29 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %30, align 8
  %32 = icmp ne %struct.tep_filter_arg* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %239

34:                                               ; preds = %27
  %35 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %36 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %37 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.tep_filter_arg* %35, %struct.tep_filter_arg** %38, align 8
  br label %238

39:                                               ; preds = %3
  %40 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %41 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %42, align 8
  %44 = icmp ne %struct.tep_filter_arg* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %239

46:                                               ; preds = %39
  %47 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %48 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %51 [
    i32 135, label %50
    i32 138, label %50
  ]

50:                                               ; preds = %46, %46
  br label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i8*, ...) @show_error(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @TEP_ERRNO__ILLEGAL_RVALUE, align 4
  store i32 %54, i32* %4, align 4
  br label %243

55:                                               ; preds = %50
  %56 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %57 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %235 [
    i32 134, label %60
    i32 128, label %84
    i32 129, label %219
  ]

60:                                               ; preds = %55
  %61 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %62 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %69 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 130
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %75 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 131
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %81 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 129, i32* %82, align 8
  br label %220

83:                                               ; preds = %73, %67, %60
  br label %84

84:                                               ; preds = %55, %83
  %85 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %86 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  %89 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %90 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %91, align 8
  store %struct.tep_filter_arg* %92, %struct.tep_filter_arg** %8, align 8
  %93 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %94 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %9, align 8
  %97 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %98 = call i32 @memset(%struct.tep_filter_arg* %97, i32 0, i32 112)
  %99 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %100 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %84
  %105 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %106 = call i32 @free_arg(%struct.tep_filter_arg* %105)
  %107 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %108 = call i32 @free_arg(%struct.tep_filter_arg* %107)
  %109 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %110 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %111 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @TEP_FILTER_FALSE, align 4
  %113 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %114 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %236

116:                                              ; preds = %84
  %117 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %118 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 138
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 (i8*, i8*, ...) @show_error(i8* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @TEP_ERRNO__ILLEGAL_LVALUE, align 4
  store i32 %124, i32* %4, align 4
  br label %243

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  switch i32 %126, label %148 [
    i32 133, label %127
    i32 132, label %129
    i32 130, label %131
    i32 131, label %131
  ]

127:                                              ; preds = %125
  %128 = load i32, i32* @TEP_FILTER_CMP_MATCH, align 4
  store i32 %128, i32* %10, align 4
  br label %152

129:                                              ; preds = %125
  %130 = load i32, i32* @TEP_FILTER_CMP_NOT_MATCH, align 4
  store i32 %130, i32* %10, align 4
  br label %152

131:                                              ; preds = %125, %125
  %132 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %133 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* @REG_ICASE, align 4
  %137 = load i32, i32* @REG_NOSUB, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @regcomp(i32* %134, i8* %135, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 (i8*, i8*, ...) @show_error(i8* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  %146 = load i32, i32* @TEP_ERRNO__INVALID_REGEX, align 4
  store i32 %146, i32* %4, align 4
  br label %243

147:                                              ; preds = %131
  br label %152

148:                                              ; preds = %125
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 (i8*, i8*, ...) @show_error(i8* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* @TEP_ERRNO__ILLEGAL_STRING_CMP, align 4
  store i32 %151, i32* %4, align 4
  br label %243

152:                                              ; preds = %147, %129, %127
  %153 = load i32, i32* @TEP_FILTER_ARG_STR, align 4
  %154 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %155 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %158 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %161 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %165 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  store %struct.TYPE_14__* %163, %struct.TYPE_14__** %166, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @strdup(i8* %167)
  %169 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %170 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 8
  %172 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %173 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %152
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 (i8*, i8*, ...) @show_error(i8* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %180, i32* %4, align 4
  br label %243

181:                                              ; preds = %152
  %182 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %183 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, 1
  %189 = trunc i64 %188 to i32
  %190 = call i32* @malloc(i32 %189)
  %191 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %192 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  store i32* %190, i32** %193, align 8
  %194 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %195 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %181
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 (i8*, i8*, ...) @show_error(i8* %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %202, i32* %4, align 4
  br label %243

203:                                              ; preds = %181
  %204 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %205 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %209 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  store i32 0, i32* %214, align 4
  %215 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %216 = call i32 @free_arg(%struct.tep_filter_arg* %215)
  %217 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %8, align 8
  %218 = call i32 @free_arg(%struct.tep_filter_arg* %217)
  br label %236

219:                                              ; preds = %55
  br label %220

220:                                              ; preds = %219, %79
  %221 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %222 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  switch i32 %224, label %229 [
    i32 130, label %225
    i32 131, label %225
  ]

225:                                              ; preds = %220, %220
  %226 = load i8*, i8** %7, align 8
  %227 = call i32 (i8*, i8*, ...) @show_error(i8* %226, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i32, i32* @TEP_ERRNO__ILLEGAL_INTEGER_CMP, align 4
  store i32 %228, i32* %4, align 4
  br label %243

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229
  %231 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %6, align 8
  %232 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %5, align 8
  %233 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  store %struct.tep_filter_arg* %231, %struct.tep_filter_arg** %234, align 8
  br label %236

235:                                              ; preds = %55
  br label %239

236:                                              ; preds = %230, %203, %104
  br label %238

237:                                              ; preds = %3
  br label %239

238:                                              ; preds = %236, %34, %22
  store i32 0, i32* %4, align 4
  br label %243

239:                                              ; preds = %237, %235, %45, %33, %21
  %240 = load i8*, i8** %7, align 8
  %241 = call i32 (i8*, i8*, ...) @show_error(i8* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %242 = load i32, i32* @TEP_ERRNO__SYNTAX_ERROR, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %239, %238, %225, %199, %177, %148, %142, %121, %51
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @show_error(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.tep_filter_arg*, i32, i32) #1

declare dso_local i32 @free_arg(%struct.tep_filter_arg*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
