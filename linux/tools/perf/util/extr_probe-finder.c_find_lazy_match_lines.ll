; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_lazy_match_lines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_lazy_match_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intlist = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"No matched lines found in %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intlist*, i8*, i8*)* @find_lazy_match_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lazy_match_lines(%struct.intlist* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.intlist* %0, %struct.intlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %17 = load i32, i32* @STRERR_BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = trunc i64 %18 to i32
  %29 = call i32 @str_error_r(i32 %27, i8* %20, i32 %28)
  %30 = call i32 @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29)
  %31 = load i32, i32* @errno, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %86

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @getline(i8** %9, i64* %10, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %47, %38
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strlazymatch(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.intlist*, %struct.intlist** %5, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @intlist__add(%struct.intlist* %59, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @ferror(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @fclose(i32* %77)
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %84, %25
  %87 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @pr_warning(i8*, i8*, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i64 @strlazymatch(i8*, i8*) #2

declare dso_local i32 @intlist__add(%struct.intlist*, i32) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
