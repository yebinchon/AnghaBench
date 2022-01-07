; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_new_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_new_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.cfg802154_registered_device** }
%struct.cfg802154_registered_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NL802154_IFTYPE_UNSPEC = common dso_local global i32 0, align 4
@NL802154_ATTR_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL802154_ATTR_IFTYPE = common dso_local global i64 0, align 8
@NL802154_IFTYPE_MAX = common dso_local global i32 0, align 4
@NL802154_ATTR_EXTENDED_ADDR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl802154_new_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_new_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg802154_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.cfg802154_registered_device**, %struct.cfg802154_registered_device*** %10, align 8
  %12 = getelementptr inbounds %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %11, i64 0
  %13 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %12, align 8
  store %struct.cfg802154_registered_device* %13, %struct.cfg802154_registered_device** %6, align 8
  %14 = load i32, i32* @NL802154_IFTYPE_UNSPEC, align 4
  store i32 %14, i32* %7, align 4
  %15 = call i32 @cpu_to_le64(i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @NL802154_ATTR_IFNAME, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %2
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @NL802154_ATTR_IFTYPE, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NL802154_ATTR_IFTYPE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @nla_get_u32(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @NL802154_IFTYPE_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %34
  %46 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %47 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45, %34
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %98

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL802154_ATTR_EXTENDED_ADDR, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL802154_ATTR_EXTENDED_ADDR, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @nla_get_le64(i64 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %67, %59
  %76 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %77 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %98

85:                                               ; preds = %75
  %86 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %6, align 8
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @NL802154_ATTR_IFNAME, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @nla_data(i64 %92)
  %94 = load i32, i32* @NET_NAME_USER, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @rdev_add_virtual_intf(%struct.cfg802154_registered_device* %86, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %85, %82, %55, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nla_get_le64(i64) #1

declare dso_local i32 @rdev_add_virtual_intf(%struct.cfg802154_registered_device*, i32, i32, i32, i32) #1

declare dso_local i32 @nla_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
