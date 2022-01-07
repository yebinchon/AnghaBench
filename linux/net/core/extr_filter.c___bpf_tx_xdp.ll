; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_tx_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_tx_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* }
%struct.xdp_frame = type { i32 }
%struct.bpf_map = type { i32 }
%struct.xdp_buff = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_map*, %struct.xdp_buff*, i32)* @__bpf_tx_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_tx_xdp(%struct.net_device* %0, %struct.bpf_map* %1, %struct.xdp_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdp_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %7, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %25 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @xdp_ok_fwd_dev(%struct.net_device* %23, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %63

37:                                               ; preds = %22
  %38 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %39 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %38)
  store %struct.xdp_frame* %39, %struct.xdp_frame** %10, align 8
  %40 = load %struct.xdp_frame*, %struct.xdp_frame** %10, align 8
  %41 = icmp ne %struct.xdp_frame* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EOVERFLOW, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %37
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %57 = call i32 %54(%struct.net_device* %55, i32 1, %struct.xdp_frame** %10, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %60, %46, %35, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @xdp_ok_fwd_dev(%struct.net_device*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
