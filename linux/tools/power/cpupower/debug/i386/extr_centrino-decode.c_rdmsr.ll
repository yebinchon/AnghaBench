; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_centrino-decode.c_rdmsr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_centrino-decode.c_rdmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @rdmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdmsr(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MCPU, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %54

19:                                               ; preds = %4
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %54

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SEEK_CUR, align 4
  %33 = call i32 @lseek(i32 %30, i32 %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %51

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @read(i32 %37, i64* %11, i32 8)
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %51

41:                                               ; preds = %36
  %42 = load i64, i64* %11, align 8
  %43 = and i64 %42, 4294967295
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i64, i64* %11, align 8
  %47 = lshr i64 %46, 32
  %48 = and i64 %47, 4294967295
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %41, %40, %35
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %51, %28, %18
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
