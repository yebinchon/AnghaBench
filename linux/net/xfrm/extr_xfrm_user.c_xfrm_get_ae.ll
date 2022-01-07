; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_get_ae.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_get_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_aevent_id = type { i32, %struct.xfrm_usersa_id }
%struct.xfrm_usersa_id = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_get_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_get_ae(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfrm_mark, align 4
  %15 = alloca %struct.xfrm_aevent_id*, align 8
  %16 = alloca %struct.xfrm_usersa_id*, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.xfrm_aevent_id* %23, %struct.xfrm_aevent_id** %15, align 8
  %24 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %15, align 8
  %25 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %24, i32 0, i32 1
  store %struct.xfrm_usersa_id* %25, %struct.xfrm_usersa_id** %16, align 8
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = call i32 @xfrm_mark_get(%struct.nlattr** %26, %struct.xfrm_mark* %14)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %31 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %30, i32 0, i32 3
  %32 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %33 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %36 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %16, align 8
  %39 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %28, i32 %29, i32* %31, i32 %34, i32 %37, i32 %40)
  store %struct.xfrm_state* %41, %struct.xfrm_state** %9, align 8
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %43 = icmp eq %struct.xfrm_state* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @ESRCH, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %100

47:                                               ; preds = %3
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %49 = call i32 @xfrm_aevent_msgsize(%struct.xfrm_state* %48)
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sk_buff* @nlmsg_new(i32 %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = icmp eq %struct.sk_buff* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %56 = call i32 @xfrm_state_put(%struct.xfrm_state* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %100

59:                                               ; preds = %47
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %15, align 8
  %64 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %73 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %78 = call i32 @build_aevent(%struct.sk_buff* %76, %struct.xfrm_state* %77, %struct.km_event* %12)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = getelementptr inbounds %struct.net, %struct.net* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @NETLINK_CB(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nlmsg_unicast(i32 %86, %struct.sk_buff* %87, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %95 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %98 = call i32 @xfrm_state_put(%struct.xfrm_state* %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %59, %54, %44
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_aevent_msgsize(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @build_aevent(%struct.sk_buff*, %struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
