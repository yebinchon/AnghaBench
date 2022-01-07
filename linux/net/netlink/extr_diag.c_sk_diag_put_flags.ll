; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_sk_diag_put_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_diag.c_sk_diag_put_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_sock = type { i32, i64 }

@NDIAG_FLAG_CB_RUNNING = common dso_local global i32 0, align 4
@NETLINK_F_RECV_PKTINFO = common dso_local global i32 0, align 4
@NDIAG_FLAG_PKTINFO = common dso_local global i32 0, align 4
@NETLINK_F_BROADCAST_SEND_ERROR = common dso_local global i32 0, align 4
@NDIAG_FLAG_BROADCAST_ERROR = common dso_local global i32 0, align 4
@NETLINK_F_RECV_NO_ENOBUFS = common dso_local global i32 0, align 4
@NDIAG_FLAG_NO_ENOBUFS = common dso_local global i32 0, align 4
@NETLINK_F_LISTEN_ALL_NSID = common dso_local global i32 0, align 4
@NDIAG_FLAG_LISTEN_ALL_NSID = common dso_local global i32 0, align 4
@NETLINK_F_CAP_ACK = common dso_local global i32 0, align 4
@NDIAG_FLAG_CAP_ACK = common dso_local global i32 0, align 4
@NETLINK_DIAG_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @sk_diag_put_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_put_flags(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %7)
  store %struct.netlink_sock* %8, %struct.netlink_sock** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %10 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @NDIAG_FLAG_CB_RUNNING, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %19 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NETLINK_F_RECV_PKTINFO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @NDIAG_FLAG_PKTINFO, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %30 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NETLINK_F_BROADCAST_SEND_ERROR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @NDIAG_FLAG_BROADCAST_ERROR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NETLINK_F_RECV_NO_ENOBUFS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @NDIAG_FLAG_NO_ENOBUFS, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %52 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NETLINK_F_LISTEN_ALL_NSID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @NDIAG_FLAG_LISTEN_ALL_NSID, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.netlink_sock*, %struct.netlink_sock** %5, align 8
  %63 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NETLINK_F_CAP_ACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @NDIAG_FLAG_CAP_ACK, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @NETLINK_DIAG_FLAGS, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %75)
  ret i32 %76
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
