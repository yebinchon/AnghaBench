; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_sysfs.c_setsysfs.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_sysfs.c_setsysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MICSYSFSDIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to open sysfs entry '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to write new sysfs entry '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setsysfs(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = load i8*, i8** @MICSYSFSDIR, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %15, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = load i8*, i8** @MICSYSFSDIR, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %15, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @readsysfs(i8* %30, i8* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = call i32 @open(i8* %15, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @mpsslog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %40)
  br label %66

42:                                               ; preds = %29
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i64 @write(i32 %51, i8* %52, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @mpsslog(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %37
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @readsysfs(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @mpsslog(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
