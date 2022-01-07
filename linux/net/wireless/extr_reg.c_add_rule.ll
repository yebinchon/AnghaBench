; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_add_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, i32*)* @add_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rule(%struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_reg_rule*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %15, i64 %17
  store %struct.ieee80211_reg_rule* %18, %struct.ieee80211_reg_rule** %7, align 8
  %19 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %20 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %21 = call i64 @rule_contains(%struct.ieee80211_reg_rule* %19, %struct.ieee80211_reg_rule* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %48

24:                                               ; preds = %14
  %25 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %26 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %27 = call i64 @rule_contains(%struct.ieee80211_reg_rule* %25, %struct.ieee80211_reg_rule* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %31 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %32 = call i32 @memcpy(%struct.ieee80211_reg_rule* %30, %struct.ieee80211_reg_rule* %31, i32 4)
  br label %48

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %38, i64 %41
  %43 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %44 = call i32 @memcpy(%struct.ieee80211_reg_rule* %42, %struct.ieee80211_reg_rule* %43, i32 4)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %37, %29, %23
  ret void
}

declare dso_local i64 @rule_contains(%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
