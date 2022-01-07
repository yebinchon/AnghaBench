; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_getid.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_getid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_fill_args = type { i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@NETNSA_MAX = common dso_local global i32 0, align 4
@RTM_NEWNSID = common dso_local global i32 0, align 4
@NETNSA_PID = common dso_local global i64 0, align 8
@NETNSA_FD = common dso_local global i64 0, align 8
@NETNSA_NSID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Peer netns reference is missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Peer netns reference is invalid\00", align 1
@NETNSA_TARGET_NSID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Target netns reference is invalid\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_net_getid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_net_getid(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_fill_args, align 8
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %8, align 8
  %26 = load i32, i32* @NETNSA_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 1
  store i8* null, i8** %32, align 8
  %33 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 2
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 3
  %35 = load i32, i32* @RTM_NEWNSID, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 4
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %38 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 5
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i64 @NETLINK_CB(%struct.sk_buff* %41)
  %43 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %42, i64* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %40, align 8
  %46 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %46, %struct.net** %14, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @rtnl_net_valid_getid_req(%struct.sk_buff* %47, %struct.nlmsghdr* %48, %struct.nlattr** %30, %struct.netlink_ext_ack* %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %202

55:                                               ; preds = %3
  %56 = load i64, i64* @NETNSA_PID, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i64, i64* @NETNSA_PID, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @nla_get_u32(%struct.nlattr* %63)
  %65 = call %struct.net* @get_net_ns_by_pid(i32 %64)
  store %struct.net* %65, %struct.net** %13, align 8
  %66 = load i64, i64* @NETNSA_PID, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  store %struct.nlattr* %68, %struct.nlattr** %15, align 8
  br label %112

69:                                               ; preds = %55
  %70 = load i64, i64* @NETNSA_FD, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i64, i64* @NETNSA_FD, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i32 @nla_get_u32(%struct.nlattr* %77)
  %79 = call %struct.net* @get_net_ns_by_fd(i32 %78)
  store %struct.net* %79, %struct.net** %13, align 8
  %80 = load i64, i64* @NETNSA_FD, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  store %struct.nlattr* %82, %struct.nlattr** %15, align 8
  br label %111

83:                                               ; preds = %69
  %84 = load i64, i64* @NETNSA_NSID, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.net*, %struct.net** %8, align 8
  %90 = load i64, i64* @NETNSA_NSID, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i32 @nla_get_s32(%struct.nlattr* %92)
  %94 = call %struct.net* @get_net_ns_by_id(%struct.net* %89, i32 %93)
  store %struct.net* %94, %struct.net** %13, align 8
  %95 = load %struct.net*, %struct.net** %13, align 8
  %96 = icmp ne %struct.net* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.net* @ERR_PTR(i32 %99)
  store %struct.net* %100, %struct.net** %13, align 8
  br label %101

101:                                              ; preds = %97, %88
  %102 = load i64, i64* @NETNSA_NSID, align 8
  %103 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %102
  %104 = load %struct.nlattr*, %struct.nlattr** %103, align 8
  store %struct.nlattr* %104, %struct.nlattr** %15, align 8
  br label %110

105:                                              ; preds = %83
  %106 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %107 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %202

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %74
  br label %112

112:                                              ; preds = %111, %60
  %113 = load %struct.net*, %struct.net** %13, align 8
  %114 = call i64 @IS_ERR(%struct.net* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %118 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %119 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %117, %struct.nlattr* %118)
  %120 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %121 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.net*, %struct.net** %13, align 8
  %123 = call i32 @PTR_ERR(%struct.net* %122)
  store i32 %123, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %202

124:                                              ; preds = %112
  %125 = load i64, i64* @NETNSA_TARGET_NSID, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %160

129:                                              ; preds = %124
  %130 = load i64, i64* @NETNSA_TARGET_NSID, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = call i32 @nla_get_s32(%struct.nlattr* %132)
  store i32 %133, i32* %19, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = call i64 @NETLINK_CB(%struct.sk_buff* %134)
  %136 = bitcast %struct.TYPE_2__* %20 to i64*
  store i64 %135, i64* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %19, align 4
  %140 = call %struct.net* @rtnl_get_net_ns_capable(i32 %138, i32 %139)
  store %struct.net* %140, %struct.net** %14, align 8
  %141 = load %struct.net*, %struct.net** %14, align 8
  %142 = call i64 @IS_ERR(%struct.net* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %129
  %145 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %146 = load i64, i64* @NETNSA_TARGET_NSID, align 8
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %145, %struct.nlattr* %148)
  %150 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %151 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %152 = load %struct.net*, %struct.net** %14, align 8
  %153 = call i32 @PTR_ERR(%struct.net* %152)
  store i32 %153, i32* %17, align 4
  br label %191

154:                                              ; preds = %129
  %155 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.net*, %struct.net** %8, align 8
  %157 = load %struct.net*, %struct.net** %13, align 8
  %158 = call i8* @peernet2id(%struct.net* %156, %struct.net* %157)
  %159 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 2
  store i8* %158, i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %124
  %161 = call i32 (...) @rtnl_net_get_size()
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call %struct.sk_buff* @nlmsg_new(i32 %161, i32 %162)
  store %struct.sk_buff* %163, %struct.sk_buff** %16, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %165 = icmp ne %struct.sk_buff* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %17, align 4
  br label %191

169:                                              ; preds = %160
  %170 = load %struct.net*, %struct.net** %14, align 8
  %171 = load %struct.net*, %struct.net** %13, align 8
  %172 = call i8* @peernet2id(%struct.net* %170, %struct.net* %171)
  %173 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %175 = call i32 @rtnl_net_fill(%struct.sk_buff* %174, %struct.net_fill_args* %11)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %188

179:                                              ; preds = %169
  %180 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %181 = load %struct.net*, %struct.net** %8, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = call i64 @NETLINK_CB(%struct.sk_buff* %182)
  %184 = bitcast %struct.TYPE_2__* %21 to i64*
  store i64 %183, i64* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @rtnl_unicast(%struct.sk_buff* %180, %struct.net* %181, i32 %186)
  store i32 %187, i32* %17, align 4
  br label %191

188:                                              ; preds = %178
  %189 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %190 = call i32 @nlmsg_free(%struct.sk_buff* %189)
  br label %191

191:                                              ; preds = %188, %179, %166, %144
  %192 = getelementptr inbounds %struct.net_fill_args, %struct.net_fill_args* %11, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.net*, %struct.net** %14, align 8
  %197 = call i32 @put_net(%struct.net* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.net*, %struct.net** %13, align 8
  %200 = call i32 @put_net(%struct.net* %199)
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %202

202:                                              ; preds = %198, %116, %105, %53
  %203 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_net_valid_getid_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.net* @get_net_ns_by_pid(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local %struct.net* @get_net_ns_by_id(%struct.net*, i32) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net* @ERR_PTR(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local %struct.net* @rtnl_get_net_ns_capable(i32, i32) #1

declare dso_local i8* @peernet2id(%struct.net*, %struct.net*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rtnl_net_get_size(...) #1

declare dso_local i32 @rtnl_net_fill(%struct.sk_buff*, %struct.net_fill_args*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @put_net(%struct.net*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
