; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_msr.c_write_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_msr.c_write_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_msr(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SEEK_CUR, align 4
  %23 = call i32 @lseek(i32 %20, i32 %21, i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %35

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @write(i32 %27, i64* %7, i32 8)
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @close(i32 %33)
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @close(i32 %36)
  store i32 -1, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %32, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
