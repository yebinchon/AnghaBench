; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_dump_one_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_dump_one_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFRM_MSG_NEWSA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32, i8*)* @dump_one_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_one_state(%struct.xfrm_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xfrm_dump_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.xfrm_usersa_info*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.xfrm_dump_info*
  store %struct.xfrm_dump_info* %16, %struct.xfrm_dump_info** %8, align 8
  %17 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %8, align 8
  %18 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %17, i32 0, i32 3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %8, align 8
  %21 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %20, i32 0, i32 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call i32 @NETLINK_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %8, align 8
  %30 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XFRM_MSG_NEWSA, align 4
  %33 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %8, align 8
  %34 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %23, i32 %28, i32 %31, i32 %32, i32 4, i32 %35)
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %12, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %38 = icmp eq %struct.nlmsghdr* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %3
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %44 = call %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr* %43)
  store %struct.xfrm_usersa_info* %44, %struct.xfrm_usersa_info** %11, align 8
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %46 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %11, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = call i32 @copy_to_user_state_extra(%struct.xfrm_state* %45, %struct.xfrm_usersa_info* %46, %struct.sk_buff* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %54 = call i32 @nlmsg_cancel(%struct.sk_buff* %52, %struct.nlmsghdr* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %42
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %59 = call i32 @nlmsg_end(%struct.sk_buff* %57, %struct.nlmsghdr* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %51, %39
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_state_extra(%struct.xfrm_state*, %struct.xfrm_usersa_info*, %struct.sk_buff*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
