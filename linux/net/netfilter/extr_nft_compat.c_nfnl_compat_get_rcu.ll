; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nfnl_compat_get_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nfnl_compat_get_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFTA_COMPAT_NAME = common dso_local global i64 0, align 8
@NFTA_COMPAT_REV = common dso_local global i64 0, align 8
@NFTA_COMPAT_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ipt_%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ip6t_%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ebt_%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"arpt_%s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nft_compat: unsupported protocol %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFNL_MSG_COMPAT_GET = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nfnl_compat_get_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_compat_get_rcu(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfgenmsg*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = load i64, i64* @NFTA_COMPAT_NAME, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp eq %struct.nlattr* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load i64, i64* @NFTA_COMPAT_REV, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp eq %struct.nlattr* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %36 = load i64, i64* @NFTA_COMPAT_TYPE, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28, %6
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %164

43:                                               ; preds = %34
  %44 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %45 = load i64, i64* @NFTA_COMPAT_NAME, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i8* @nla_data(%struct.nlattr* %47)
  store i8* %48, i8** %18, align 8
  %49 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %50 = load i64, i64* @NFTA_COMPAT_REV, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be32(%struct.nlattr* %52)
  %54 = call i8* @ntohl(i32 %53)
  store i8* %54, i8** %19, align 8
  %55 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %56 = load i64, i64* @NFTA_COMPAT_TYPE, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_be32(%struct.nlattr* %58)
  %60 = call i8* @ntohl(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %63 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %62)
  store %struct.nfgenmsg* %63, %struct.nfgenmsg** %16, align 8
  %64 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %65 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %71 [
    i32 131, label %67
    i32 130, label %68
    i32 128, label %69
    i32 129, label %70
  ]

67:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %78

68:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %78

69:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %78

70:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %78

71:                                               ; preds = %43
  %72 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %73 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %164

78:                                               ; preds = %70, %69, %68, %67
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = call i32 @try_module_get(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %164

85:                                               ; preds = %78
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %88 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %18, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @xt_find_revision(i32 %89, i8* %90, i8* %91, i32 %92, i32* %14)
  %94 = load i8*, i8** %17, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = call i32 @try_then_request_module(i32 %93, i8* %94, i8* %95)
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %149

100:                                              ; preds = %85
  %101 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.sk_buff* @nlmsg_new(i32 %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %20, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %105 = icmp eq %struct.sk_buff* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  br label %149

109:                                              ; preds = %100
  %110 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call i32 @NETLINK_CB(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %117 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %120 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @NFNL_MSG_TYPE(i32 %121)
  %123 = load i32, i32* @NFNL_MSG_COMPAT_GET, align 4
  %124 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %125 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %18, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i64 @nfnl_compat_fill_info(%struct.sk_buff* %110, i32 %115, i32 %118, i32 %122, i32 %123, i32 %126, i8* %127, i32 %128, i32 %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %109
  %133 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  br label %149

135:                                              ; preds = %109
  %136 = load %struct.sock*, %struct.sock** %9, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call i32 @NETLINK_CB(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MSG_DONTWAIT, align 4
  %144 = call i32 @netlink_unicast(%struct.sock* %136, %struct.sk_buff* %137, i32 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148, %132, %106, %99
  %150 = call i32 (...) @rcu_read_lock()
  %151 = load i32, i32* @THIS_MODULE, align 4
  %152 = call i32 @module_put(i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @EAGAIN, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i32, i32* @ENOBUFS, align 4
  %159 = sub nsw i32 0, %158
  br label %162

160:                                              ; preds = %149
  %161 = load i32, i32* %14, align 4
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi i32 [ %159, %157 ], [ %161, %160 ]
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %162, %82, %71, %40
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @try_then_request_module(i32, i8*, i8*) #1

declare dso_local i32 @xt_find_revision(i32, i8*, i8*, i32, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i64 @nfnl_compat_fill_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NFNL_MSG_TYPE(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
