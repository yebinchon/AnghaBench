; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_alloc_zero_tailing_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_alloc_zero_tailing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32)* @alloc_zero_tailing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_zero_tailing_info(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %54

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %49, %22
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @memset(i8* %36, i32 0, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr i8, i8* %42, i64 %43
  store i8* %44, i8** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %24

52:                                               ; preds = %24
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
