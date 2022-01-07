; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_valid_getid_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_valid_getid_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@NETNSA_MAX = common dso_local global i32 0, align 4
@rtnl_net_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unsupported attribute in peer netns getid request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @rtnl_net_valid_getid_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_net_valid_getid_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @netlink_strict_get_check(%struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %18 = load i32, i32* @NETNSA_MAX, align 4
  %19 = load i32, i32* @rtnl_net_policy, align 4
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %21 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %16, i32 4, %struct.nlattr** %17, i32 %18, i32 %19, %struct.netlink_ext_ack* %20)
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %25 = load i32, i32* @NETNSA_MAX, align 4
  %26 = load i32, i32* @rtnl_net_policy, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %28 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %23, i32 4, %struct.nlattr** %24, i32 %25, i32 %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %59

33:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @NETNSA_MAX, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %49 [
    i32 129, label %48
    i32 131, label %48
    i32 130, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %46, %46, %46, %46
  br label %54

49:                                               ; preds = %46
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %51 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %34

58:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %49, %31, %15
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
