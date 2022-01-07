; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_find_vendor_elem.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_find_vendor_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @cfg80211_find_vendor_elem(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.element*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 16
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 8
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i64 3, i64 16
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 255
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store %struct.element* null, %struct.element** %5, align 8
  br label %51

34:                                               ; preds = %4
  %35 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.element* @cfg80211_find_elem_match(i32 %35, i32* %36, i32 %37, i32* %38, i32 %39, i32 0)
  store %struct.element* %40, %struct.element** %10, align 8
  %41 = load %struct.element*, %struct.element** %10, align 8
  %42 = icmp ne %struct.element* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.element*, %struct.element** %10, align 8
  %45 = getelementptr inbounds %struct.element, %struct.element* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %34
  store %struct.element* null, %struct.element** %5, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load %struct.element*, %struct.element** %10, align 8
  store %struct.element* %50, %struct.element** %5, align 8
  br label %51

51:                                               ; preds = %49, %48, %33
  %52 = load %struct.element*, %struct.element** %5, align 8
  ret %struct.element* %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.element* @cfg80211_find_elem_match(i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
