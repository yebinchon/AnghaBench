; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_register_vlan_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_register_vlan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i64, i32*, i32 }
%struct.vlan_dev_priv = type { i32, i32*, %struct.net_device*, i64, i32 }
%struct.net = type { i32 }
%struct.vlan_net = type { i32 }

@vlan_net_id = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.%.4i\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vlan%i\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%i\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vlan%.4i\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@vlan_setup = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@vlan_link_ops = common dso_local global i32 0, align 4
@NETREG_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @register_vlan_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_vlan_device(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vlan_dev_priv*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.vlan_net*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.net* @dev_net(%struct.net_device* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load i32, i32* @vlan_net_id, align 4
  %18 = call %struct.vlan_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.vlan_net* %18, %struct.vlan_net** %9, align 8
  %19 = load i32, i32* @IFNAMSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @VLAN_VID_MASK, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load i32, i32* @ETH_P_8021Q, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @vlan_check_real_dev(%struct.net_device* %30, i32 %32, i64 %33, i32* null)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

39:                                               ; preds = %29
  %40 = load %struct.vlan_net*, %struct.vlan_net** %9, align 8
  %41 = getelementptr inbounds %struct.vlan_net, %struct.vlan_net* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %64 [
    i32 129, label %43
    i32 130, label %51
    i32 128, label %55
    i32 131, label %63
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @IFNAMSIZ, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load i64, i64* %5, align 8
  %50 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %22, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %49)
  br label %68

51:                                               ; preds = %39
  %52 = load i32, i32* @IFNAMSIZ, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %22, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %68

55:                                               ; preds = %39
  %56 = load i32, i32* @IFNAMSIZ, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %22, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %61)
  br label %68

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %39, %63
  %65 = load i32, i32* @IFNAMSIZ, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %22, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %55, %51, %43
  %69 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %70 = load i32, i32* @vlan_setup, align 4
  %71 = call %struct.net_device* @alloc_netdev(i32 40, i8* %22, i32 %69, i32 %70)
  store %struct.net_device* %71, %struct.net_device** %6, align 8
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = icmp eq %struct.net_device* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

77:                                               ; preds = %68
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = call i32 @dev_net_set(%struct.net_device* %78, %struct.net* %79)
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %86)
  store %struct.vlan_dev_priv* %87, %struct.vlan_dev_priv** %7, align 8
  %88 = load i32, i32* @ETH_P_8021Q, align 4
  %89 = call i32 @htons(i32 %88)
  %90 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %7, align 8
  %91 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %7, align 8
  %94 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %7, align 8
  %97 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %96, i32 0, i32 2
  store %struct.net_device* %95, %struct.net_device** %97, align 8
  %98 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %7, align 8
  %99 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %101 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %7, align 8
  %102 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 2
  store i32* @vlan_link_ops, i32** %104, align 8
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i32 @register_vlan_dev(%struct.net_device* %105, i32* null)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %77
  br label %111

110:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

111:                                              ; preds = %109
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NETREG_UNINITIALIZED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = call i32 @free_netdev(%struct.net_device* %118)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

122:                                              ; preds = %120, %110, %74, %37, %26
  %123 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.vlan_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vlan_check_real_dev(%struct.net_device*, i32, i64, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @register_vlan_dev(%struct.net_device*, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
