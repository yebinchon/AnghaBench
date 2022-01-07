; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_usage_with_options_internal.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_usage_with_options_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }
%struct.parse_opt_ctx_t = type { i32 }

@PARSE_OPT_HELP = common dso_local global i32 0, align 4
@error_buf = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0A Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"    or: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPTION_GROUP = common dso_local global i64 0, align 8
@OPTION_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.option*, i32, %struct.parse_opt_ctx_t*)* @usage_with_options_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_with_options_internal(i8** %0, %struct.option* %1, i32 %2, %struct.parse_opt_ctx_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.parse_opt_ctx_t*, align 8
  %10 = alloca %struct.option*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.parse_opt_ctx_t* %3, %struct.parse_opt_ctx_t** %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %14, i32* %5, align 4
  br label %117

15:                                               ; preds = %4
  %16 = call i32 (...) @setup_pager()
  %17 = load i8*, i8** @error_buf, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @error_buf, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @zfree(i8** @error_buf)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %6, align 8
  %28 = load i8*, i8** %26, align 8
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %42, %24
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %6, align 8
  %46 = load i8*, i8** %44, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %30

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %63)
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %6, align 8
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.option*, %struct.option** %7, align 8
  %69 = getelementptr inbounds %struct.option, %struct.option* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OPTION_GROUP, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fputc(i8 signext 10, i32 %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.option*, %struct.option** %7, align 8
  %78 = call %struct.option* @options__order(%struct.option* %77)
  store %struct.option* %78, %struct.option** %10, align 8
  %79 = load %struct.option*, %struct.option** %10, align 8
  %80 = icmp ne %struct.option* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load %struct.option*, %struct.option** %10, align 8
  store %struct.option* %82, %struct.option** %7, align 8
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %108, %83
  %85 = load %struct.option*, %struct.option** %7, align 8
  %86 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @OPTION_END, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %9, align 8
  %92 = icmp ne %struct.parse_opt_ctx_t* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %9, align 8
  %95 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.option*, %struct.option** %7, align 8
  %100 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %9, align 8
  %101 = call i32 @option__in_argv(%struct.option* %99, %struct.parse_opt_ctx_t* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %108

104:                                              ; preds = %98, %93, %90
  %105 = load %struct.option*, %struct.option** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @print_option_help(%struct.option* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %103
  %109 = load %struct.option*, %struct.option** %7, align 8
  %110 = getelementptr inbounds %struct.option, %struct.option* %109, i32 1
  store %struct.option* %110, %struct.option** %7, align 8
  br label %84

111:                                              ; preds = %84
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @fputc(i8 signext 10, i32 %112)
  %114 = load %struct.option*, %struct.option** %10, align 8
  %115 = call i32 @free(%struct.option* %114)
  %116 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %13
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local %struct.option* @options__order(%struct.option*) #1

declare dso_local i32 @option__in_argv(%struct.option*, %struct.parse_opt_ctx_t*) #1

declare dso_local i32 @print_option_help(%struct.option*, i32) #1

declare dso_local i32 @free(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
