; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_unbind_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_unbind_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i64, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@XSK_BOUND = common dso_local global i64 0, align 8
@XSK_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_sock*)* @xsk_unbind_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_unbind_dev(%struct.xdp_sock* %0) #0 {
  %2 = alloca %struct.xdp_sock*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.xdp_sock* %0, %struct.xdp_sock** %2, align 8
  %4 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %5 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %8 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XSK_BOUND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %15 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @XSK_UNBOUND, align 4
  %18 = call i32 @WRITE_ONCE(i64 %16, i32 %17)
  %19 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %20 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %23 = call i32 @xdp_del_sk_umem(i32 %21, %struct.xdp_sock* %22)
  %24 = load %struct.xdp_sock*, %struct.xdp_sock** %2, align 8
  %25 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %24, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %25, align 8
  %26 = call i32 (...) @synchronize_net()
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @dev_put(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

declare dso_local i32 @xdp_del_sk_umem(i32, %struct.xdp_sock*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
