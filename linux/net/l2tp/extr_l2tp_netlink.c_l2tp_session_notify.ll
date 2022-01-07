; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_session_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_session_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.l2tp_session = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_family*, %struct.genl_info*, %struct.l2tp_session*, i32)* @l2tp_session_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_session_notify(%struct.genl_family* %0, %struct.genl_info* %1, %struct.l2tp_session* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_family*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.l2tp_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store %struct.l2tp_session* %2, %struct.l2tp_session** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NLM_F_ACK, align 4
  %29 = load %struct.l2tp_session*, %struct.l2tp_session** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @l2tp_nl_session_send(%struct.sk_buff* %21, i32 %24, i32 %27, i32 %28, %struct.l2tp_session* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %20
  %35 = load %struct.genl_family*, %struct.genl_family** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i32 @genlmsg_multicast_allns(%struct.genl_family* %35, %struct.sk_buff* %36, i32 0, i32 0, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ESRCH, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %20
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %44, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @l2tp_nl_session_send(%struct.sk_buff*, i32, i32, i32, %struct.l2tp_session*, i32) #1

declare dso_local i32 @genlmsg_multicast_allns(%struct.genl_family*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
