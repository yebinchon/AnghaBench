; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tc_ctl_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tc_ctl_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@TCA_ROOT_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Netlink action attributes missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_ctl_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_ctl_action(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @TCA_ROOT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @NETLINK_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 0, %33 ]
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 129
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @CAP_NET_ADMIN, align 4
  %43 = call i32 @netlink_capable(%struct.sk_buff* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EPERM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

48:                                               ; preds = %40, %34
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = load i32, i32* @TCA_ROOT_MAX, align 4
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %52 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %49, i32 4, %struct.nlattr** %24, i32 %50, i32* null, %struct.netlink_ext_ack* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

57:                                               ; preds = %48
  %58 = load i64, i64* @TCA_ACT_TAB, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp eq %struct.nlattr* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %64 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

67:                                               ; preds = %57
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %107 [
    i32 128, label %71
    i32 130, label %89
    i32 129, label %98
  ]

71:                                               ; preds = %67
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %73 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NLM_F_REPLACE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %71
  %80 = load %struct.net*, %struct.net** %8, align 8
  %81 = load i64, i64* @TCA_ACT_TAB, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %88 = call i32 @tcf_action_add(%struct.net* %80, %struct.nlattr* %83, %struct.nlmsghdr* %84, i32 %85, i32 %86, %struct.netlink_ext_ack* %87)
  store i32 %88, i32* %13, align 4
  br label %109

89:                                               ; preds = %67
  %90 = load %struct.net*, %struct.net** %8, align 8
  %91 = load i64, i64* @TCA_ACT_TAB, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %97 = call i32 @tca_action_gd(%struct.net* %90, %struct.nlattr* %93, %struct.nlmsghdr* %94, i32 %95, i32 130, %struct.netlink_ext_ack* %96)
  store i32 %97, i32* %13, align 4
  br label %109

98:                                               ; preds = %67
  %99 = load %struct.net*, %struct.net** %8, align 8
  %100 = load i64, i64* @TCA_ACT_TAB, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %106 = call i32 @tca_action_gd(%struct.net* %99, %struct.nlattr* %102, %struct.nlmsghdr* %103, i32 %104, i32 129, %struct.netlink_ext_ack* %105)
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %67
  %108 = call i32 (...) @BUG()
  br label %109

109:                                              ; preds = %107, %98, %89, %79
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %109, %62, %55, %45
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @tcf_action_add(%struct.net*, %struct.nlattr*, %struct.nlmsghdr*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tca_action_gd(%struct.net*, %struct.nlattr*, %struct.nlmsghdr*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @BUG(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
