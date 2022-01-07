; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_hash.h___sel_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_hash.h___sel_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_selector*, i16, i32, i32, i32)* @__sel_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sel_hash(%struct.xfrm_selector* %0, i16 zeroext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_selector*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %7, align 8
  store i16 %1, i16* %8, align 2
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %15, i32 0, i32 3
  store i32* %16, i32** %12, align 8
  %17 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %18 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %17, i32 0, i32 2
  store i32* %18, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i32
  switch i32 %20, label %63 [
    i32 129, label %21
    i32 128, label %42
  ]

21:                                               ; preds = %5
  %22 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %23 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %29 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %71

36:                                               ; preds = %27
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @__xfrm4_dpref_spref_hash(i32* %37, i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  br label %63

42:                                               ; preds = %5
  %43 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %44 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.xfrm_selector*, %struct.xfrm_selector** %7, align 8
  %50 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %71

57:                                               ; preds = %48
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @__xfrm6_dpref_spref_hash(i32* %58, i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %5, %57, %36
  %64 = load i32, i32* %14, align 4
  %65 = lshr i32 %64, 16
  %66 = load i32, i32* %14, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %63, %54, %33
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @__xfrm4_dpref_spref_hash(i32*, i32*, i32, i32) #1

declare dso_local i32 @__xfrm6_dpref_spref_hash(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
