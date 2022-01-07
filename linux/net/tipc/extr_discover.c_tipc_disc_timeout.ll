; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_discoverer = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.net* }
%struct.net = type { i32 }
%struct.timer_list = type { i32 }
%struct.tipc_net = type { i32, i32 }
%struct.tipc_media_addr = type { i32 }
%struct.sk_buff = type { i32 }

@timer = common dso_local global i32 0, align 4
@TIPC_DISC_INACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TIPC_DISC_INIT = common dso_local global i32 0, align 4
@TIPC_DISC_SLOW = common dso_local global i32 0, align 4
@TIPC_DISC_FAST = common dso_local global i32 0, align 4
@DSC_REQ_MSG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@d = common dso_local global %struct.tipc_discoverer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tipc_disc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_disc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tipc_discoverer*, align 8
  %4 = alloca %struct.tipc_net*, align 8
  %5 = alloca %struct.tipc_media_addr, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %10 = ptrtoint %struct.tipc_discoverer* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = call %struct.tipc_discoverer* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.tipc_discoverer* %13, %struct.tipc_discoverer** %3, align 8
  %14 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %14, i32 0, i32 8
  %16 = load %struct.net*, %struct.net** %15, align 8
  %17 = call %struct.tipc_net* @tipc_net(%struct.net* %16)
  store %struct.tipc_net* %17, %struct.tipc_net** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %18 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %19 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %18, i32 0, i32 8
  %20 = load %struct.net*, %struct.net** %19, align 8
  store %struct.net* %20, %struct.net** %7, align 8
  %21 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %22 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %25 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @tipc_node(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %31 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @TIPC_DISC_INACTIVE, align 4
  %36 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %37 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %145

38:                                               ; preds = %29, %1
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %41 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @time_before(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %38
  %46 = load %struct.net*, %struct.net** %7, align 8
  %47 = call i32 @tipc_own_addr(%struct.net* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %51 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %50, i32 0, i32 5
  %52 = load i32, i32* @jiffies, align 4
  %53 = load i32, i32* @TIPC_DISC_INIT, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @mod_timer(i32* %51, i32 %54)
  %56 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %57 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %61 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tipc_sched_net_finalize(%struct.net* %59, i32 %62)
  br label %156

64:                                               ; preds = %45, %38
  %65 = load i32, i32* @jiffies, align 4
  %66 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %67 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @time_before(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @TIPC_DISC_INIT, align 4
  %73 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %74 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %125

75:                                               ; preds = %64
  %76 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %77 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 2
  store i32 %79, i32* %77, align 8
  %80 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %81 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %86 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TIPC_DISC_SLOW, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @TIPC_DISC_SLOW, align 4
  %92 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %93 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %110

94:                                               ; preds = %84, %75
  %95 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %96 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %101 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TIPC_DISC_FAST, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @TIPC_DISC_FAST, align 4
  %107 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %108 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %99, %94
  br label %110

110:                                              ; preds = %109, %90
  %111 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %112 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @buf_msg(i32 %113)
  %115 = load i32, i32* @DSC_REQ_MSG, align 4
  %116 = call i32 @msg_set_type(i32 %114, i32 %115)
  %117 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %118 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @buf_msg(i32 %119)
  %121 = load %struct.tipc_net*, %struct.tipc_net** %4, align 8
  %122 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @msg_set_prevnode(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %110, %71
  %126 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %127 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %126, i32 0, i32 5
  %128 = load i32, i32* @jiffies, align 4
  %129 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %130 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %128, %131
  %133 = call i32 @mod_timer(i32* %127, i32 %132)
  %134 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %135 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %134, i32 0, i32 4
  %136 = call i32 @memcpy(%struct.tipc_media_addr* %5, i32* %135, i32 4)
  %137 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %138 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GFP_ATOMIC, align 4
  %141 = call %struct.sk_buff* @skb_clone(i32 %139, i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %6, align 8
  %142 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %143 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %125, %34
  %146 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %3, align 8
  %147 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock_bh(i32* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = icmp ne %struct.sk_buff* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.net*, %struct.net** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = call i32 @tipc_bearer_xmit_skb(%struct.net* %152, i32 %153, %struct.sk_buff* %154, %struct.tipc_media_addr* %5)
  br label %156

156:                                              ; preds = %49, %151, %145
  ret void
}

declare dso_local %struct.tipc_discoverer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @tipc_node(i32) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tipc_sched_net_finalize(%struct.net*, i32) #1

declare dso_local i32 @msg_set_type(i32, i32) #1

declare dso_local i32 @buf_msg(i32) #1

declare dso_local i32 @msg_set_prevnode(i32, i32) #1

declare dso_local i32 @memcpy(%struct.tipc_media_addr*, i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(i32, i32) #1

declare dso_local i32 @tipc_bearer_xmit_skb(%struct.net*, i32, %struct.sk_buff*, %struct.tipc_media_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
