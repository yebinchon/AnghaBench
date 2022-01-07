; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_filename__read_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_filename__read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read failed %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filename__read_str(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @STRERR_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %96

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %78, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64, i64* @BUFSIZ, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i8* @realloc(i8* %39, i64 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %81

47:                                               ; preds = %35
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %47, %31
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr i8, i8* %51, i64 %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @read(i32 %50, i8* %53, i64 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = trunc i64 %19 to i32
  %67 = call i32 @strerror_r(i32 %65, i8* %21, i32 %66)
  %68 = call i32 @pr_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  store i32 0, i32* %14, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @errno, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %63
  br label %81

73:                                               ; preds = %49
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %31, label %81

81:                                               ; preds = %78, %72, %44
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = load i64*, i64** %7, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8**, i8*** %6, align 8
  store i8* %87, i8** %88, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @close(i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %96

96:                                               ; preds = %92, %27
  %97 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i32 @pr_warning(i8*, i32, i32) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
