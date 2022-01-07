; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_alloc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_alloc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i8*, %struct.wpan_phy* }
%struct.wpan_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ieee802154_ops = type { i32, i32, i32, i32, i64, i64 }
%struct.ieee802154_local = type { %struct.ieee802154_hw, i32, i32, i32, i32, i32, %struct.ieee802154_ops*, %struct.wpan_phy* }

@NETDEV_ALIGN = common dso_local global i32 0, align 4
@mac802154_config_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failure to allocate master IEEE802.15.4 device\0A\00", align 1
@mac802154_wpan_phy_privid = common dso_local global i32 0, align 4
@ieee802154_tasklet_handler = common dso_local global i32 0, align 4
@ieee802154_xmit_worker = common dso_local global i32 0, align 4
@NL802154_SUPPORTED_BOOL_FALSE = common dso_local global i32 0, align 4
@NL802154_IFTYPE_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i64 %0, %struct.ieee802154_ops* %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee802154_ops*, align 8
  %6 = alloca %struct.wpan_phy*, align 8
  %7 = alloca %struct.ieee802154_local*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ieee802154_ops* %1, %struct.ieee802154_ops** %5, align 8
  %9 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %10 = icmp ne %struct.ieee802154_ops* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %13 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %18 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16, %11
  %22 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %23 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %33 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %38 = getelementptr inbounds %struct.ieee802154_ops, %struct.ieee802154_ops* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31, %26, %21, %16, %2
  %43 = phi i1 [ true, %31 ], [ true, %26 ], [ true, %21 ], [ true, %16 ], [ true, %2 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store %struct.ieee802154_hw* null, %struct.ieee802154_hw** %3, align 8
  br label %133

48:                                               ; preds = %42
  %49 = load i32, i32* @NETDEV_ALIGN, align 4
  %50 = call i64 @ALIGN(i32 56, i32 %49)
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.wpan_phy* @wpan_phy_new(i32* @mac802154_config_ops, i64 %53)
  store %struct.wpan_phy* %54, %struct.wpan_phy** %6, align 8
  %55 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %56 = icmp ne %struct.wpan_phy* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store %struct.ieee802154_hw* null, %struct.ieee802154_hw** %3, align 8
  br label %133

59:                                               ; preds = %48
  %60 = load i32, i32* @mac802154_wpan_phy_privid, align 4
  %61 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %62 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %64 = call %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy* %63)
  store %struct.ieee802154_local* %64, %struct.ieee802154_local** %7, align 8
  %65 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %66 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %67 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %66, i32 0, i32 7
  store %struct.wpan_phy* %65, %struct.wpan_phy** %67, align 8
  %68 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %69 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %68, i32 0, i32 7
  %70 = load %struct.wpan_phy*, %struct.wpan_phy** %69, align 8
  %71 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %72 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %72, i32 0, i32 1
  store %struct.wpan_phy* %70, %struct.wpan_phy** %73, align 8
  %74 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %75 = bitcast %struct.ieee802154_local* %74 to i8*
  %76 = load i32, i32* @NETDEV_ALIGN, align 4
  %77 = call i64 @ALIGN(i32 56, i32 %76)
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %80 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.ieee802154_ops*, %struct.ieee802154_ops** %5, align 8
  %83 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %84 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %83, i32 0, i32 6
  store %struct.ieee802154_ops* %82, %struct.ieee802154_ops** %84, align 8
  %85 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %86 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %85, i32 0, i32 5
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %89 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %88, i32 0, i32 4
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %92 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %91, i32 0, i32 3
  %93 = load i32, i32* @ieee802154_tasklet_handler, align 4
  %94 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %95 = ptrtoint %struct.ieee802154_local* %94 to i64
  %96 = call i32 @tasklet_init(i32* %92, i32 %93, i64 %95)
  %97 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %98 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %97, i32 0, i32 2
  %99 = call i32 @skb_queue_head_init(i32* %98)
  %100 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %101 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %100, i32 0, i32 1
  %102 = load i32, i32* @ieee802154_xmit_worker, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %105 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 8, i32* %106, align 8
  %107 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %108 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 3, i32* %109, align 4
  %110 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %111 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i32 8, i32* %112, align 8
  %113 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %114 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %117 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i32 7, i32* %118, align 4
  %119 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %120 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  store i32 5, i32* %121, align 8
  %122 = load i32, i32* @NL802154_SUPPORTED_BOOL_FALSE, align 4
  %123 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %124 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 6
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @NL802154_IFTYPE_NODE, align 4
  %127 = call i32 @BIT(i32 %126)
  %128 = load %struct.wpan_phy*, %struct.wpan_phy** %6, align 8
  %129 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %132 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %131, i32 0, i32 0
  store %struct.ieee802154_hw* %132, %struct.ieee802154_hw** %3, align 8
  br label %133

133:                                              ; preds = %59, %57, %47
  %134 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  ret %struct.ieee802154_hw* %134
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local %struct.wpan_phy* @wpan_phy_new(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.ieee802154_local* @wpan_phy_priv(%struct.wpan_phy*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
