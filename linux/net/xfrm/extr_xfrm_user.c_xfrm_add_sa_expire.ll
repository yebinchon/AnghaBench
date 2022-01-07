; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_sa_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_sa_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xfrm_user_expire = type { i64, %struct.xfrm_usersa_info }
%struct.xfrm_usersa_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.xfrm_mark = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_sa_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_sa_expire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_user_expire*, align 8
  %12 = alloca %struct.xfrm_usersa_info*, align 8
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = call %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.xfrm_user_expire* %20, %struct.xfrm_user_expire** %11, align 8
  %21 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %22 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %21, i32 0, i32 1
  store %struct.xfrm_usersa_info* %22, %struct.xfrm_usersa_info** %12, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %24 = call i32 @xfrm_mark_get(%struct.nlattr** %23, %struct.xfrm_mark* %13)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %28 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %31 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %35 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %12, align 8
  %39 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %25, i32 %26, i32* %29, i32 %33, i32 %37, i32 %40)
  store %struct.xfrm_state* %41, %struct.xfrm_state** %9, align 8
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %45 = icmp eq %struct.xfrm_state* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %3
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFRM_STATE_VALID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %80

61:                                               ; preds = %48
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %63 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %64 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @km_state_expired(%struct.xfrm_state* %62, i64 %65, i32 %68)
  %70 = load %struct.xfrm_user_expire*, %struct.xfrm_user_expire** %11, align 8
  %71 = getelementptr inbounds %struct.xfrm_user_expire, %struct.xfrm_user_expire* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %76 = call i32 @__xfrm_state_delete(%struct.xfrm_state* %75)
  %77 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %78 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %77, i32 1, i32 1)
  br label %79

79:                                               ; preds = %74, %61
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_bh(i32* %82)
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %85 = call i32 @xfrm_state_put(%struct.xfrm_state* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %46
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_expire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @km_state_expired(%struct.xfrm_state*, i64, i32) #1

declare dso_local i32 @__xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
