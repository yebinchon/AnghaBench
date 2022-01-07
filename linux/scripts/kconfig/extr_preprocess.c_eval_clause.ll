; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_eval_clause.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_eval_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_MAX_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"too many function arguments\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i8**)* @eval_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eval_clause(i8* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @FUNCTION_MAX_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @xstrndup(i8* %25, i64 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strtoul(i8* %28, i8** %12, i32 10)
  store i64 %29, i64* %20, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %4
  %34 = load i64, i64* %20, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* %20, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ule i64 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8**, i8*** %8, align 8
  %43 = load i64, i64* %20, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @xstrdup(i8* %46)
  store i8* %47, i8** %11, align 8
  br label %173

48:                                               ; preds = %36, %33, %4
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %14, align 8
  store i8* %49, i8** %13, align 8
  br label %50

50:                                               ; preds = %95, %48
  %51 = load i8*, i8** %14, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %50
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @FUNCTION_MAX_ARGS, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @pperror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8*, i8** %24, i64 %73
  store i8* %70, i8** %74, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %13, align 8
  br label %95

77:                                               ; preds = %57, %54
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 40
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %94

85:                                               ; preds = %77
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 41
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  br label %50

98:                                               ; preds = %50
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8*, i8** %24, i64 %102
  store i8* %99, i8** %103, align 8
  %104 = getelementptr inbounds i8*, i8** %24, i64 0
  %105 = load i8*, i8** %104, align 16
  %106 = load i32, i32* %7, align 4
  %107 = load i8**, i8*** %8, align 8
  %108 = call i8* @expand_string_with_args(i8* %105, i32 %106, i8** %107)
  store i8* %108, i8** %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %127, %98
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %24, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i8**, i8*** %8, align 8
  %123 = call i8* @expand_string_with_args(i8* %120, i32 %121, i8** %122)
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %24, i64 %125
  store i8* %123, i8** %126, align 8
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i8* @variable_expand(i8* %131, i32 %132, i8** %24)
  store i8* %133, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %156

137:                                              ; preds = %130
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i8* @function_expand(i8* %138, i32 %139, i8** %24)
  store i8* %140, i8** %11, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %156

144:                                              ; preds = %137
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i8*, i8** %10, align 8
  %149 = call i8* @env_expand(i8* %148)
  store i8* %149, i8** %11, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %156

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %144
  %155 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %155, i8** %11, align 8
  br label %156

156:                                              ; preds = %154, %152, %143, %136
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %167, %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %24, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  br label %157

170:                                              ; preds = %157
  %171 = load i8*, i8** %10, align 8
  %172 = call i32 @free(i8* %171)
  br label %173

173:                                              ; preds = %170, %41
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8*, i8** %11, align 8
  %177 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %177)
  ret i8* %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xstrndup(i8*, i64) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @pperror(i8*) #2

declare dso_local i8* @expand_string_with_args(i8*, i32, i8**) #2

declare dso_local i8* @variable_expand(i8*, i32, i8**) #2

declare dso_local i8* @function_expand(i8*, i32, i8**) #2

declare dso_local i8* @env_expand(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
