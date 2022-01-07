; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_merge_profile.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_merge_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cfg80211_merge_profile(i32* %0, i64 %1, %struct.element* %2, %struct.element* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.element*, align 8
  %11 = alloca %struct.element*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.element*, align 8
  %16 = alloca %struct.element*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.element* %2, %struct.element** %10, align 8
  store %struct.element* %3, %struct.element** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.element*, %struct.element** %11, align 8
  %18 = getelementptr inbounds %struct.element, %struct.element* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  %20 = load %struct.element*, %struct.element** %11, align 8
  %21 = getelementptr inbounds %struct.element, %struct.element* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %75

26:                                               ; preds = %6
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.element*, %struct.element** %11, align 8
  %29 = getelementptr inbounds %struct.element, %struct.element* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.element*, %struct.element** %11, align 8
  %32 = getelementptr inbounds %struct.element, %struct.element* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memcpy(i32* %27, i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %57, %26
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.element*, %struct.element** %10, align 8
  %39 = load %struct.element*, %struct.element** %11, align 8
  %40 = call %struct.element* @cfg80211_get_profile_continuation(i32* %36, i64 %37, %struct.element* %38, %struct.element* %39)
  store %struct.element* %40, %struct.element** %15, align 8
  %41 = icmp ne %struct.element* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load %struct.element*, %struct.element** %15, align 8
  %44 = getelementptr inbounds %struct.element, %struct.element* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.element*
  store %struct.element* %48, %struct.element** %16, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.element*, %struct.element** %16, align 8
  %51 = getelementptr inbounds %struct.element, %struct.element* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %73

57:                                               ; preds = %42
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load %struct.element*, %struct.element** %16, align 8
  %62 = getelementptr inbounds %struct.element, %struct.element* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.element*, %struct.element** %16, align 8
  %65 = getelementptr inbounds %struct.element, %struct.element* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i32* %60, i32* %63, i64 %66)
  %68 = load %struct.element*, %struct.element** %16, align 8
  %69 = getelementptr inbounds %struct.element, %struct.element* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %14, align 8
  br label %35

73:                                               ; preds = %56, %35
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %25
  %76 = load i64, i64* %7, align 8
  ret i64 %76
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local %struct.element* @cfg80211_get_profile_continuation(i32*, i64, %struct.element*, %struct.element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
