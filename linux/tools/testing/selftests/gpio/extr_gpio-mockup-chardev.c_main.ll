; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/gpio/extr_gpio-mockup-chardev.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiochip_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Usage: %s prefix is_valid\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Test gpiochip %s: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid test successful\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"successful\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"gpio<%s> test failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpiochip_info*, align 8
  %9 = alloca %struct.gpiochip_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.gpiochip_info* @list_gpiochip(i8* %34, i32* %11)
  store %struct.gpiochip_info* %35, %struct.gpiochip_info** %8, align 8
  %36 = load %struct.gpiochip_info*, %struct.gpiochip_info** %8, align 8
  %37 = icmp ne %struct.gpiochip_info* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %88

46:                                               ; preds = %41, %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %88

49:                                               ; preds = %21
  %50 = load %struct.gpiochip_info*, %struct.gpiochip_info** %8, align 8
  %51 = icmp ne %struct.gpiochip_info* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %88

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.gpiochip_info*, %struct.gpiochip_info** %8, align 8
  store %struct.gpiochip_info* %60, %struct.gpiochip_info** %9, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %83, %59
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %67 = call i32 @gpio_pin_tests(%struct.gpiochip_info* %66, i32 0)
  %68 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %69 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %70 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @gpio_pin_tests(%struct.gpiochip_info* %68, i32 %72)
  %74 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %75 = call i32 (...) @random()
  %76 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %77 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = srem i32 %75, %78
  %80 = call i32 @gpio_pin_tests(%struct.gpiochip_info* %74, i32 %79)
  %81 = load %struct.gpiochip_info*, %struct.gpiochip_info** %9, align 8
  %82 = getelementptr inbounds %struct.gpiochip_info, %struct.gpiochip_info* %81, i32 1
  store %struct.gpiochip_info* %82, %struct.gpiochip_info** %9, align 8
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %61

86:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %55, %46, %44
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.gpiochip_info*, %struct.gpiochip_info** %8, align 8
  %97 = icmp ne %struct.gpiochip_info* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.gpiochip_info*, %struct.gpiochip_info** %8, align 8
  %100 = call i32 @free(%struct.gpiochip_info* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 @exit(i32 %105) #3
  unreachable

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.gpiochip_info* @list_gpiochip(i8*, i32*) #1

declare dso_local i32 @gpio_pin_tests(%struct.gpiochip_info*, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(%struct.gpiochip_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
