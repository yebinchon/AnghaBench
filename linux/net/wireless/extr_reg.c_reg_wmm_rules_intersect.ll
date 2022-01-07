; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_wmm_rules_intersect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_wmm_rules_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_wmm_ac = type { i8*, i32, i8*, i8* }

@u16 = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac*)* @reg_wmm_rules_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_wmm_rules_intersect(%struct.ieee80211_wmm_ac* %0, %struct.ieee80211_wmm_ac* %1, %struct.ieee80211_wmm_ac* %2) #0 {
  %4 = alloca %struct.ieee80211_wmm_ac*, align 8
  %5 = alloca %struct.ieee80211_wmm_ac*, align 8
  %6 = alloca %struct.ieee80211_wmm_ac*, align 8
  store %struct.ieee80211_wmm_ac* %0, %struct.ieee80211_wmm_ac** %4, align 8
  store %struct.ieee80211_wmm_ac* %1, %struct.ieee80211_wmm_ac** %5, align 8
  store %struct.ieee80211_wmm_ac* %2, %struct.ieee80211_wmm_ac** %6, align 8
  %7 = load i32, i32* @u16, align 4
  %8 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @max_t(i32 %7, i8* %10, i8* %13)
  %15 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @u16, align 4
  %18 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @max_t(i32 %17, i8* %20, i8* %23)
  %25 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @u16, align 4
  %28 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @min_t(i32 %27, i32 %30, i32 %33)
  %35 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @u8, align 4
  %38 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @max_t(i32 %37, i8* %40, i8* %43)
  %45 = load %struct.ieee80211_wmm_ac*, %struct.ieee80211_wmm_ac** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_wmm_ac, %struct.ieee80211_wmm_ac* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  ret void
}

declare dso_local i8* @max_t(i32, i8*, i8*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
