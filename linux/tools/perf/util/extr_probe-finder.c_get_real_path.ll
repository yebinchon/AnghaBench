; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_get_real_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_get_real_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@R_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_real_path(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 47
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %8, align 8
  br label %44

23:                                               ; preds = %18, %12
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @R_OK, align 4
  %26 = call i64 @access(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strdup(i8* %29)
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %4, align 4
  br label %98

41:                                               ; preds = %23
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 2
  %52 = call i8* @malloc(i64 %51)
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %98

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @R_OK, align 4
  %70 = call i64 @access(i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %98

73:                                               ; preds = %61
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i8**, i8*** %7, align 8
  %78 = call i32 @zfree(i8** %77)
  %79 = load i32, i32* @errno, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %98

81:                                               ; preds = %73
  %82 = load i32, i32* @errno, align 4
  switch i32 %82, label %93 [
    i32 130, label %83
    i32 129, label %83
    i32 128, label %83
    i32 131, label %83
  ]

83:                                               ; preds = %81, %81, %81, %81
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 47)
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i8**, i8*** %7, align 8
  %91 = call i32 @zfree(i8** %90)
  store i32 -129, i32* %4, align 4
  br label %98

92:                                               ; preds = %83
  br label %61

93:                                               ; preds = %81
  %94 = load i8**, i8*** %7, align 8
  %95 = call i32 @zfree(i8** %94)
  %96 = load i32, i32* @errno, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %89, %76, %72, %57, %41, %39
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
