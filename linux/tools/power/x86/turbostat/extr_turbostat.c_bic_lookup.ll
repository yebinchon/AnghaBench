; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_bic_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_bic_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MAX_BIC = common dso_local global i32 0, align 4
@bic = common dso_local global %struct.TYPE_2__* null, align 8
@SHOW_LIST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid counter name: %s\0A\00", align 1
@deferred_skip_names = common dso_local global i8** null, align 8
@deferred_skip_index = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"deferred \22%s\22\0A\00", align 1
@MAX_DEFERRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"More than max %d un-recognized --skip options '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bic_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %94, %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %95

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 44)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** %8, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i64 -1, i64* %3, align 8
  br label %97

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_BIC, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bic, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %30, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %49

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %39, %25
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MAX_BIC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SHOW_LIST, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @exit(i32 -1) #3
  unreachable

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  %64 = load i8**, i8*** @deferred_skip_names, align 8
  %65 = load i32, i32* @deferred_skip_index, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @deferred_skip_index, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i64, i64* @debug, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %62
  %76 = load i32, i32* @deferred_skip_index, align 4
  %77 = load i32, i32* @MAX_DEFERRED, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* @MAX_DEFERRED, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %81, i8* %82)
  %84 = call i32 (...) @help()
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i8*, i8** %8, align 8
  store i8* %88, i8** %4, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %91, %87
  br label %9

95:                                               ; preds = %9
  %96 = load i64, i64* %7, align 8
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %95, %23
  %98 = load i64, i64* %3, align 8
  ret i64 %98
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @help(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
