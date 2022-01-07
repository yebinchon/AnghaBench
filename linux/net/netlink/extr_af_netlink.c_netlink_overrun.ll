; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_overrun.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c_netlink_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.netlink_sock = type { i32, i32 }

@NETLINK_F_RECV_NO_ENOBUFS = common dso_local global i32 0, align 4
@NETLINK_S_CONGESTED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @netlink_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlink_overrun(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %4)
  store %struct.netlink_sock* %5, %struct.netlink_sock** %3, align 8
  %6 = load %struct.netlink_sock*, %struct.netlink_sock** %3, align 8
  %7 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NETLINK_F_RECV_NO_ENOBUFS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @NETLINK_S_CONGESTED, align 4
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %15, i32 0, i32 1
  %17 = call i32 @test_and_set_bit(i32 %13, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOBUFS, align 4
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  %25 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call i32 %25(%struct.sock* %26)
  br label %28

28:                                               ; preds = %19, %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  ret void
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
