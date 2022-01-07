; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm4_selector_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm4_selector_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi4 }
%struct.flowi4 = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_selector*, %struct.flowi*)* @__xfrm4_selector_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm4_selector_match(%struct.xfrm_selector* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.xfrm_selector*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.flowi4*, align 8
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %6 = load %struct.flowi*, %struct.flowi** %4, align 8
  %7 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.flowi4* %8, %struct.flowi4** %5, align 8
  %9 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %10 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @addr4_match(i32 %11, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %91

21:                                               ; preds = %2
  %22 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %26 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @addr4_match(i32 %24, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %91

34:                                               ; preds = %21
  %35 = load %struct.flowi*, %struct.flowi** %4, align 8
  %36 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %37 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %36, i32 0, i32 2
  %38 = call i32 @xfrm_flowi_dport(%struct.flowi* %35, i32* %37)
  %39 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %38, %41
  %43 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %91, label %48

48:                                               ; preds = %34
  %49 = load %struct.flowi*, %struct.flowi** %4, align 8
  %50 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %51 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %50, i32 0, i32 2
  %52 = call i32 @xfrm_flowi_sport(%struct.flowi* %49, i32* %51)
  %53 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %54 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = xor i32 %52, %55
  %57 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %58 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %48
  %63 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %64 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %72 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %77 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %85 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %75
  %90 = phi i1 [ true, %75 ], [ %88, %83 ]
  br label %91

91:                                               ; preds = %89, %70, %48, %34, %21, %2
  %92 = phi i1 [ false, %70 ], [ false, %48 ], [ false, %34 ], [ false, %21 ], [ false, %2 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  ret i32 %93
}

declare dso_local i64 @addr4_match(i32, i32, i32) #1

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*, i32*) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
