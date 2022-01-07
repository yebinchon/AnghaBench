; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_skip_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_skip_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_EID_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @skip_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_ie(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 1
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 255
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %4, align 8
  br label %50

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WLAN_EID_FRAGMENT, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ false, %24 ], [ %34, %28 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %24

48:                                               ; preds = %35
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %21
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
