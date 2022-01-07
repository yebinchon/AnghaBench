; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_escaped_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_escaped_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"can't allocate tx buffer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't allocate rx buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @transfer_escaped_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_escaped_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32* @malloc(i64 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i64, i64* %5, align 8
  %18 = call i32* @malloc(i64 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @unescape(i8* %25, i8* %26, i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @transfer(i32 %29, i32* %30, i32* %31, i64 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @free(i32* %36)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i64 @unescape(i8*, i8*, i64) #1

declare dso_local i32 @transfer(i32, i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
