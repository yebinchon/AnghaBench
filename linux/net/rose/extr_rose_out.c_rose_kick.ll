; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_out.c_rose_kick.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_out.c_rose_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { i64, i32, i16, i16, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ROSE_STATE_3 = common dso_local global i64 0, align 8
@ROSE_COND_PEER_RX_BUSY = common dso_local global i32 0, align 4
@sysctl_rose_window_size = common dso_local global i32 0, align 4
@ROSE_MODULUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_kick(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.rose_sock* @rose_sk(%struct.sock* %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %3, align 8
  %10 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %11 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ROSE_STATE_3, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %18 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ROSE_COND_PEER_RX_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %130

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call i32* @skb_peek(i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %130

30:                                               ; preds = %24
  %31 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %32 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %31, i32 0, i32 6
  %33 = call i32* @skb_peek(i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %37 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %36, i32 0, i32 2
  %38 = load i16, i16* %37, align 4
  %39 = zext i16 %38 to i32
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %42 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %41, i32 0, i32 3
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %39, %35 ], [ %44, %40 ]
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %6, align 2
  %48 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %49 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = load i32, i32* @sysctl_rose_window_size, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @ROSE_MODULUS, align 4
  %55 = srem i32 %53, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %7, align 2
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* %7, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %130

63:                                               ; preds = %45
  %64 = load i16, i16* %6, align 2
  %65 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %66 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %65, i32 0, i32 3
  store i16 %64, i16* %66, align 2
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = call %struct.sk_buff* @skb_dequeue(i32* %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %4, align 8
  br label %70

70:                                               ; preds = %114, %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %71, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %5, align 8
  %74 = icmp eq %struct.sk_buff* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %2, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @skb_queue_head(i32* %77, %struct.sk_buff* %78)
  br label %116

80:                                               ; preds = %70
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.sock*, %struct.sock** %2, align 8
  %83 = call i32 @skb_set_owner_w(%struct.sk_buff* %81, %struct.sock* %82)
  %84 = load %struct.sock*, %struct.sock** %2, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @rose_send_iframe(%struct.sock* %84, %struct.sk_buff* %85)
  %87 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %88 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %87, i32 0, i32 3
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @ROSE_MODULUS, align 4
  %93 = srem i32 %91, %92
  %94 = trunc i32 %93 to i16
  %95 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %96 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %95, i32 0, i32 3
  store i16 %94, i16* %96, align 2
  %97 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %98 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %97, i32 0, i32 6
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @skb_queue_tail(i32* %98, %struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %80
  %102 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %103 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %102, i32 0, i32 3
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* %7, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.sock*, %struct.sock** %2, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  %112 = call %struct.sk_buff* @skb_dequeue(i32* %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %4, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  br label %114

114:                                              ; preds = %109, %101
  %115 = phi i1 [ false, %101 ], [ %113, %109 ]
  br i1 %115, label %70, label %116

116:                                              ; preds = %114, %75
  %117 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %118 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %121 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %125 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.sock*, %struct.sock** %2, align 8
  %129 = call i32 @rose_stop_timer(%struct.sock* %128)
  br label %130

130:                                              ; preds = %116, %62, %29, %23, %15
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @rose_send_iframe(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
