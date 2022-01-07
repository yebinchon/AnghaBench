; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_memweight.c_memweight.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_memweight.c_memweight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memweight(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i8*, i8** %7, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = urem i64 %14, 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @hweight8(i8 zeroext %21)
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  br label %9

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = udiv i64 %31, 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @INT_MAX, align 8
  %38 = load i64, i64* @BITS_PER_LONG, align 8
  %39 = udiv i64 %37, %38
  %40 = icmp uge i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @BITS_PER_LONG, align 8
  %47 = mul i64 %45, %46
  %48 = call i64 @bitmap_weight(i64* %44, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 %51, 8
  %53 = load i64, i64* %4, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = mul i64 %55, 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %35, %30
  br label %60

60:                                               ; preds = %69, %59
  %61 = load i64, i64* %4, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @hweight8(i8 zeroext %65)
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %4, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %60

74:                                               ; preds = %60
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @hweight8(i8 zeroext) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bitmap_weight(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
