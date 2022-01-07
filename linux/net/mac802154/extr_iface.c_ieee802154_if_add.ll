; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_if_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_6__*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee802154_local = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee802154_sub_if_data = type { i32, %struct.ieee802154_local*, %struct.TYPE_6__, %struct.net_device*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ieee802154_if_setup = common dso_local global i32 0, align 4
@IEEE802154_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@ARPHRD_IEEE802154 = common dso_local global i32 0, align 4
@IEEE802154_EXTENDED_ADDR_LEN = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @ieee802154_if_add(%struct.ieee802154_local* %0, i8* %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_local*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ieee802154_sub_if_data*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store %struct.ieee802154_sub_if_data* null, %struct.ieee802154_sub_if_data** %13, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %9, align 1
  %20 = load i32, i32* @ieee802154_if_setup, align 4
  %21 = call %struct.net_device* @alloc_netdev(i32 40, i8* %18, i8 zeroext %19, i32 %20)
  store %struct.net_device* %21, %struct.net_device** %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %12, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.net_device* @ERR_PTR(i32 %26)
  store %struct.net_device* %27, %struct.net_device** %6, align 8
  br label %156

28:                                               ; preds = %5
  %29 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %30 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE802154_MAX_HEADER_LEN, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.net_device*, %struct.net_device** %12, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 5
  store i64 %34, i64* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = load %struct.net_device*, %struct.net_device** %12, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_alloc_name(%struct.net_device* %37, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %151

45:                                               ; preds = %28
  %46 = load %struct.net_device*, %struct.net_device** %12, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %50 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @ieee802154_le64_to_be64(i32 %48, i32* %53)
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %82 [
    i32 128, label %56
    i32 129, label %78
  ]

56:                                               ; preds = %45
  %57 = load i32, i32* @ARPHRD_IEEE802154, align 4
  %58 = load %struct.net_device*, %struct.net_device** %12, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ieee802154_is_valid_extended_unicast_addr(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %12, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ieee802154_le64_to_be64(i32 %66, i32* %11)
  br label %77

68:                                               ; preds = %56
  %69 = load %struct.net_device*, %struct.net_device** %12, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %12, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IEEE802154_EXTENDED_ADDR_LEN, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  br label %85

78:                                               ; preds = %45
  %79 = load i32, i32* @ARPHRD_IEEE802154_MONITOR, align 4
  %80 = load %struct.net_device*, %struct.net_device** %12, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %85

82:                                               ; preds = %45
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %151

85:                                               ; preds = %78, %77
  %86 = load %struct.net_device*, %struct.net_device** %12, align 8
  %87 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %88 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @SET_NETDEV_DEV(%struct.net_device* %86, i32* %90)
  %92 = load %struct.net_device*, %struct.net_device** %12, align 8
  %93 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %94 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 @wpan_phy_net(%struct.TYPE_8__* %96)
  %98 = call i32 @dev_net_set(%struct.net_device* %92, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %12, align 8
  %100 = call %struct.ieee802154_sub_if_data* @netdev_priv(%struct.net_device* %99)
  store %struct.ieee802154_sub_if_data* %100, %struct.ieee802154_sub_if_data** %13, align 8
  %101 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %102 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %101, i32 0, i32 2
  %103 = load %struct.net_device*, %struct.net_device** %12, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %104, align 8
  %105 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %106 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.net_device*, %struct.net_device** %12, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IFNAMSIZ, align 4
  %112 = call i32 @memcpy(i32 %107, i32 %110, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %12, align 8
  %114 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %115 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %114, i32 0, i32 3
  store %struct.net_device* %113, %struct.net_device** %115, align 8
  %116 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %117 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %121 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %122, align 8
  %123 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %124 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %125 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %124, i32 0, i32 1
  store %struct.ieee802154_local* %123, %struct.ieee802154_local** %125, align 8
  %126 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @ieee802154_setup_sdata(%struct.ieee802154_sub_if_data* %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %85
  br label %151

132:                                              ; preds = %85
  %133 = load %struct.net_device*, %struct.net_device** %12, align 8
  %134 = call i32 @register_netdevice(%struct.net_device* %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %151

138:                                              ; preds = %132
  %139 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %140 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %139, i32 0, i32 0
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %143 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %142, i32 0, i32 0
  %144 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %145 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %144, i32 0, i32 1
  %146 = call i32 @list_add_tail_rcu(i32* %143, i32* %145)
  %147 = load %struct.ieee802154_local*, %struct.ieee802154_local** %7, align 8
  %148 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %150, %struct.net_device** %6, align 8
  br label %156

151:                                              ; preds = %137, %131, %82, %44
  %152 = load %struct.net_device*, %struct.net_device** %12, align 8
  %153 = call i32 @free_netdev(%struct.net_device* %152)
  %154 = load i32, i32* %14, align 4
  %155 = call %struct.net_device* @ERR_PTR(i32 %154)
  store %struct.net_device* %155, %struct.net_device** %6, align 8
  br label %156

156:                                              ; preds = %151, %138, %24
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %157
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i8 zeroext, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i32 @ieee802154_le64_to_be64(i32, i32*) #1

declare dso_local i32 @ieee802154_is_valid_extended_unicast_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @wpan_phy_net(%struct.TYPE_8__*) #1

declare dso_local %struct.ieee802154_sub_if_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ieee802154_setup_sdata(%struct.ieee802154_sub_if_data*, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
