; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_userpolicy_info = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.km_event = type { i64, i32, i32 }

@XFRM_MSG_NEWPOLICY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_policy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_userpolicy_info*, align 8
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca %struct.km_event, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %19 = call %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr* %18)
  store %struct.xfrm_userpolicy_info* %19, %struct.xfrm_userpolicy_info** %9, align 8
  %20 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %21 = call i32 @verify_newpolicy_info(%struct.xfrm_userpolicy_info* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = call i32 @verify_sec_ctx_len(%struct.nlattr** %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %91

33:                                               ; preds = %26
  %34 = load %struct.net*, %struct.net** %8, align 8
  %35 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = call %struct.xfrm_policy* @xfrm_policy_construct(%struct.net* %34, %struct.xfrm_userpolicy_info* %35, %struct.nlattr** %36, i32* %12)
  store %struct.xfrm_policy* %37, %struct.xfrm_policy** %10, align 8
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %39 = icmp ne %struct.xfrm_policy* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %91

42:                                               ; preds = %33
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %44 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XFRM_MSG_NEWPOLICY, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %50 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @xfrm_policy_insert(i32 %51, %struct.xfrm_policy* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  %60 = call i32 @xfrm_audit_policy_add(%struct.xfrm_policy* %55, i32 %59, i32 1)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %42
  %64 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %65 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @security_xfrm_policy_free(i32 %66)
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %69 = call i32 @kfree(%struct.xfrm_policy* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %91

71:                                               ; preds = %42
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %73 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %77 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %85 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %9, align 8
  %86 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @km_policy_notify(%struct.xfrm_policy* %84, i32 %87, %struct.km_event* %11)
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %90 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %71, %63, %40, %31, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_userpolicy_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @verify_newpolicy_info(%struct.xfrm_userpolicy_info*) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_construct(%struct.net*, %struct.xfrm_userpolicy_info*, %struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_policy_insert(i32, %struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_add(%struct.xfrm_policy*, i32, i32) #1

declare dso_local i32 @security_xfrm_policy_free(i32) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

declare dso_local i32 @km_policy_notify(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
