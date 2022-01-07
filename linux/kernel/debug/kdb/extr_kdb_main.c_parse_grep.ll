; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_parse_grep.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_parse_grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"grep \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid 'pipe', see grephelp\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid quoted string, see grephelp\0A\00", align 1
@kdb_grep_leading = common dso_local global i32 0, align 4
@kdb_grep_trailing = common dso_local global i32 0, align 4
@KDB_GREP_STRLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"search string too long\0A\00", align 1
@kdb_grep_string = common dso_local global i32 0, align 4
@kdb_grepping_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_grep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_grep(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 124
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %113

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %20, %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @str_has_prefix(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 @kdb_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %113

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %37, %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isspace(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %32

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 10)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @kdb_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %113

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 34
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 34)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @kdb_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %113

68:                                               ; preds = %59
  %69 = load i8*, i8** %5, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %54
  store i32 0, i32* @kdb_grep_leading, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 94
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  store i32 1, i32* @kdb_grep_leading, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %3, align 4
  store i32 0, i32* @kdb_grep_trailing, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 36
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  store i32 1, i32* @kdb_grep_trailing, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %89, %78
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @strlen(i8* %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @KDB_GREP_STRLEN, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @kdb_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %113

107:                                              ; preds = %101
  %108 = load i32, i32* @kdb_grep_string, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @strcpy(i32 %108, i8* %109)
  %111 = load i32, i32* @kdb_grepping_flag, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @kdb_grepping_flag, align 4
  br label %113

113:                                              ; preds = %107, %105, %100, %66, %52, %27, %11
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @str_has_prefix(i8*, i8*) #1

declare dso_local i32 @kdb_printf(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
