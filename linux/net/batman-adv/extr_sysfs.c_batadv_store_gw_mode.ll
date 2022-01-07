; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_gw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@BATADV_GW_MODE_OFF_NAME = common dso_local global i8* null, align 8
@BATADV_GW_MODE_OFF = common dso_local global i32 0, align 4
@BATADV_GW_MODE_CLIENT_NAME = common dso_local global i8* null, align 8
@BATADV_GW_MODE_SERVER_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Invalid parameter for 'gw mode' setting received: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Changing gw mode from: %s to: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @batadv_store_gw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @batadv_store_gw_mode(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.batadv_priv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.kobject*, %struct.kobject** %6, align 8
  %15 = call %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject* %14)
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.batadv_priv* %17, %struct.batadv_priv** %11, align 8
  store i32 -1, i32* %13, align 4
  %18 = load %struct.attribute*, %struct.attribute** %7, align 8
  %19 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %18)
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %21 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %29 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27, %4
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %124

38:                                               ; preds = %27
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** @BATADV_GW_MODE_OFF_NAME, align 8
  %54 = load i8*, i8** @BATADV_GW_MODE_OFF_NAME, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i64 @strncmp(i8* %52, i8* %53, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @BATADV_GW_MODE_OFF, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** @BATADV_GW_MODE_CLIENT_NAME, align 8
  %63 = load i8*, i8** @BATADV_GW_MODE_CLIENT_NAME, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i64 @strncmp(i8* %61, i8* %62, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 129, i32* %13, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** @BATADV_GW_MODE_SERVER_NAME, align 8
  %71 = load i8*, i8** @BATADV_GW_MODE_SERVER_NAME, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = call i64 @strncmp(i8* %69, i8* %70, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 128, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.net_device*, %struct.net_device** %10, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (%struct.net_device*, i8*, i8*, ...) @batadv_info(%struct.net_device* %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub i64 0, %83
  store i64 %84, i64* %5, align 8
  br label %124

85:                                               ; preds = %76
  %86 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %87 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @atomic_read(i32* %88)
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %5, align 8
  br label %124

94:                                               ; preds = %85
  %95 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %96 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @atomic_read(i32* %97)
  switch i32 %98, label %103 [
    i32 129, label %99
    i32 128, label %101
  ]

99:                                               ; preds = %94
  %100 = load i8*, i8** @BATADV_GW_MODE_CLIENT_NAME, align 8
  store i8* %100, i8** %12, align 8
  br label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** @BATADV_GW_MODE_SERVER_NAME, align 8
  store i8* %102, i8** %12, align 8
  br label %105

103:                                              ; preds = %94
  %104 = load i8*, i8** @BATADV_GW_MODE_OFF_NAME, align 8
  store i8* %104, i8** %12, align 8
  br label %105

105:                                              ; preds = %103, %101, %99
  %106 = load %struct.net_device*, %struct.net_device** %10, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 (%struct.net_device*, i8*, i8*, ...) @batadv_info(%struct.net_device* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %111 = call i32 @batadv_gw_reselect(%struct.batadv_priv* %110)
  %112 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %113 = call i32 @batadv_gw_check_client_stop(%struct.batadv_priv* %112)
  %114 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %115 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @atomic_set(i32* %116, i32 %117)
  %119 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %120 = call i32 @batadv_gw_tvlv_container_update(%struct.batadv_priv* %119)
  %121 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %122 = call i32 @batadv_netlink_notify_mesh(%struct.batadv_priv* %121)
  %123 = load i64, i64* %9, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %105, %92, %79, %35
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @batadv_info(%struct.net_device*, i8*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @batadv_gw_reselect(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_gw_check_client_stop(%struct.batadv_priv*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @batadv_gw_tvlv_container_update(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_netlink_notify_mesh(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
