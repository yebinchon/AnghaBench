; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_getnum.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@KSTRTOX_OVERFLOW = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @bitmap_getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bitmap_getnum(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @_parse_integer(i8* %8, i32 10, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %3, align 8
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @KSTRTOX_OVERFLOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = zext i32 %24 to i64
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %16
  %28 = load i32, i32* @EOVERFLOW, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %3, align 8
  br label %39

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %31, %27, %12
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @_parse_integer(i8*, i32, i64*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
