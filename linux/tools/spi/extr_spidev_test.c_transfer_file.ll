; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"can't stat input file\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't open input file\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't allocate tx buffer\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"can't allocate rx buffer\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to read input file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @transfer_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_file(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @stat(i8* %10, %struct.stat* %6)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pabort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @pabort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @malloc(i64 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @malloc(i64 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @pabort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @read(i32 %40, i32* %41, i64 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 @pabort(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, i32* %3, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @transfer(i32 %52, i32* %53, i32* %54, i64 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @close(i32 %62)
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @transfer(i32, i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
