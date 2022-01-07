; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_pol_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_pol_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_user_polexpire = type { i64, %struct.xfrm_userpolicy_info }
%struct.xfrm_userpolicy_info = type { i32, i32, i64 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFRMA_IF_ID = common dso_local global i64 0, align 8
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_pol_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_pol_expire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.xfrm_user_polexpire*, align 8
  %11 = alloca %struct.xfrm_userpolicy_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfrm_mark, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.xfrm_sec_ctx*, align 8
  %19 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = call %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.xfrm_user_polexpire* %25, %struct.xfrm_user_polexpire** %10, align 8
  %26 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %26, i32 0, i32 1
  store %struct.xfrm_userpolicy_info* %27, %struct.xfrm_userpolicy_info** %11, align 8
  %28 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = call i32 @xfrm_mark_get(%struct.nlattr** %31, %struct.xfrm_mark* %14)
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = call i32 @copy_from_user_policy_type(i32* %12, %struct.nlattr** %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %159

39:                                               ; preds = %3
  %40 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %41 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @verify_policy_dir(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %159

48:                                               ; preds = %39
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i64, i64* @XFRMA_IF_ID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %56 = load i64, i64* @XFRMA_IF_ID, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_u32(%struct.nlattr* %58)
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %62 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.net*, %struct.net** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %71 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %74 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.xfrm_policy* @xfrm_policy_byid(%struct.net* %66, i32 %67, i32 %68, i32 %69, i32 %72, i64 %75, i32 0, i32* %13)
  store %struct.xfrm_policy* %76, %struct.xfrm_policy** %9, align 8
  br label %116

77:                                               ; preds = %60
  %78 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %79 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  store %struct.nlattr* %81, %struct.nlattr** %17, align 8
  %82 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %83 = call i32 @verify_sec_ctx_len(%struct.nlattr** %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %159

88:                                               ; preds = %77
  store %struct.xfrm_sec_ctx* null, %struct.xfrm_sec_ctx** %18, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %93 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %92)
  store %struct.xfrm_user_sec_ctx* %93, %struct.xfrm_user_sec_ctx** %19, align 8
  %94 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %19, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx** %18, %struct.xfrm_user_sec_ctx* %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %159

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.net*, %struct.net** %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %108 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %111 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %110, i32 0, i32 1
  %112 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %18, align 8
  %113 = call %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net* %103, i32 %104, i32 %105, i32 %106, i32 %109, i32* %111, %struct.xfrm_sec_ctx* %112, i32 0, i32* %13)
  store %struct.xfrm_policy* %113, %struct.xfrm_policy** %9, align 8
  %114 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %18, align 8
  %115 = call i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx* %114)
  br label %116

116:                                              ; preds = %102, %65
  %117 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %118 = icmp eq %struct.xfrm_policy* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %159

122:                                              ; preds = %116
  %123 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %124 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %155

130:                                              ; preds = %122
  store i32 0, i32* %13, align 4
  %131 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %132 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %137 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %138 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @xfrm_policy_delete(%struct.xfrm_policy* %136, i32 %139)
  %141 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %142 = call i32 @xfrm_audit_policy_delete(%struct.xfrm_policy* %141, i32 1, i32 1)
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %145 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %146 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %149 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %152 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @km_policy_expired(%struct.xfrm_policy* %144, i32 %147, i64 %150, i32 %153)
  br label %155

155:                                              ; preds = %143, %129
  %156 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %157 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %119, %99, %86, %46, %37
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local i32 @verify_policy_dir(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_byid(%struct.net*, i32, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net*, i32, i32, i32, i32, i32*, %struct.xfrm_sec_ctx*, i32, i32*) #1

declare dso_local i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_policy_delete(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_delete(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i32 @km_policy_expired(%struct.xfrm_policy*, i32, i64, i32) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
