; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_dump_one_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_dump_one_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32 }
%struct.xfrm_dump_info = type { i32, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFRM_MSG_NEWPOLICY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, i32, i8*)* @dump_one_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_one_policy(%struct.xfrm_policy* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xfrm_dump_info*, align 8
  %11 = alloca %struct.xfrm_userpolicy_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.xfrm_dump_info*
  store %struct.xfrm_dump_info* %18, %struct.xfrm_dump_info** %10, align 8
  %19 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %20 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %19, i32 0, i32 3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %12, align 8
  %22 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %23 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %22, i32 0, i32 2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %27 = call i32 @NETLINK_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %32 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XFRM_MSG_NEWPOLICY, align 4
  %35 = load %struct.xfrm_dump_info*, %struct.xfrm_dump_info** %10, align 8
  %36 = getelementptr inbounds %struct.xfrm_dump_info, %struct.xfrm_dump_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %25, i32 %30, i32 %33, i32 %34, i32 4, i32 %37)
  store %struct.nlmsghdr* %38, %struct.nlmsghdr** %14, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %40 = icmp eq %struct.nlmsghdr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %98

44:                                               ; preds = %4
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %46 = call %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr* %45)
  store %struct.xfrm_userpolicy_info* %46, %struct.xfrm_userpolicy_info** %11, align 8
  %47 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %48 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %47, %struct.xfrm_userpolicy_info* %48, i32 %49)
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %53 = call i32 @copy_to_user_tmpl(%struct.xfrm_policy* %51, %struct.sk_buff* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = call i32 @copy_to_user_sec_ctx(%struct.xfrm_policy* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %65 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = call i32 @copy_to_user_policy_type(i32 %66, %struct.sk_buff* %67)
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %75 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %74, i32 0, i32 1
  %76 = call i32 @xfrm_mark_put(%struct.sk_buff* %73, i32* %75)
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %82 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %83 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xfrm_if_id_put(%struct.sk_buff* %81, i32 %84)
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %92 = call i32 @nlmsg_cancel(%struct.sk_buff* %90, %struct.nlmsghdr* %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %97 = call i32 @nlmsg_end(%struct.sk_buff* %95, %struct.nlmsghdr* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %89, %41
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*, i32) #1

declare dso_local i32 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_sec_ctx(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_if_id_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
