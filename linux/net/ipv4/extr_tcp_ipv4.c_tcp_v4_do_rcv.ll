; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.dst_entry* }
%struct.dst_entry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dst_entry*, i32)* }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_v4_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_ESTABLISHED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load %struct.dst_entry*, %struct.dst_entry** %16, align 8
  store %struct.dst_entry* %17, %struct.dst_entry** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @sock_rps_save_rxhash(%struct.sock* %18, %struct.sk_buff* %19)
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @sk_mark_napi_id(%struct.sock* %21, %struct.sk_buff* %22)
  %24 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %14
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %37 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*, i32)** %39, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %42 = call i32 %40(%struct.dst_entry* %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = call i32 @dst_release(%struct.dst_entry* %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  store %struct.dst_entry* null, %struct.dst_entry** %48, align 8
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %49, %14
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32 @tcp_rcv_established(%struct.sock* %51, %struct.sk_buff* %52)
  store i32 0, i32* %3, align 4
  br label %114

54:                                               ; preds = %2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i64 @tcp_checksum_complete(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %105

59:                                               ; preds = %54
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCP_LISTEN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.sock* @tcp_v4_cookie_check(%struct.sock* %66, %struct.sk_buff* %67)
  store %struct.sock* %68, %struct.sock** %8, align 8
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = icmp ne %struct.sock* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %102

72:                                               ; preds = %65
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = icmp ne %struct.sock* %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load %struct.sock*, %struct.sock** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i64 @tcp_child_process(%struct.sock* %77, %struct.sock* %78, %struct.sk_buff* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %83, %struct.sock** %6, align 8
  br label %98

84:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %114

85:                                               ; preds = %72
  br label %90

86:                                               ; preds = %59
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @sock_rps_save_rxhash(%struct.sock* %87, %struct.sk_buff* %88)
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i64 @tcp_rcv_state_process(%struct.sock* %91, %struct.sk_buff* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %96, %struct.sock** %6, align 8
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %114

98:                                               ; preds = %95, %82
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @tcp_v4_send_reset(%struct.sock* %99, %struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %105, %98, %71
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  store i32 0, i32* %3, align 4
  br label %114

105:                                              ; preds = %58
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = call i32 @sock_net(%struct.sock* %106)
  %108 = load i32, i32* @TCP_MIB_CSUMERRORS, align 4
  %109 = call i32 @TCP_INC_STATS(i32 %107, i32 %108)
  %110 = load %struct.sock*, %struct.sock** %4, align 8
  %111 = call i32 @sock_net(%struct.sock* %110)
  %112 = load i32, i32* @TCP_MIB_INERRS, align 4
  %113 = call i32 @TCP_INC_STATS(i32 %111, i32 %112)
  br label %102

114:                                              ; preds = %102, %97, %84, %50
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @tcp_rcv_established(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_checksum_complete(%struct.sk_buff*) #1

declare dso_local %struct.sock* @tcp_v4_cookie_check(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_rcv_state_process(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
