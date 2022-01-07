; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_rule_contains.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_rule_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*)* @rule_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rule_contains(%struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_reg_rule*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  %6 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %14
  store i32 0, i32* %3, align 4
  br label %68

35:                                               ; preds = %24
  %36 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45, %35
  store i32 0, i32* %3, align 4
  br label %68

56:                                               ; preds = %45
  %57 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66, %55, %34, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
