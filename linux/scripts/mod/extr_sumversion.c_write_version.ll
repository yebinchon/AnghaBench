; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_sumversion.c_write_version.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_sumversion.c_write_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"changing sum in %s failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"changing sum in %s:%lu failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"writing sum in %s failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @write_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_version(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = call i32 (i8*, i8*, i64, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %17)
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i64 @lseek(i32 %20, i64 %21, i32 %22)
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 (i8*, i8*, i64, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %26, i64 %27, i32 %29)
  br label %49

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = call i64 @write(i32 %32, i8* %33, i64 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = call i32 (i8*, i8*, i64, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %43, i64 %46)
  br label %49

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %42, %25
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
