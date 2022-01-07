; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"HSR: No slave devices specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFLA_HSR_SLAVE1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"HSR: Slave1 device not specified\0A\00", align 1
@IFLA_HSR_SLAVE2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"HSR: Slave2 device not specified\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IFLA_HSR_MULTICAST_SPEC = common dso_local global i64 0, align 8
@IFLA_HSR_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @hsr_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca [2 x %struct.net_device*], align 16
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %16 = icmp ne %struct.nlattr** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call i32 @netdev_info(%struct.net_device* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %112

22:                                               ; preds = %5
  %23 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %24 = load i64, i64* @IFLA_HSR_SLAVE1, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = call i32 @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %112

33:                                               ; preds = %22
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %36 = load i64, i64* @IFLA_HSR_SLAVE1, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_get_u32(%struct.nlattr* %38)
  %40 = call %struct.net_device* @__dev_get_by_index(%struct.net* %34, i32 %39)
  %41 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 0
  store %struct.net_device* %40, %struct.net_device** %41, align 16
  %42 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %43 = load i64, i64* @IFLA_HSR_SLAVE2, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = call i32 @netdev_info(%struct.net_device* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %112

52:                                               ; preds = %33
  %53 = load %struct.net*, %struct.net** %7, align 8
  %54 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %55 = load i64, i64* @IFLA_HSR_SLAVE2, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_get_u32(%struct.nlattr* %57)
  %59 = call %struct.net_device* @__dev_get_by_index(%struct.net* %53, i32 %58)
  %60 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 1
  store %struct.net_device* %59, %struct.net_device** %60, align 8
  %61 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 0
  %62 = load %struct.net_device*, %struct.net_device** %61, align 16
  %63 = icmp ne %struct.net_device* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 1
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = icmp ne %struct.net_device* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %52
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %112

71:                                               ; preds = %64
  %72 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 0
  %73 = load %struct.net_device*, %struct.net_device** %72, align 16
  %74 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 1
  %75 = load %struct.net_device*, %struct.net_device** %74, align 8
  %76 = icmp eq %struct.net_device* %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %112

80:                                               ; preds = %71
  %81 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %82 = load i64, i64* @IFLA_HSR_MULTICAST_SPEC, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i8 0, i8* %13, align 1
  br label %93

87:                                               ; preds = %80
  %88 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %89 = load i64, i64* @IFLA_HSR_MULTICAST_SPEC, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call zeroext i8 @nla_get_u8(%struct.nlattr* %91)
  store i8 %92, i8* %13, align 1
  br label %93

93:                                               ; preds = %87, %86
  %94 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %95 = load i64, i64* @IFLA_HSR_VERSION, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  store i8 0, i8* %14, align 1
  br label %106

100:                                              ; preds = %93
  %101 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %102 = load i64, i64* @IFLA_HSR_VERSION, align 8
  %103 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %101, i64 %102
  %104 = load %struct.nlattr*, %struct.nlattr** %103, align 8
  %105 = call zeroext i8 @nla_get_u8(%struct.nlattr* %104)
  store i8 %105, i8* %14, align 1
  br label %106

106:                                              ; preds = %100, %99
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = getelementptr inbounds [2 x %struct.net_device*], [2 x %struct.net_device*]* %12, i64 0, i64 0
  %109 = load i8, i8* %13, align 1
  %110 = load i8, i8* %14, align 1
  %111 = call i32 @hsr_dev_finalize(%struct.net_device* %107, %struct.net_device** %108, i8 zeroext %109, i8 zeroext %110)
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %106, %77, %68, %47, %28, %17
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local zeroext i8 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @hsr_dev_finalize(%struct.net_device*, %struct.net_device**, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
