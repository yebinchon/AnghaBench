; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_subcommand.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_subcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.option = type { i8*, i32 }
%struct.parse_opt_ctx_t = type { i8**, i32* }

@.str = private unnamed_addr constant [20 x i8] c"%s %s [<options>] {\00", align 1
@subcmd_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@OPTION_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"--%s \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@error_buf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"unknown switch `%c'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_subcommand(i32 %0, i8** %1, %struct.option* %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.parse_opt_ctx_t, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.option* %2, %struct.option** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8**, i8*** %10, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %6
  %20 = load i8**, i8*** %11, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %19
  store i8* null, i8** %14, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @subcmd_config, i32 0, i32 0), align 4
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8**, i8*, i32, ...) @astrcatf(i8** %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %28)
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %49, %24
  %31 = load i8**, i8*** %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @astrcat(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8**, i8*** %10, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @astrcat(i8** %14, i8* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %30

52:                                               ; preds = %30
  %53 = call i32 @astrcat(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %14, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %19, %6
  %58 = load i32, i32* %7, align 4
  %59 = load i8**, i8*** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @parse_options_start(%struct.parse_opt_ctx_t* %13, i32 %58, i8** %59, i32 %60)
  %62 = load %struct.option*, %struct.option** %9, align 8
  %63 = load i8**, i8*** %11, align 8
  %64 = call i32 @parse_options_step(%struct.parse_opt_ctx_t* %13, %struct.option* %62, i8** %63)
  switch i32 %64, label %116 [
    i32 130, label %65
    i32 131, label %67
    i32 129, label %68
    i32 128, label %91
  ]

65:                                               ; preds = %57
  %66 = call i32 @exit(i32 129) #3
  unreachable

67:                                               ; preds = %57
  br label %142

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %85, %68
  %70 = load %struct.option*, %struct.option** %9, align 8
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @OPTION_END, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.option*, %struct.option** %9, align 8
  %77 = getelementptr inbounds %struct.option, %struct.option* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.option*, %struct.option** %9, align 8
  %82 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.option*, %struct.option** %9, align 8
  %87 = getelementptr inbounds %struct.option, %struct.option* %86, i32 1
  store %struct.option* %87, %struct.option** %9, align 8
  br label %69

88:                                               ; preds = %69
  %89 = call i32 @putchar(i8 signext 10)
  %90 = call i32 @exit(i32 130) #3
  unreachable

91:                                               ; preds = %57
  %92 = load i8**, i8*** %10, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %109, %94
  %96 = load i8**, i8*** %10, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load i8**, i8*** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %95

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %91
  %114 = call i32 @putchar(i8 signext 10)
  %115 = call i32 @exit(i32 130) #3
  unreachable

116:                                              ; preds = %57
  %117 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 45
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = ptrtoint i8* %130 to i32
  %132 = call i32 (i8**, i8*, i32, ...) @astrcatf(i8** bitcast (i32* @error_buf to i8**), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %138

133:                                              ; preds = %116
  %134 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8**, i8*, i32, ...) @astrcatf(i8** bitcast (i32* @error_buf to i8**), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i8**, i8*** %11, align 8
  %140 = load %struct.option*, %struct.option** %9, align 8
  %141 = call i32 @usage_with_options(i8** %139, %struct.option* %140)
  br label %142

142:                                              ; preds = %138, %67
  %143 = call i32 @parse_options_end(%struct.parse_opt_ctx_t* %13)
  ret i32 %143
}

declare dso_local i32 @astrcatf(i8**, i8*, i32, ...) #1

declare dso_local i32 @astrcat(i8**, i8*) #1

declare dso_local i32 @parse_options_start(%struct.parse_opt_ctx_t*, i32, i8**, i32) #1

declare dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t*, %struct.option*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @parse_options_end(%struct.parse_opt_ctx_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
