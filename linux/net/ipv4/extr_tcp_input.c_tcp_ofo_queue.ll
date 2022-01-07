; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ofo_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ofo_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rb_node = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPHDR_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_ofo_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ofo_queue(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %3, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 1
  %19 = call %struct.rb_node* @rb_first(i32* %18)
  store %struct.rb_node* %19, %struct.rb_node** %10, align 8
  br label %20

20:                                               ; preds = %136, %87, %1
  %21 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %23, label %137

23:                                               ; preds = %20
  %24 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %25 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @after(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %137

36:                                               ; preds = %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @before(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @before(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %44
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @tcp_dsack_extend(%struct.sock* %59, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %36
  %67 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %68 = call %struct.rb_node* @rb_next(%struct.rb_node* %67)
  store %struct.rb_node* %68, %struct.rb_node** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 1
  %73 = call i32 @rb_erase(i32* %70, i32* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @after(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %66
  %88 = load %struct.sock*, %struct.sock** %2, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @tcp_drop(%struct.sock* %88, %struct.sk_buff* %89)
  br label %20

91:                                               ; preds = %66
  %92 = load %struct.sock*, %struct.sock** %2, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = call %struct.sk_buff* @skb_peek_tail(i32* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.sock*, %struct.sock** %2, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i64 @tcp_try_coalesce(%struct.sock* %98, %struct.sk_buff* %99, %struct.sk_buff* %100, i32* %6)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi i1 [ false, %91 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %7, align 4
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @tcp_rcv_nxt_update(%struct.tcp_sock* %106, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TCPHDR_FIN, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %103
  %121 = load %struct.sock*, %struct.sock** %2, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 0
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i32 @__skb_queue_tail(i32* %122, %struct.sk_buff* %123)
  br label %129

125:                                              ; preds = %103
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @kfree_skb_partial(%struct.sk_buff* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.sock*, %struct.sock** %2, align 8
  %135 = call i32 @tcp_fin(%struct.sock* %134)
  br label %137

136:                                              ; preds = %129
  br label %20

137:                                              ; preds = %133, %35, %20
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @tcp_dsack_extend(%struct.sock*, i32, i32) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_drop(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local i64 @tcp_try_coalesce(%struct.sock*, %struct.sk_buff*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @tcp_rcv_nxt_update(%struct.tcp_sock*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb_partial(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_fin(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
