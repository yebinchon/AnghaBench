; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string.c_strncasecmp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string.c_strncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strncasecmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %8, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* %8, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i8, i8* %9, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %14
  br label %50

27:                                               ; preds = %23
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %46

34:                                               ; preds = %27
  %35 = load i8, i8* %8, align 1
  %36 = call zeroext i8 @tolower(i8 zeroext %35)
  store i8 %36, i8* %8, align 1
  %37 = load i8, i8* %9, align 1
  %38 = call zeroext i8 @tolower(i8 zeroext %37)
  store i8 %38, i8* %9, align 1
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %50

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %14, label %50

50:                                               ; preds = %46, %44, %26
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
