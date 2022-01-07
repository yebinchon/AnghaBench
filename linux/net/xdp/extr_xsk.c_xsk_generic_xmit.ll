; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_generic_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_generic_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, i32 }
%struct.xdp_sock = type { i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.xdp_desc = type { i64, i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i8* }

@TX_BATCH_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@xsk_destruct_skb = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @xsk_generic_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_generic_xmit(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.xdp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_desc, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.xdp_sock* @xdp_sk(%struct.sock* %12)
  store %struct.xdp_sock* %13, %struct.xdp_sock** %3, align 8
  %14 = load i32, i32* @TX_BATCH_SIZE, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %135

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %133, %28
  %30 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %34 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i64 @xskq_peek_desc(i32 %32, %struct.xdp_desc* %6, %struct.TYPE_6__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %134

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %135

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %6, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %48, i32 %49, i32 1, i32* %8)
  store %struct.sk_buff* %50, %struct.sk_buff** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %135

60:                                               ; preds = %45
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @skb_put(%struct.sk_buff* %61, i32 %62)
  %64 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %67 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i8* @xdp_umem_get_data(%struct.TYPE_6__* %68, i64 %69)
  store i8* %70, i8** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @skb_store_bits(%struct.sk_buff* %71, i32 0, i8* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %60
  %79 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %80 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @xskq_reserve_addr(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78, %60
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  br label %135

89:                                               ; preds = %78
  %90 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %91 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 3
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.sock*, %struct.sock** %2, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sock*, %struct.sock** %2, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %6, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load i32, i32* @xsk_destruct_skb, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %116 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dev_direct_xmit(%struct.sk_buff* %114, i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %120 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @xskq_discard_desc(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @NET_XMIT_DROP, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %89
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @NETDEV_TX_BUSY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %89
  %131 = load i32, i32* @EBUSY, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %135

133:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  br label %29

134:                                              ; preds = %29
  br label %135

135:                                              ; preds = %134, %130, %86, %57, %42, %27
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.sock*, %struct.sock** %2, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 0
  %141 = bitcast {}** %140 to i32 (%struct.sock*)**
  %142 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %141, align 8
  %143 = load %struct.sock*, %struct.sock** %2, align 8
  %144 = call i32 %142(%struct.sock* %143)
  br label %145

145:                                              ; preds = %138, %135
  %146 = load %struct.xdp_sock*, %struct.xdp_sock** %3, align 8
  %147 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %146, i32 0, i32 1
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local %struct.xdp_sock* @xdp_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xskq_peek_desc(i32, %struct.xdp_desc*, %struct.TYPE_6__*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @xdp_umem_get_data(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @skb_store_bits(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i64 @xskq_reserve_addr(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_direct_xmit(%struct.sk_buff*, i64) #1

declare dso_local i32 @xskq_discard_desc(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
