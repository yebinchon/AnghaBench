; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOHANDLE_REQUEST_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"c:n:o:dsrf?\00", align 1
@optarg = common dso_local global i8* null, align 8
@GPIOHANDLE_REQUEST_OPEN_DRAIN = common dso_local global i64 0, align 8
@GPIOHANDLE_REQUEST_OPEN_SOURCE = common dso_local global i64 0, align 8
@GPIOEVENT_REQUEST_RISING_EDGE = common dso_local global i64 0, align 8
@GPIOEVENT_REQUEST_FALLING_EDGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"No flags specified, listening on both rising and falling edges\0A\00", align 1
@GPIOEVENT_REQUEST_BOTH_EDGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @GPIOHANDLE_REQUEST_INPUT, align 8
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %46 [
    i32 99, label %20
    i32 110, label %23
    i32 111, label %25
    i32 100, label %28
    i32 115, label %32
    i32 114, label %36
    i32 102, label %40
    i32 63, label %44
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @strtoul(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %8, align 4
  br label %46

23:                                               ; preds = %18
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** %6, align 8
  br label %46

25:                                               ; preds = %18
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @strtoul(i8* %26, i32* null, i32 10)
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load i64, i64* @GPIOHANDLE_REQUEST_OPEN_DRAIN, align 8
  %30 = load i64, i64* %9, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %9, align 8
  br label %46

32:                                               ; preds = %18
  %33 = load i64, i64* @GPIOHANDLE_REQUEST_OPEN_SOURCE, align 8
  %34 = load i64, i64* %9, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %9, align 8
  br label %46

36:                                               ; preds = %18
  %37 = load i64, i64* @GPIOEVENT_REQUEST_RISING_EDGE, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  br label %46

40:                                               ; preds = %18
  %41 = load i64, i64* @GPIOEVENT_REQUEST_FALLING_EDGE, align 8
  %42 = load i64, i64* %10, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %46

44:                                               ; preds = %18
  %45 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  br label %68

46:                                               ; preds = %18, %40, %36, %32, %28, %25, %23, %20
  br label %13

47:                                               ; preds = %13
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47
  %54 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  br label %68

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* @GPIOEVENT_REQUEST_BOTH_EDGES, align 8
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @monitor_device(i8* %62, i32 %63, i64 %64, i64 %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %53, %44
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @monitor_device(i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
