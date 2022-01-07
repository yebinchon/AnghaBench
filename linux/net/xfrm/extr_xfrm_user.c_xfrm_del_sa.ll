; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_del_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_del_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, i32, i32 }
%struct.xfrm_usersa_id = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_del_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_del_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.km_event, align 4
  %12 = alloca %struct.xfrm_usersa_id*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %8, align 8
  %17 = load i32, i32* @ESRCH, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = call %struct.xfrm_usersa_id* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.xfrm_usersa_id* %20, %struct.xfrm_usersa_id** %12, align 8
  %21 = load %struct.net*, %struct.net** %8, align 8
  %22 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %12, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %24 = call %struct.xfrm_state* @xfrm_user_state_lookup(%struct.net* %21, %struct.xfrm_usersa_id* %22, %struct.nlattr** %23, i32* %10)
  store %struct.xfrm_state* %24, %struct.xfrm_state** %9, align 8
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %26 = icmp eq %struct.xfrm_state* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %72

29:                                               ; preds = %3
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %31 = call i32 @security_xfrm_state_delete(%struct.xfrm_state* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %62

34:                                               ; preds = %29
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %36 = call i64 @xfrm_state_kern(%struct.xfrm_state* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %62

41:                                               ; preds = %34
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %43 = call i32 @xfrm_state_delete(%struct.xfrm_state* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %62

47:                                               ; preds = %41
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %49 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %53 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.km_event, %struct.km_event* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %61 = call i32 @km_state_notify(%struct.xfrm_state* %60, %struct.km_event* %11)
  br label %62

62:                                               ; preds = %47, %46, %38, %33
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %63, i32 %67, i32 1)
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %70 = call i32 @xfrm_state_put(%struct.xfrm_state* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %62, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.xfrm_state* @xfrm_user_state_lookup(%struct.net*, %struct.xfrm_usersa_id*, %struct.nlattr**, i32*) #1

declare dso_local i32 @security_xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
