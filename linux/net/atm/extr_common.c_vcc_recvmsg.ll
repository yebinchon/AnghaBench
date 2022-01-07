; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d -= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcc_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.atm_vcc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SS_CONNECTED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOTCONN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %123

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MSG_DONTWAIT, align 4
  %31 = load i32, i32* @MSG_PEEK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %28
  %40 = load %struct.socket*, %struct.socket** %6, align 8
  %41 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %40)
  store %struct.atm_vcc* %41, %struct.atm_vcc** %11, align 8
  %42 = load i32, i32* @ATM_VF_RELEASED, align 4
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %44 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ATM_VF_CLOSE, align 4
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ATM_VF_READY, align 4
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 0
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %47, %39
  store i32 0, i32* %5, align 4
  br label %123

60:                                               ; preds = %53
  %61 = load %struct.sock*, %struct.sock** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MSG_DONTWAIT, align 4
  %65 = and i32 %63, %64
  %66 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %61, i32 %62, i32 %65, i32* %14)
  store %struct.sk_buff* %66, %struct.sk_buff** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %123

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* @MSG_TRUNC, align 4
  %83 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %89 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %88, i32 0, %struct.msghdr* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %123

96:                                               ; preds = %87
  %97 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %98 = load %struct.sock*, %struct.sock** %10, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %97, %struct.sock* %98, %struct.sk_buff* %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @MSG_PEEK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %96
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = call i32 @atomic_read(i32* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111)
  %113 = load %struct.atm_vcc*, %struct.atm_vcc** %11, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @atm_return(%struct.atm_vcc* %113, i32 %116)
  br label %118

118:                                              ; preds = %105, %96
  %119 = load %struct.sock*, %struct.sock** %10, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = call i32 @skb_free_datagram(%struct.sock* %119, %struct.sk_buff* %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %94, %69, %59, %36, %25
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
