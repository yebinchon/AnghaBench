; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_gpio_debugfs_get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_gpio_debugfs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"debugfs is not mounted\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"read from gpio debugfs failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @gpio_debugfs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_debugfs_get(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = call i64 @get_debugfs(i8** %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @err(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i8*, i8** %8, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @err(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %44, %38, %27
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @getline(i8** %10, i64* %11, i32* %29)
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %80

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strstr(i8* %33, i8* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %28

39:                                               ; preds = %32
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 41)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %28

45:                                               ; preds = %39
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @OUT, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %12, align 8
  br label %66

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @IN, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %12, align 8
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  store i32 1, i32* %71, align 4
  br label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %70
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @fclose(i32* %83)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store i32 -1, i32* %4, align 4
  br label %91

90:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @get_debugfs(i8**) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
