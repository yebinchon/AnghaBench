; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_register_hw.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_main.c_ieee802154_register_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i32 }
%struct.ieee802154_local = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.net_device = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@ieee802154_xmit_ifs_timer = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@IEEE802154_HW_FRAME_RETRIES = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@NL802154_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wpan%d\00", align 1
@NET_NAME_ENUM = common dso_local global i32 0, align 4
@NL802154_IFTYPE_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca %struct.ieee802154_local*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  %7 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %8 = call %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw* %7)
  store %struct.ieee802154_local* %8, %struct.ieee802154_local** %4, align 8
  %9 = load i32, i32* @ENOSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i32 @wpan_phy_name(%struct.TYPE_11__* %13)
  %15 = call i32 @create_singlethread_workqueue(i32 %14)
  %16 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %17 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %19 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %153

25:                                               ; preds = %1
  %26 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %27 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %26, i32 0, i32 3
  %28 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %29 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %30 = call i32 @hrtimer_init(%struct.TYPE_12__* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @ieee802154_xmit_ifs_timer, align 4
  %32 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %33 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %36 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %39 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpan_phy_set_dev(%struct.TYPE_11__* %37, i32 %41)
  %43 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %44 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = call i32 @ieee802154_setup_wpan_phy_pib(%struct.TYPE_11__* %45)
  %47 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %25
  %54 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %55 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 4
  %59 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %60 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 4, i32* %63, align 4
  %64 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %65 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i32 5, i32* %68, align 4
  %69 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %70 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 5, i32* %73, align 4
  %74 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %75 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  store i32 3, i32* %78, align 4
  %79 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %80 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  store i32 3, i32* %83, align 4
  br label %84

84:                                               ; preds = %53, %25
  %85 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %86 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IEEE802154_HW_FRAME_RETRIES, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %84
  %92 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  store i32 3, i32* %96, align 4
  %97 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %98 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 7
  store i32 3, i32* %101, align 4
  br label %102

102:                                              ; preds = %91, %84
  %103 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load i32, i32* @NL802154_IFTYPE_MONITOR, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %113 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %112, i32 0, i32 1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %111
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %109, %102
  %120 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %121 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = call i32 @wpan_phy_register(%struct.TYPE_11__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %148

127:                                              ; preds = %119
  %128 = call i32 (...) @rtnl_lock()
  %129 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %130 = load i32, i32* @NET_NAME_ENUM, align 4
  %131 = load i32, i32* @NL802154_IFTYPE_NODE, align 4
  %132 = call i32 @cpu_to_le64(i32 0)
  %133 = call %struct.net_device* @ieee802154_if_add(%struct.ieee802154_local* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  store %struct.net_device* %133, %struct.net_device** %5, align 8
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = call i64 @IS_ERR(%struct.net_device* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = call i32 (...) @rtnl_unlock()
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = call i32 @PTR_ERR(%struct.net_device* %139)
  store i32 %140, i32* %6, align 4
  br label %143

141:                                              ; preds = %127
  %142 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %155

143:                                              ; preds = %137
  %144 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %145 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %144, i32 0, i32 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = call i32 @wpan_phy_unregister(%struct.TYPE_11__* %146)
  br label %148

148:                                              ; preds = %143, %126
  %149 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %150 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @destroy_workqueue(i32 %151)
  br label %153

153:                                              ; preds = %148, %22
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %141
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.ieee802154_local* @hw_to_local(%struct.ieee802154_hw*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @wpan_phy_name(%struct.TYPE_11__*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @wpan_phy_set_dev(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ieee802154_setup_wpan_phy_pib(%struct.TYPE_11__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wpan_phy_register(%struct.TYPE_11__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @ieee802154_if_add(%struct.ieee802154_local*, i8*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @wpan_phy_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
