; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_loopback.c_rose_loopback_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_loopback.c_rose_loopback_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.sk_buff = type { i64, i32* }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }

@ROSE_LOOPBACK_LIMIT = common dso_local global i32 0, align 4
@loopback_queue = common dso_local global i32 0, align 4
@ROSE_MIN_LEN = common dso_local global i64 0, align 8
@ROSE_CALL_REQUEST = common dso_local global i16 0, align 2
@ROSE_CALL_REQ_FACILITIES_OFF = common dso_local global i64 0, align 8
@ROSE_CALL_REQ_ADDR_LEN_OFF = common dso_local global i64 0, align 8
@ROSE_CALL_REQ_ADDR_LEN_VAL = common dso_local global i16 0, align 2
@ROSE_CALL_REQ_DEST_ADDR_OFF = common dso_local global i32 0, align 4
@ROSE_DEFAULT_MAXVC = common dso_local global i32 0, align 4
@rose_loopback_neigh = common dso_local global i32 0, align 4
@loopback_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rose_loopback_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_loopback_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %131, %1
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @ROSE_LOOPBACK_LIMIT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %134

15:                                               ; preds = %11
  %16 = call %struct.sk_buff* @skb_dequeue(i32* @loopback_queue)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %141

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROSE_MIN_LEN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %131

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 3840
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 0
  %43 = and i32 %42, 255
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %7, align 2
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @ROSE_CALL_REQUEST, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %29
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ROSE_CALL_REQ_FACILITIES_OFF, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @ROSE_CALL_REQ_ADDR_LEN_OFF, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i16, i16* @ROSE_CALL_REQ_ADDR_LEN_VAL, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62, %56
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  br label %131

75:                                               ; preds = %62, %29
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @ROSE_CALL_REQ_DEST_ADDR_OFF, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i32, i32* @ROSE_DEFAULT_MAXVC, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = call i32 @skb_reset_transport_header(%struct.sk_buff* %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @rose_loopback_neigh, align 4
  %90 = call %struct.sock* @rose_find_socket(i32 %88, i32 %89)
  store %struct.sock* %90, %struct.sock** %6, align 8
  %91 = load %struct.sock*, %struct.sock** %6, align 8
  %92 = icmp ne %struct.sock* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %75
  %94 = load %struct.sock*, %struct.sock** %6, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call i64 @rose_process_rx_frame(%struct.sock* %94, %struct.sk_buff* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %131

102:                                              ; preds = %75
  %103 = load i16, i16* %7, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @ROSE_CALL_REQUEST, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load i32*, i32** %5, align 8
  %110 = call %struct.net_device* @rose_dev_get(i32* %109)
  store %struct.net_device* %110, %struct.net_device** %4, align 8
  %111 = icmp ne %struct.net_device* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = load i32, i32* @rose_loopback_neigh, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @rose_rx_call_request(%struct.sk_buff* %113, %struct.net_device* %114, i32 %115, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call i32 @kfree_skb(%struct.sk_buff* %120)
  br label %122

122:                                              ; preds = %119, %112
  br label %126

123:                                              ; preds = %108
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = call i32 @kfree_skb(%struct.sk_buff* %124)
  br label %126

126:                                              ; preds = %123, %122
  br label %130

127:                                              ; preds = %102
  %128 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %127, %126
  br label %131

131:                                              ; preds = %130, %101, %72, %26
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %11

134:                                              ; preds = %11
  %135 = call i32 @skb_queue_empty(i32* @loopback_queue)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* @jiffies, align 8
  %139 = add nsw i64 %138, 1
  %140 = call i32 @mod_timer(i32* @loopback_timer, i64 %139)
  br label %141

141:                                              ; preds = %19, %137, %134
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sock* @rose_find_socket(i32, i32) #1

declare dso_local i64 @rose_process_rx_frame(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.net_device* @rose_dev_get(i32*) #1

declare dso_local i64 @rose_rx_call_request(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
