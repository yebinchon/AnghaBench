; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-hammer.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-hammer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOHANDLES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"c:n:o:?\00", align 1
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load i32, i32* @GPIOHANDLES_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %40 [
    i32 99, label %25
    i32 110, label %28
    i32 111, label %30
    i32 63, label %38
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @strtoul(i8* %26, i32* null, i32 10)
  store i32 %27, i32* %9, align 4
  br label %40

28:                                               ; preds = %23
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %6, align 8
  br label %40

30:                                               ; preds = %23
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @strtoul(i8* %31, i32* null, i32 10)
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %17, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %40

38:                                               ; preds = %23
  %39 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %55

40:                                               ; preds = %23, %30, %28, %25
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %41
  %49 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @hammer_device(i8* %51, i32* %17, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %50, %48, %38
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @print_usage(...) #2

declare dso_local i32 @hammer_device(i8*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
