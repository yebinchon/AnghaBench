; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_helper = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTHELPER = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFCTH_NAME = common dso_local global i32 0, align 4
@NFCTH_QUEUE_NUM = common dso_local global i32 0, align 4
@NFCTH_PRIV_DATA_LEN = common dso_local global i32 0, align 4
@NF_CT_HELPER_F_CONFIGURED = common dso_local global i32 0, align 4
@NFCT_HELPER_STATUS_ENABLED = common dso_local global i32 0, align 4
@NFCT_HELPER_STATUS_DISABLED = common dso_local global i32 0, align 4
@NFCTH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, i32, %struct.nf_conntrack_helper*)* @nfnl_cthelper_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.nf_conntrack_helper* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conntrack_helper*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.nfgenmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nf_conntrack_helper* %5, %struct.nf_conntrack_helper** %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @NLM_F_MULTI, align 4
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @NFNL_SUBSYS_CTHELPER, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @nfnl_msg_type(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %28, i64 %29, i64 %30, i32 %31, i32 16, i32 %32)
  store %struct.nlmsghdr* %33, %struct.nlmsghdr** %14, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %35 = icmp eq %struct.nlmsghdr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %114

37:                                               ; preds = %23
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %39 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.nfgenmsg* %39, %struct.nfgenmsg** %15, align 8
  %40 = load i32, i32* @AF_UNSPEC, align 4
  %41 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %42 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @NFNETLINK_V0, align 4
  %44 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %45 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i32, i32* @NFCTH_NAME, align 4
  %50 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_string(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %115

56:                                               ; preds = %37
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @NFCTH_QUEUE_NUM, align 4
  %59 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %60 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %57, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %115

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %69 = call i64 @nfnl_cthelper_dump_tuple(%struct.sk_buff* %67, %struct.nf_conntrack_helper* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %115

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %75 = call i64 @nfnl_cthelper_dump_policy(%struct.sk_buff* %73, %struct.nf_conntrack_helper* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %115

78:                                               ; preds = %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* @NFCTH_PRIV_DATA_LEN, align 4
  %81 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %82 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @htonl(i32 %83)
  %85 = call i64 @nla_put_be32(%struct.sk_buff* %79, i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %115

88:                                               ; preds = %78
  %89 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %13, align 8
  %90 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NF_CT_HELPER_F_CONFIGURED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @NFCT_HELPER_STATUS_ENABLED, align 4
  store i32 %96, i32* %17, align 4
  br label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @NFCT_HELPER_STATUS_DISABLED, align 4
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load i32, i32* @NFCTH_STATUS, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @htonl(i32 %102)
  %104 = call i64 @nla_put_be32(%struct.sk_buff* %100, i32 %101, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %115

107:                                              ; preds = %99
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %110 = call i32 @nlmsg_end(%struct.sk_buff* %108, %struct.nlmsghdr* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  br label %119

114:                                              ; preds = %36
  br label %115

115:                                              ; preds = %114, %106, %87, %77, %71, %65, %55
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %118 = call i32 @nlmsg_cancel(%struct.sk_buff* %116, %struct.nlmsghdr* %117)
  store i32 -1, i32* %7, align 4
  br label %119

119:                                              ; preds = %115, %107
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nfnl_cthelper_dump_tuple(%struct.sk_buff*, %struct.nf_conntrack_helper*) #1

declare dso_local i64 @nfnl_cthelper_dump_policy(%struct.sk_buff*, %struct.nf_conntrack_helper*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
