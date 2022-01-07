; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.xfrm_userpolicy_id = type { i32, i64, i32 }
%struct.km_event = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.TYPE_6__ = type { i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@XFRM_MSG_DELPOLICY = common dso_local global i64 0, align 8
@XFRMA_IF_ID = common dso_local global i64 0, align 8
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_get_policy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.xfrm_userpolicy_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.km_event, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_mark, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.xfrm_sec_ctx*, align 8
  %20 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %8, align 8
  %27 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = call i32 @xfrm_mark_get(%struct.nlattr** %28, %struct.xfrm_mark* %15)
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %31 = call %struct.xfrm_userpolicy_id* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.xfrm_userpolicy_id* %31, %struct.xfrm_userpolicy_id** %10, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XFRM_MSG_DELPOLICY, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %39 = call i32 @copy_from_user_policy_type(i32* %11, %struct.nlattr** %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %199

44:                                               ; preds = %3
  %45 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %46 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @verify_policy_dir(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %199

53:                                               ; preds = %44
  %54 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %55 = load i64, i64* @XFRMA_IF_ID, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %61 = load i64, i64* @XFRMA_IF_ID, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @nla_get_u32(%struct.nlattr* %63)
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %67 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.net*, %struct.net** %8, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %76 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %79 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call %struct.xfrm_policy* @xfrm_policy_byid(%struct.net* %71, i32 %72, i32 %73, i32 %74, i32 %77, i64 %80, i32 %81, i32* %12)
  store %struct.xfrm_policy* %82, %struct.xfrm_policy** %9, align 8
  br label %123

83:                                               ; preds = %65
  %84 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %85 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  store %struct.nlattr* %87, %struct.nlattr** %18, align 8
  %88 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %89 = call i32 @verify_sec_ctx_len(%struct.nlattr** %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %199

94:                                               ; preds = %83
  store %struct.xfrm_sec_ctx* null, %struct.xfrm_sec_ctx** %19, align 8
  %95 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %99 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %98)
  store %struct.xfrm_user_sec_ctx* %99, %struct.xfrm_user_sec_ctx** %20, align 8
  %100 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %20, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx** %19, %struct.xfrm_user_sec_ctx* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %199

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.net*, %struct.net** %8, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %114 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %117 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %116, i32 0, i32 2
  %118 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %19, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net* %109, i32 %110, i32 %111, i32 %112, i32 %115, i32* %117, %struct.xfrm_sec_ctx* %118, i32 %119, i32* %12)
  store %struct.xfrm_policy* %120, %struct.xfrm_policy** %9, align 8
  %121 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %19, align 8
  %122 = call i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx* %121)
  br label %123

123:                                              ; preds = %108, %70
  %124 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %125 = icmp eq %struct.xfrm_policy* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @ENOENT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %199

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %161, label %132

132:                                              ; preds = %129
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %135 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %136 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %139 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.sk_buff* @xfrm_policy_netlink(%struct.sk_buff* %133, %struct.xfrm_policy* %134, i32 %137, i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %21, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %143 = call i64 @IS_ERR(%struct.sk_buff* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %132
  %146 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %147 = call i32 @PTR_ERR(%struct.sk_buff* %146)
  store i32 %147, i32* %12, align 4
  br label %160

148:                                              ; preds = %132
  %149 = load %struct.net*, %struct.net** %8, align 8
  %150 = getelementptr inbounds %struct.net, %struct.net* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = call i32 @NETLINK_CB(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @nlmsg_unicast(i32 %152, %struct.sk_buff* %153, i32 %158)
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %148, %145
  br label %194

161:                                              ; preds = %129
  %162 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 0, i32 1
  %167 = call i32 @xfrm_audit_policy_delete(%struct.xfrm_policy* %162, i32 %166, i32 1)
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %195

171:                                              ; preds = %161
  %172 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %173 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %178 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 0
  store i64 %179, i64* %180, align 8
  %181 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %182 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 2
  store i32 %183, i32* %184, align 4
  %185 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %186 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.km_event, %struct.km_event* %13, i32 0, i32 1
  store i32 %187, i32* %188, align 8
  %189 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %190 = load %struct.xfrm_userpolicy_id*, %struct.xfrm_userpolicy_id** %10, align 8
  %191 = getelementptr inbounds %struct.xfrm_userpolicy_id, %struct.xfrm_userpolicy_id* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @km_policy_notify(%struct.xfrm_policy* %189, i32 %192, %struct.km_event* %13)
  br label %194

194:                                              ; preds = %171, %160
  br label %195

195:                                              ; preds = %194, %170
  %196 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %197 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %195, %126, %105, %92, %51, %42
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_userpolicy_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local i32 @verify_policy_dir(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_byid(%struct.net*, i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net*, i32, i32, i32, i32, i32*, %struct.xfrm_sec_ctx*, i32, i32*) #1

declare dso_local i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx*) #1

declare dso_local %struct.sk_buff* @xfrm_policy_netlink(%struct.sk_buff*, %struct.xfrm_policy*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_audit_policy_delete(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
