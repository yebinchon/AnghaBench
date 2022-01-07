; ModuleID = '/home/carl/AnghaBench/linux/tools/laptop/dslm/extr_dslm.c_check_powermode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/laptop/dslm/extr_dslm.c_check_powermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIN_CHECKPOWERMODE1 = common dso_local global i8 0, align 1
@HDIO_DRIVE_CMD = common dso_local global i32 0, align 4
@WIN_CHECKPOWERMODE2 = common dso_local global i8 0, align 1
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c" drive state is:  %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_powermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_powermode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %6 = load i8, i8* @WIN_CHECKPOWERMODE1, align 1
  store i8 %6, i8* %5, align 1
  %7 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %9, align 1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @HDIO_DRIVE_CMD, align 4
  %12 = bitcast [4 x i8]* %3 to i8**
  %13 = call i64 @ioctl(i32 %10, i32 %11, i8** %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load i8, i8* @WIN_CHECKPOWERMODE2, align 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = zext i8 %16 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @HDIO_DRIVE_CMD, align 4
  %23 = bitcast [4 x i8]* %3 to i8**
  %24 = call i64 @ioctl(i32 %21, i32 %22, i8** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EIO, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %26
  store i32 -1, i32* %4, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %50

43:                                               ; preds = %20, %15, %1
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 255
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @D(i32 %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @ioctl(i32, i32, i8**) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
