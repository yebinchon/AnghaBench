; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_tokenize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"unclosed quote: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"too many words, legal max <=%d\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"split into words:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32)* @ddebug_tokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_tokenize(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %113, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %121

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @skip_spaces(i8* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %121

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %121

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %72

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %59, %39
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  br label %45

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %144

71:                                               ; preds = %62
  br label %97

72:                                               ; preds = %34
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %9, align 8
  br label %74

74:                                               ; preds = %88, %72
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @isspace(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi i1 [ false, %74 ], [ %84, %79 ]
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  br label %74

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = icmp eq i8* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  br label %97

97:                                               ; preds = %91, %71
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %144

106:                                              ; preds = %97
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %9, align 8
  store i8 0, i8* %111, align 1
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i8*, i8** %5, align 8
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  store i8* %114, i8** %119, align 8
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %5, align 8
  br label %12

121:                                              ; preds = %28, %22, %12
  %122 = load i64, i64* @verbose, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %137, %124
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i8**, i8*** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %126

140:                                              ; preds = %126
  %141 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %121
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %101, %66
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
