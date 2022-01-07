; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_line_range_desc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_parse_line_range_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_range = type { i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"start line\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"end line\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Line range is %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Start line must be smaller than end line.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Tailing with invalid str '%s'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"'%s' is not a valid function name.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_line_range_desc(i8* %0, %struct.line_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.line_range*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.line_range* %1, %struct.line_range** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %157

18:                                               ; preds = %2
  %19 = load %struct.line_range*, %struct.line_range** %5, align 8
  %20 = getelementptr inbounds %struct.line_range, %struct.line_range* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @INT_MAX, align 4
  %22 = load %struct.line_range*, %struct.line_range** %5, align 8
  %23 = getelementptr inbounds %struct.line_range, %struct.line_range* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %102

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 0, i8* %29, align 1
  %31 = load %struct.line_range*, %struct.line_range** %5, align 8
  %32 = getelementptr inbounds %struct.line_range, %struct.line_range* %31, i32 0, i32 3
  %33 = call i32 @parse_line_num(i8** %6, i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %153

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %74

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %10, align 1
  %51 = load %struct.line_range*, %struct.line_range** %5, align 8
  %52 = getelementptr inbounds %struct.line_range, %struct.line_range* %51, i32 0, i32 2
  %53 = call i32 @parse_line_num(i8** %6, i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %153

57:                                               ; preds = %47
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.line_range*, %struct.line_range** %5, align 8
  %63 = getelementptr inbounds %struct.line_range, %struct.line_range* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.line_range*, %struct.line_range** %5, align 8
  %66 = getelementptr inbounds %struct.line_range, %struct.line_range* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.line_range*, %struct.line_range** %5, align 8
  %70 = getelementptr inbounds %struct.line_range, %struct.line_range* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %61, %57
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.line_range*, %struct.line_range** %5, align 8
  %76 = getelementptr inbounds %struct.line_range, %struct.line_range* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.line_range*, %struct.line_range** %5, align 8
  %79 = getelementptr inbounds %struct.line_range, %struct.line_range* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  %84 = load %struct.line_range*, %struct.line_range** %5, align 8
  %85 = getelementptr inbounds %struct.line_range, %struct.line_range* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.line_range*, %struct.line_range** %5, align 8
  %88 = getelementptr inbounds %struct.line_range, %struct.line_range* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %153

93:                                               ; preds = %74
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %153

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %18
  %103 = load i8*, i8** %8, align 8
  %104 = call i8* @strchr(i8* %103, i8 signext 64)
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  %111 = call i8* @strdup(i8* %110)
  %112 = load %struct.line_range*, %struct.line_range** %5, align 8
  %113 = getelementptr inbounds %struct.line_range, %struct.line_range* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.line_range*, %struct.line_range** %5, align 8
  %115 = getelementptr inbounds %struct.line_range, %struct.line_range* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %153

121:                                              ; preds = %107
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.line_range*, %struct.line_range** %5, align 8
  %124 = getelementptr inbounds %struct.line_range, %struct.line_range* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  br label %152

125:                                              ; preds = %102
  %126 = load i8*, i8** %8, align 8
  %127 = call i8* @strchr(i8* %126, i8 signext 47)
  %128 = icmp ne i8* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %8, align 8
  %131 = call i8* @strchr(i8* %130, i8 signext 46)
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129, %125
  %134 = load i8*, i8** %8, align 8
  %135 = load %struct.line_range*, %struct.line_range** %5, align 8
  %136 = getelementptr inbounds %struct.line_range, %struct.line_range* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %151

137:                                              ; preds = %129
  %138 = load i8*, i8** %8, align 8
  %139 = call i64 @is_c_func_name(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i8*, i8** %8, align 8
  %143 = load %struct.line_range*, %struct.line_range** %5, align 8
  %144 = getelementptr inbounds %struct.line_range, %struct.line_range* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %150

145:                                              ; preds = %137
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 (i8*, ...) @semantic_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %9, align 4
  br label %153

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %121
  store i32 0, i32* %3, align 4
  br label %157

153:                                              ; preds = %145, %118, %98, %91, %56, %36
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %152, %15
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_line_num(i8**, i32*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @semantic_error(i8*, ...) #1

declare dso_local i64 @is_c_func_name(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
