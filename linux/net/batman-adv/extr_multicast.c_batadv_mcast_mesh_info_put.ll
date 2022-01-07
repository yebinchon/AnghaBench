; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mesh_info_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mesh_info_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_MCAST_FLAGS_BRIDGED = common dso_local global i32 0, align 4
@BATADV_MCAST_FLAGS_QUERIER_IPV4_EXISTS = common dso_local global i32 0, align 4
@BATADV_MCAST_FLAGS_QUERIER_IPV6_EXISTS = common dso_local global i32 0, align 4
@BATADV_MCAST_FLAGS_QUERIER_IPV4_SHADOWING = common dso_local global i32 0, align 4
@BATADV_MCAST_FLAGS_QUERIER_IPV6_SHADOWING = common dso_local global i32 0, align 4
@BATADV_ATTR_MCAST_FLAGS = common dso_local global i32 0, align 4
@BATADV_ATTR_MCAST_FLAGS_PRIV = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_mcast_mesh_info_put(%struct.sk_buff* %0, %struct.batadv_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.batadv_priv* %1, %struct.batadv_priv** %5, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @BATADV_NO_FLAGS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %15 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %2
  %21 = load i32, i32* @BATADV_MCAST_FLAGS_BRIDGED, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %25 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @BATADV_MCAST_FLAGS_QUERIER_IPV4_EXISTS, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %37 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @BATADV_MCAST_FLAGS_QUERIER_IPV6_EXISTS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %49 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @BATADV_MCAST_FLAGS_QUERIER_IPV4_SHADOWING, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %61 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @BATADV_MCAST_FLAGS_QUERIER_IPV6_SHADOWING, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %59
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @BATADV_ATTR_MCAST_FLAGS, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i32, i32* @BATADV_ATTR_MCAST_FLAGS_PRIV, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %72
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
