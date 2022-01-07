; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-regs-options.c___parse_regs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-regs-options.c___parse_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_reg = type { i8*, i32 }
%struct.option = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"available registers: \00", align 1
@sample_reg_masks = common dso_local global %struct.sample_reg* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Unknown register \22%s\22, check man page or run \22perf record %s?\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"--user-regs=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32, i32)* @__parse_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_regs(%struct.option* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sample_reg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.option*, %struct.option** %6, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  store i8* null, i8** %13, align 8
  store i32 -1, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %150

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %150

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @arch__intr_reg_mask()
  store i32 %33, i32* %16, align 4
  br label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @arch__user_reg_mask()
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %138

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strdup(i8* %40)
  store i8* %41, i8** %13, align 8
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %150

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %134, %45
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 44)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.sample_reg*, %struct.sample_reg** @sample_reg_masks, align 8
  store %struct.sample_reg* %60, %struct.sample_reg** %11, align 8
  br label %61

61:                                               ; preds = %80, %57
  %62 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %63 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %68 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @stderr, align 4
  %75 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %76 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %82 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %81, i32 1
  store %struct.sample_reg* %82, %struct.sample_reg** %11, align 8
  br label %61

83:                                               ; preds = %61
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @fputc(i8 signext 10, i32 %84)
  store i32 -1, i32* %5, align 4
  br label %150

86:                                               ; preds = %53
  %87 = load %struct.sample_reg*, %struct.sample_reg** @sample_reg_masks, align 8
  store %struct.sample_reg* %87, %struct.sample_reg** %11, align 8
  br label %88

88:                                               ; preds = %109, %86
  %89 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %90 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %95 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %103 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcasecmp(i8* %101, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %112

108:                                              ; preds = %100, %93
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %111 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %110, i32 1
  store %struct.sample_reg* %111, %struct.sample_reg** %11, align 8
  br label %88

112:                                              ; preds = %107, %88
  %113 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %114 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %123 = call i32 @ui__warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %118, i8* %122)
  br label %146

124:                                              ; preds = %112
  %125 = load %struct.sample_reg*, %struct.sample_reg** %11, align 8
  %126 = getelementptr inbounds %struct.sample_reg, %struct.sample_reg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load i8*, i8** %14, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %124
  br label %137

134:                                              ; preds = %124
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %12, align 8
  br label %46

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %36
  store i32 0, i32* %15, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %138
  br label %146

146:                                              ; preds = %145, %117
  %147 = load i8*, i8** %13, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %83, %44, %28, %23
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @arch__intr_reg_mask(...) #1

declare dso_local i32 @arch__user_reg_mask(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ui__warning(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
