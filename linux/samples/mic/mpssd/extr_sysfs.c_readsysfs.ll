; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_sysfs.c_readsysfs.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_sysfs.c_readsysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MICSYSFSDIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to open sysfs entry '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to read sysfs entry '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @readsysfs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = load i8*, i8** @MICSYSFSDIR, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %16, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = load i8*, i8** @MICSYSFSDIR, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %16, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @O_RDONLY, align 4
  %35 = call i32 @open(i8* %16, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @mpsslog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %16, i32 %40)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %74

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  %44 = trunc i64 %18 to i32
  %45 = call i32 @read(i32 %43, i8* %19, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @mpsslog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %16, i32 %50)
  br label %70

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %19, i64 %59
  store i8 0, i8* %60, align 1
  %61 = call i64 @strlen(i8* %19)
  %62 = add nsw i64 %61, 1
  %63 = call i8* @malloc(i64 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strcpy(i8* %67, i8* %19)
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %69, %55, %48
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @close(i32 %71)
  %73 = load i8*, i8** %9, align 8
  store i8* %73, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %38
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @mpsslog(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

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
