; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_bandwidth_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_bandwidth_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"Changing gateway bandwidth from: '%u.%u/%u.%u MBit' to: '%u.%u/%u.%u MBit'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @batadv_gw_bandwidth_set(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.batadv_priv* %15, %struct.batadv_priv** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i64 @atomic_read(i32* %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %22 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @batadv_parse_gw_bandwidth(%struct.net_device* %26, i8* %27, i32* %11, i32* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %4, align 8
  br label %92

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = sdiv i32 %42, 5
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  br label %92

58:                                               ; preds = %52, %48
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %60 = call i32 @batadv_gw_reselect(%struct.batadv_priv* %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 10
  %64 = load i32, i32* %9, align 4
  %65 = srem i32 %64, 10
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 10
  %68 = load i32, i32* %10, align 4
  %69 = srem i32 %68, 10
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 10
  %72 = load i32, i32* %11, align 4
  %73 = srem i32 %72, 10
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %74, 10
  %76 = load i32, i32* %12, align 4
  %77 = srem i32 %76, 10
  %78 = call i32 @batadv_info(%struct.net_device* %61, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  %79 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %80 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @atomic_set(i32* %81, i32 %82)
  %84 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %85 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @atomic_set(i32* %86, i32 %87)
  %89 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %90 = call i32 @batadv_gw_tvlv_container_update(%struct.batadv_priv* %89)
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %58, %56, %31
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @batadv_parse_gw_bandwidth(%struct.net_device*, i8*, i32*, i32*) #1

declare dso_local i32 @batadv_gw_reselect(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_info(%struct.net_device*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @batadv_gw_tvlv_container_update(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
