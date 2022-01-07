; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i8, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0A Usage: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"    or: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPTION_END = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@PARSE_OPT_HELP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_usage(i8** %0, %struct.option* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %58

12:                                               ; preds = %4
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %5, align 8
  %16 = load i8*, i8** %14, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %30, %12
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i1 [ false, %18 ], [ %27, %22 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %5, align 8
  %34 = load i8*, i8** %32, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %18

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %51)
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %5, align 8
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fputc(i8 signext 10, i32 %56)
  br label %58

58:                                               ; preds = %55, %11
  br label %59

59:                                               ; preds = %113, %58
  %60 = load %struct.option*, %struct.option** %6, align 8
  %61 = getelementptr inbounds %struct.option, %struct.option* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OPTION_END, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.option*, %struct.option** %6, align 8
  %70 = getelementptr inbounds %struct.option, %struct.option* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.option*, %struct.option** %6, align 8
  %79 = call i32 @print_option_help(%struct.option* %78, i32 0)
  br label %116

80:                                               ; preds = %68
  br label %113

81:                                               ; preds = %65
  %82 = load %struct.option*, %struct.option** %6, align 8
  %83 = getelementptr inbounds %struct.option, %struct.option* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %113

87:                                               ; preds = %81
  %88 = load %struct.option*, %struct.option** %6, align 8
  %89 = getelementptr inbounds %struct.option, %struct.option* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @strstarts(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.option*, %struct.option** %6, align 8
  %96 = call i32 @print_option_help(%struct.option* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strstarts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.option*, %struct.option** %6, align 8
  %103 = getelementptr inbounds %struct.option, %struct.option* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = call i64 @strstarts(i8* %104, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.option*, %struct.option** %6, align 8
  %111 = call i32 @print_option_help(%struct.option* %110, i32 0)
  br label %112

112:                                              ; preds = %109, %101, %97
  br label %113

113:                                              ; preds = %112, %86, %80
  %114 = load %struct.option*, %struct.option** %6, align 8
  %115 = getelementptr inbounds %struct.option, %struct.option* %114, i32 1
  store %struct.option* %115, %struct.option** %6, align 8
  br label %59

116:                                              ; preds = %77, %59
  %117 = load i32, i32* @PARSE_OPT_HELP, align 4
  ret i32 %117
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @print_option_help(%struct.option*, i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
