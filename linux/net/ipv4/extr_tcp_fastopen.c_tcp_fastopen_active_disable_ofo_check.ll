; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_active_disable_ofo_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_active_disable_ofo_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i32, i32, i32 }
%struct.dst_entry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TCPHDR_FIN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_active_disable_ofo_check(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 1
  %21 = call %struct.sk_buff* @skb_rb_first(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_rb_next(%struct.sk_buff* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TCPHDR_FIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @tcp_fastopen_active_disable(%struct.sock* %37)
  br label %82

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %24, %18
  br label %82

41:                                               ; preds = %13
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = call %struct.TYPE_7__* @sock_net(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %46
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call %struct.dst_entry* @sk_dst_get(%struct.sock* %54)
  store %struct.dst_entry* %55, %struct.dst_entry** %4, align 8
  %56 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %57 = icmp ne %struct.dst_entry* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %60 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %65 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_LOOPBACK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %63, %58, %53
  %73 = load %struct.sock*, %struct.sock** %2, align 8
  %74 = call %struct.TYPE_7__* @sock_net(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @atomic_set(i32* %76, i32 0)
  br label %78

78:                                               ; preds = %72, %63
  %79 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %80 = call i32 @dst_release(%struct.dst_entry* %79)
  br label %81

81:                                               ; preds = %78, %46, %41
  br label %82

82:                                               ; preds = %12, %36, %81, %40
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_rb_first(i32*) #1

declare dso_local i32 @skb_rb_next(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_fastopen_active_disable(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_7__* @sock_net(%struct.sock*) #1

declare dso_local %struct.dst_entry* @sk_dst_get(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
