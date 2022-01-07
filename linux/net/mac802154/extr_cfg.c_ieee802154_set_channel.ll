; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_cfg.c_ieee802154_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { i8*, i8* }
%struct.ieee802154_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpan_phy*, i8*, i8*)* @ieee802154_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_set_channel(%struct.wpan_phy* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpan_phy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee802154_local*, align 8
  %9 = alloca i32, align 4
  store %struct.wpan_phy* %0, %struct.wpan_phy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.wpan_phy*, %struct.wpan_phy** %5, align 8
  %11 = call %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy* %10)
  store %struct.ieee802154_local* %11, %struct.ieee802154_local** %8, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.wpan_phy*, %struct.wpan_phy** %5, align 8
  %14 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.wpan_phy*, %struct.wpan_phy** %5, align 8
  %20 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %18, %3
  %26 = load %struct.ieee802154_local*, %struct.ieee802154_local** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @drv_set_channel(%struct.ieee802154_local* %26, i8* %27, i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.wpan_phy*, %struct.wpan_phy** %5, align 8
  %35 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.wpan_phy*, %struct.wpan_phy** %5, align 8
  %38 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @drv_set_channel(%struct.ieee802154_local*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
