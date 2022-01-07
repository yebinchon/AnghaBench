; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_adjust_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_adjust_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_tunnel = type { i64, i32 }
%struct.l2tp_session = type { i64 }
%struct.net_device = type { i32, i64, i64, i64 }

@L2TP_ENCAPTYPE_UDP = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_tunnel*, %struct.l2tp_session*, %struct.net_device*)* @l2tp_eth_adjust_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_eth_adjust_mtu(%struct.l2tp_tunnel* %0, %struct.l2tp_session* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.l2tp_tunnel*, align 8
  %5 = alloca %struct.l2tp_session*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.l2tp_tunnel* %0, %struct.l2tp_tunnel** %4, align 8
  store %struct.l2tp_session* %1, %struct.l2tp_session** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %11 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @L2TP_ENCAPTYPE_UDP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  br label %26

26:                                               ; preds = %15, %3
  %27 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %28 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lock_sock(i32 %29)
  %31 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %32 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @kernel_sock_ip_overhead(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %36 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @release_sock(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %91

42:                                               ; preds = %26
  %43 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %44 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETH_HLEN, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %4, align 8
  %55 = call i64 @l2tp_tunnel_dst_mtu(%struct.l2tp_tunnel* %54)
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %42
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64, %42
  %71 = load i64, i64* @ETH_DATA_LEN, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %81

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.l2tp_session*, %struct.l2tp_session** %5, align 8
  %83 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  br label %91

91:                                               ; preds = %81, %41
  ret void
}

declare dso_local i32 @lock_sock(i32) #1

declare dso_local i64 @kernel_sock_ip_overhead(i32) #1

declare dso_local i32 @release_sock(i32) #1

declare dso_local i64 @l2tp_tunnel_dst_mtu(%struct.l2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
