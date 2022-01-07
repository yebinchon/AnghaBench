; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_escape_mem_ascii.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_string_escape_mem_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_escape_mem_ascii(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %47, %4
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %6, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %11, align 1
  %25 = call i32 @isprint(i8 zeroext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i8, i8* %11, align 1
  %29 = call i32 @isascii(i8 zeroext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31, %27, %20
  %40 = load i8, i8* %11, align 1
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @escape_hex(i8 zeroext %40, i8** %9, i8* %41)
  br label %47

43:                                               ; preds = %35
  %44 = load i8, i8* %11, align 1
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @escape_passthrough(i8 zeroext %44, i8** %9, i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %16

48:                                               ; preds = %16
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @escape_hex(i8 zeroext, i8**, i8*) #1

declare dso_local i32 @escape_passthrough(i8 zeroext, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
