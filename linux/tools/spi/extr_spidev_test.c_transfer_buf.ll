; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"can't allocate tx buffer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't allocate rx buffer\00", align 1
@_write_count = common dso_local global i32 0, align 4
@_read_count = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"transfer error !\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @transfer_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_buf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @malloc(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = call i32 (...) @random()
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = call i32* @malloc(i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @transfer(i32 %36, i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @_write_count, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @_write_count, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @_read_count, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* @_read_count, align 4
  %47 = load i32, i32* @mode, align 4
  %48 = load i32, i32* @SPI_LOOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %35
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @memcmp(i32* %52, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @hex_dump(i32* %60, i32 %61, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @hex_dump(i32* %63, i32 %64, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @free(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @free(i32* %71)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @transfer(i32, i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @hex_dump(i32*, i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
