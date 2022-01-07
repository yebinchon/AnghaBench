; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_out.c_x25_kick.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_out.c_x25_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.x25_sock = type { i64, i32, i16, i16, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@X25_STATE_3 = common dso_local global i64 0, align 8
@X25_INTERRUPT_FLAG = common dso_local global i32 0, align 4
@X25_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@X25_EMODULUS = common dso_local global i32 0, align 4
@X25_SMODULUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_kick(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.x25_sock* @x25_sk(%struct.sock* %9)
  store %struct.x25_sock* %10, %struct.x25_sock** %8, align 8
  %11 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %12 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @X25_STATE_3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %166

17:                                               ; preds = %1
  %18 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %19 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %18, i32 0, i32 9
  %20 = call i32* @skb_peek(i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* @X25_INTERRUPT_FLAG, align 4
  %24 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 10
  %26 = call i32 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %30 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %29, i32 0, i32 9
  %31 = call %struct.sk_buff* @skb_dequeue(i32* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %34 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @x25_transmit_link(%struct.sk_buff* %32, %struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %28, %22, %17
  %38 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %39 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @X25_COND_PEER_RX_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %166

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = call i32* @skb_peek(i32* %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %166

51:                                               ; preds = %45
  %52 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %53 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %52, i32 0, i32 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @X25_EMODULUS, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @X25_SMODULUS, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %7, align 4
  %64 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %65 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %64, i32 0, i32 6
  %66 = call i32* @skb_peek(i32* %65)
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %70 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %69, i32 0, i32 2
  %71 = load i16, i16* %70, align 4
  %72 = zext i16 %71 to i32
  br label %78

73:                                               ; preds = %62
  %74 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %75 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %74, i32 0, i32 3
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %72, %68 ], [ %77, %73 ]
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %5, align 2
  %81 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %82 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %81, i32 0, i32 3
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %86 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %84, %88
  %90 = load i32, i32* %7, align 4
  %91 = srem i32 %89, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %6, align 2
  %93 = load i16, i16* %5, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* %6, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %78
  br label %166

99:                                               ; preds = %78
  %100 = load i16, i16* %5, align 2
  %101 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %102 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %101, i32 0, i32 2
  store i16 %100, i16* %102, align 4
  %103 = load %struct.sock*, %struct.sock** %2, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = call %struct.sk_buff* @skb_dequeue(i32* %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %3, align 8
  br label %106

106:                                              ; preds = %150, %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %107, i32 %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %4, align 8
  %110 = icmp eq %struct.sk_buff* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.sock*, %struct.sock** %2, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = call i32 @skb_queue_head(i32* %113, %struct.sk_buff* %114)
  br label %152

116:                                              ; preds = %106
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load %struct.sock*, %struct.sock** %2, align 8
  %119 = call i32 @skb_set_owner_w(%struct.sk_buff* %117, %struct.sock* %118)
  %120 = load %struct.sock*, %struct.sock** %2, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @x25_send_iframe(%struct.sock* %120, %struct.sk_buff* %121)
  %123 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %124 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %123, i32 0, i32 2
  %125 = load i16, i16* %124, align 4
  %126 = zext i16 %125 to i32
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %7, align 4
  %129 = srem i32 %127, %128
  %130 = trunc i32 %129 to i16
  %131 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %132 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %131, i32 0, i32 2
  store i16 %130, i16* %132, align 4
  %133 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %134 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %133, i32 0, i32 6
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = call i32 @skb_queue_tail(i32* %134, %struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %116
  %138 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %139 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %138, i32 0, i32 2
  %140 = load i16, i16* %139, align 4
  %141 = zext i16 %140 to i32
  %142 = load i16, i16* %6, align 2
  %143 = zext i16 %142 to i32
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load %struct.sock*, %struct.sock** %2, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = call %struct.sk_buff* @skb_dequeue(i32* %147)
  store %struct.sk_buff* %148, %struct.sk_buff** %3, align 8
  %149 = icmp ne %struct.sk_buff* %148, null
  br label %150

150:                                              ; preds = %145, %137
  %151 = phi i1 [ false, %137 ], [ %149, %145 ]
  br i1 %151, label %106, label %152

152:                                              ; preds = %150, %111
  %153 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %154 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %157 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %161 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.sock*, %struct.sock** %2, align 8
  %165 = call i32 @x25_stop_timer(%struct.sock* %164)
  br label %166

166:                                              ; preds = %152, %98, %50, %44, %16
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @x25_transmit_link(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @x25_send_iframe(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
