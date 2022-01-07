; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.kcm_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.strp_msg = type { i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @kcm_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcm_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.kcm_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.strp_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.kcm_sock* @kcm_sk(%struct.sock* %19)
  store %struct.kcm_sock* %20, %struct.kcm_sock** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @sock_rcvtimeo(%struct.sock* %21, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call i32 @lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %12, align 8
  %31 = call %struct.sk_buff* @kcm_wait_data(%struct.sock* %28, i32 %29, i64 %30, i32* %11)
  store %struct.sk_buff* %31, %struct.sk_buff** %15, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %126

35:                                               ; preds = %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %37 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %36)
  store %struct.strp_msg* %37, %struct.strp_msg** %13, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %40 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %45 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %49 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %50 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %48, i32 %51, %struct.msghdr* %52, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %126

58:                                               ; preds = %47
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @MSG_PEEK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %58
  %70 = load %struct.kcm_sock*, %struct.kcm_sock** %10, align 8
  %71 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @KCM_STATS_ADD(i32 %73, i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %79 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %69
  %83 = load %struct.socket*, %struct.socket** %5, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SOCK_DGRAM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @MSG_TRUNC, align 4
  %90 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %91 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %107

94:                                               ; preds = %82
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %97 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.strp_msg*, %struct.strp_msg** %13, align 8
  %103 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %124

106:                                              ; preds = %69
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32, i32* @MSG_EOR, align 4
  %109 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.kcm_sock*, %struct.kcm_sock** %10, align 8
  %114 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @KCM_STATS_INCR(i32 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %119 = load %struct.sock*, %struct.sock** %9, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = call i32 @skb_unlink(%struct.sk_buff* %118, i32* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  br label %124

124:                                              ; preds = %107, %94
  br label %125

125:                                              ; preds = %124, %58
  br label %126

126:                                              ; preds = %125, %57, %34
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = call i32 @release_sock(%struct.sock* %127)
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  br label %134

134:                                              ; preds = %132, %131
  %135 = phi i32 [ %129, %131 ], [ %133, %132 ]
  ret i32 %135
}

declare dso_local %struct.kcm_sock* @kcm_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @kcm_wait_data(%struct.sock*, i32, i64, i32*) #1

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @KCM_STATS_ADD(i32, i32) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
