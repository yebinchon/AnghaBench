; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"info not properly terminated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"zero length info key specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8**, i8**)* @cuse_parse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_parse_one(i8** %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %26, %4
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %15

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %90

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %90

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %12, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i8*, i8** %10, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %44
  %54 = call i32 @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @strstrip(i8* %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @strstrip(i8* %66)
  store i8* %67, i8** %12, align 8
  br label %71

68:                                               ; preds = %44
  %69 = load i8*, i8** %11, align 8
  %70 = call i8* @strstrip(i8* %69)
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %90

79:                                               ; preds = %71
  %80 = load i8*, i8** %10, align 8
  %81 = load i8**, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8**, i8*** %8, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i8**, i8*** %9, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i8*, i8** %12, align 8
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %86, %79
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %75, %40, %33
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i8* @strstrip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
