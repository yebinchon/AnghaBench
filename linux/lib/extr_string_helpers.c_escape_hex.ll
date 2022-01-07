; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_hex.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8*)* @escape_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape_hex(i8 zeroext %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  store i8 92, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  store i8 120, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = call signext i8 @hex_asc_hi(i8 zeroext %30)
  %32 = load i8*, i8** %7, align 8
  store i8 %31, i8* %32, align 1
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, i8* %4, align 1
  %41 = call signext i8 @hex_asc_lo(i8 zeroext %40)
  %42 = load i8*, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  ret i32 1
}

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
