; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_kick.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i64, i32, i16, i16, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@NR_STATE_3 = common dso_local global i64 0, align 8
@NR_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@NR_MODULUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_kick(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.nr_sock* @nr_sk(%struct.sock* %8)
  store %struct.nr_sock* %9, %struct.nr_sock** %3, align 8
  %10 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %11 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NR_STATE_3, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %18 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NR_COND_PEER_RX_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %136

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call i32* @skb_peek(i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %136

30:                                               ; preds = %24
  %31 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %32 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %31, i32 0, i32 7
  %33 = call i32* @skb_peek(i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %37 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %36, i32 0, i32 2
  %38 = load i16, i16* %37, align 4
  %39 = zext i16 %38 to i32
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %42 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %41, i32 0, i32 3
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %39, %35 ], [ %44, %40 ]
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %6, align 2
  %48 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %49 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %53 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* @NR_MODULUS, align 4
  %57 = srem i32 %55, %56
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %7, align 2
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %136

65:                                               ; preds = %45
  %66 = load i16, i16* %6, align 2
  %67 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %68 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %67, i32 0, i32 3
  store i16 %66, i16* %68, align 2
  %69 = load %struct.sock*, %struct.sock** %2, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = call %struct.sk_buff* @skb_dequeue(i32* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %4, align 8
  br label %72

72:                                               ; preds = %116, %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %5, align 8
  %76 = icmp eq %struct.sk_buff* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.sock*, %struct.sock** %2, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_queue_head(i32* %79, %struct.sk_buff* %80)
  br label %118

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.sock*, %struct.sock** %2, align 8
  %85 = call i32 @skb_set_owner_w(%struct.sk_buff* %83, %struct.sock* %84)
  %86 = load %struct.sock*, %struct.sock** %2, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @nr_send_iframe(%struct.sock* %86, %struct.sk_buff* %87)
  %89 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %90 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %89, i32 0, i32 3
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @NR_MODULUS, align 4
  %95 = srem i32 %93, %94
  %96 = trunc i32 %95 to i16
  %97 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %98 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %97, i32 0, i32 3
  store i16 %96, i16* %98, align 2
  %99 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %100 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %99, i32 0, i32 7
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @skb_queue_tail(i32* %100, %struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %82
  %104 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %105 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %104, i32 0, i32 3
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* %7, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.sock*, %struct.sock** %2, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = call %struct.sk_buff* @skb_dequeue(i32* %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %4, align 8
  %115 = icmp ne %struct.sk_buff* %114, null
  br label %116

116:                                              ; preds = %111, %103
  %117 = phi i1 [ false, %103 ], [ %115, %111 ]
  br i1 %117, label %72, label %118

118:                                              ; preds = %116, %77
  %119 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %120 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %123 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %127 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.sock*, %struct.sock** %2, align 8
  %131 = call i32 @nr_t1timer_running(%struct.sock* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %118
  %134 = load %struct.sock*, %struct.sock** %2, align 8
  %135 = call i32 @nr_start_t1timer(%struct.sock* %134)
  br label %136

136:                                              ; preds = %15, %23, %29, %64, %133, %118
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @nr_send_iframe(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @nr_t1timer_running(%struct.sock*) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
