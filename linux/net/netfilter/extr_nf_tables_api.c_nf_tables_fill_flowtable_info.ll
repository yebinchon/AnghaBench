; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_flowtable_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_flowtable_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_flowtable = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.net_device = type { i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_TABLE = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_NAME = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_USE = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HANDLE = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_PAD = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK_NUM = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK_PRIORITY = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_HOOK_DEVS = common dso_local global i32 0, align 4
@NFTA_DEVICE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_flowtable*)* @nf_tables_fill_flowtable_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_flowtable_info(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.nft_flowtable* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nft_flowtable*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nfgenmsg*, align 8
  %21 = alloca %struct.nlmsghdr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.nft_flowtable* %7, %struct.nft_flowtable** %17, align 8
  %24 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @nfnl_msg_type(i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %27, i32 %28, i32 %29, i32 %30, i32 12, i32 %31)
  store %struct.nlmsghdr* %32, %struct.nlmsghdr** %21, align 8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %34 = icmp eq %struct.nlmsghdr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  br label %165

36:                                               ; preds = %8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %38 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.nfgenmsg* %38, %struct.nfgenmsg** %20, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %41 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NFNETLINK_V0, align 4
  %43 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %44 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.net*, %struct.net** %11, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %52 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = load i32, i32* @NFTA_FLOWTABLE_TABLE, align 4
  %55 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %56 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %55, i32 0, i32 7
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_string(%struct.sk_buff* %53, i32 %54, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %36
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = load i32, i32* @NFTA_FLOWTABLE_NAME, align 4
  %65 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %66 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @nla_put_string(%struct.sk_buff* %63, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load i32, i32* @NFTA_FLOWTABLE_USE, align 4
  %73 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %74 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @htonl(i32 %75)
  %77 = call i64 @nla_put_be32(%struct.sk_buff* %71, i32 %72, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %70
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load i32, i32* @NFTA_FLOWTABLE_HANDLE, align 4
  %82 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %83 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cpu_to_be64(i32 %84)
  %86 = load i32, i32* @NFTA_FLOWTABLE_PAD, align 4
  %87 = call i64 @nla_put_be64(%struct.sk_buff* %80, i32 %81, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79, %70, %62, %36
  br label %165

90:                                               ; preds = %79
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = load i32, i32* @NFTA_FLOWTABLE_HOOK, align 4
  %93 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %91, i32 %92)
  store %struct.nlattr* %93, %struct.nlattr** %18, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %165

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = load i32, i32* @NFTA_FLOWTABLE_HOOK_NUM, align 4
  %100 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %101 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @htonl(i32 %102)
  %104 = call i64 @nla_put_be32(%struct.sk_buff* %98, i32 %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %97
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = load i32, i32* @NFTA_FLOWTABLE_HOOK_PRIORITY, align 4
  %109 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %110 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @htonl(i32 %111)
  %113 = call i64 @nla_put_be32(%struct.sk_buff* %107, i32 %108, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %97
  br label %165

116:                                              ; preds = %106
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load i32, i32* @NFTA_FLOWTABLE_HOOK_DEVS, align 4
  %119 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %117, i32 %118)
  store %struct.nlattr* %119, %struct.nlattr** %19, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %121 = icmp ne %struct.nlattr* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %165

123:                                              ; preds = %116
  store i32 0, i32* %22, align 4
  br label %124

124:                                              ; preds = %152, %123
  %125 = load i32, i32* %22, align 4
  %126 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %127 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %132 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.net_device* @READ_ONCE(i32 %138)
  store %struct.net_device* %139, %struct.net_device** %23, align 8
  %140 = load %struct.net_device*, %struct.net_device** %23, align 8
  %141 = icmp ne %struct.net_device* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %130
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = load i32, i32* @NFTA_DEVICE_NAME, align 4
  %145 = load %struct.net_device*, %struct.net_device** %23, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @nla_put_string(%struct.sk_buff* %143, i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %165

151:                                              ; preds = %142, %130
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %124

155:                                              ; preds = %124
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %158 = call i32 @nla_nest_end(%struct.sk_buff* %156, %struct.nlattr* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %161 = call i32 @nla_nest_end(%struct.sk_buff* %159, %struct.nlattr* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %163 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %164 = call i32 @nlmsg_end(%struct.sk_buff* %162, %struct.nlmsghdr* %163)
  store i32 0, i32* %9, align 4
  br label %169

165:                                              ; preds = %150, %122, %115, %96, %89, %35
  %166 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %167 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %168 = call i32 @nlmsg_trim(%struct.sk_buff* %166, %struct.nlmsghdr* %167)
  store i32 -1, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %155
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_device* @READ_ONCE(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
