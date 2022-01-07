; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm6_selector_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm6_selector_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowi6 }
%struct.flowi6 = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_selector*, %struct.flowi*)* @__xfrm6_selector_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm6_selector_match(%struct.xfrm_selector* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.xfrm_selector*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.flowi6*, align 8
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %6 = load %struct.flowi*, %struct.flowi** %4, align 8
  %7 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.flowi6* %8, %struct.flowi6** %5, align 8
  %9 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %10 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 4
  %11 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 9
  %13 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @addr_match(i32* %10, i32* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %2
  %19 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 3
  %21 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %21, i32 0, i32 7
  %23 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @addr_match(i32* %20, i32* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %18
  %29 = load %struct.flowi*, %struct.flowi** %4, align 8
  %30 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 2
  %32 = call i32 @xfrm_flowi_dport(%struct.flowi* %29, i32* %31)
  %33 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %34 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %32, %35
  %37 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %28
  %43 = load %struct.flowi*, %struct.flowi** %4, align 8
  %44 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %45 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %44, i32 0, i32 2
  %46 = call i32 @xfrm_flowi_sport(%struct.flowi* %43, i32* %45)
  %47 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %48 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = xor i32 %46, %49
  %51 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %52 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %42
  %57 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %58 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %61 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %66 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %64, %56
  %70 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %71 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %74 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %79 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %77, %69
  %84 = phi i1 [ true, %69 ], [ %82, %77 ]
  br label %85

85:                                               ; preds = %83, %64, %42, %28, %18, %2
  %86 = phi i1 [ false, %64 ], [ false, %42 ], [ false, %28 ], [ false, %18 ], [ false, %2 ], [ %84, %83 ]
  %87 = zext i1 %86 to i32
  ret i32 %87
}

declare dso_local i64 @addr_match(i32*, i32*, i32) #1

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*, i32*) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
