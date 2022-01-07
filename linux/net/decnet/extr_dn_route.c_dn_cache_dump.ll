; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_cache_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_cache_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.dn_route = type { i32, i32 }
%struct.rtmsg = type { i32 }
%struct.TYPE_7__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_F_CLONED = common dso_local global i32 0, align 4
@dn_rt_hash_mask = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_cache_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.dn_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtmsg*, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = call i32 @net_eq(%struct.net* %18, i32* @init_net)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

22:                                               ; preds = %2
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i32 @nlmsg_len(%struct.TYPE_5__* %25)
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %22
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call %struct.rtmsg* @nlmsg_data(%struct.TYPE_5__* %35)
  store %struct.rtmsg* %36, %struct.rtmsg** %12, align 8
  %37 = load %struct.rtmsg*, %struct.rtmsg** %12, align 8
  %38 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RTM_F_CLONED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %143

44:                                               ; preds = %32
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %51 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %125, %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @dn_rt_hash_mask, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %125

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = call i32 (...) @rcu_read_lock_bh()
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.dn_route* @rcu_dereference_bh(i32 %76)
  store %struct.dn_route* %77, %struct.dn_route** %7, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %116, %69
  %79 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %80 = icmp ne %struct.dn_route* %79, null
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %116

86:                                               ; preds = %81
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %89 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %88, i32 0, i32 0
  %90 = call i32 @dst_clone(i32* %89)
  %91 = call i32 @skb_dst_set(%struct.sk_buff* %87, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %94 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @NETLINK_CB(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RTM_NEWROUTE, align 4
  %106 = load i32, i32* @NLM_F_MULTI, align 4
  %107 = call i64 @dn_rt_fill_info(%struct.sk_buff* %92, i32 %99, i32 %104, i32 %105, i32 1, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %86
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @skb_dst_drop(%struct.sk_buff* %110)
  %112 = call i32 (...) @rcu_read_unlock_bh()
  br label %129

113:                                              ; preds = %86
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @skb_dst_drop(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %85
  %117 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %118 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.dn_route* @rcu_dereference_bh(i32 %119)
  store %struct.dn_route* %120, %struct.dn_route** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %78

123:                                              ; preds = %78
  %124 = call i32 (...) @rcu_read_unlock_bh()
  br label %125

125:                                              ; preds = %123, %63
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %55

128:                                              ; preds = %55
  br label %129

129:                                              ; preds = %128, %109
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %132 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %137 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %129, %43, %29, %21
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @nlmsg_len(%struct.TYPE_5__*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.dn_route* @rcu_dereference_bh(i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32*) #1

declare dso_local i64 @dn_rt_fill_info(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
