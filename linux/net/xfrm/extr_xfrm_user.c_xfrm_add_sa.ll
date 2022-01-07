; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_usersa_info = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.km_event = type { i64, i32, i32 }

@XFRM_MSG_NEWSA = common dso_local global i64 0, align 8
@XFRM_STATE_DEAD = common dso_local global i64 0, align 8
@XFRM_STATE_VOID = common dso_local global i64 0, align 8
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_usersa_info*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.km_event, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %8, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %18 = call %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr* %17)
  store %struct.xfrm_usersa_info* %18, %struct.xfrm_usersa_info** %9, align 8
  %19 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %9, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = call i32 @verify_newsa_info(%struct.xfrm_usersa_info* %19, %struct.nlattr** %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %9, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = call %struct.xfrm_state* @xfrm_state_construct(%struct.net* %27, %struct.xfrm_usersa_info* %28, %struct.nlattr** %29, i32* %11)
  store %struct.xfrm_state* %30, %struct.xfrm_state** %10, align 8
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %32 = icmp ne %struct.xfrm_state* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %98

35:                                               ; preds = %26
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %37 = call i32 @xfrm_state_hold(%struct.xfrm_state* %36)
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XFRM_MSG_NEWSA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %45 = call i32 @xfrm_state_add(%struct.xfrm_state* %44)
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %48 = call i32 @xfrm_state_update(%struct.xfrm_state* %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 1
  %55 = call i32 @xfrm_audit_state_add(%struct.xfrm_state* %50, i32 %54, i32 1)
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load i64, i64* @XFRM_STATE_DEAD, align 8
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %64 = call i32 @xfrm_dev_state_delete(%struct.xfrm_state* %63)
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %66 = call i32 @__xfrm_state_put(%struct.xfrm_state* %65)
  br label %94

67:                                               ; preds = %49
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XFRM_STATE_VOID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i64, i64* @XFRM_STATE_VALID, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %85 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %89 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %93 = call i32 @km_state_notify(%struct.xfrm_state* %92, %struct.km_event* %12)
  br label %94

94:                                               ; preds = %79, %58
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %96 = call i32 @xfrm_state_put(%struct.xfrm_state* %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %33, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_info* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @verify_newsa_info(%struct.xfrm_usersa_info*, %struct.nlattr**) #1

declare dso_local %struct.xfrm_state* @xfrm_state_construct(%struct.net*, %struct.xfrm_usersa_info*, %struct.nlattr**, i32*) #1

declare dso_local i32 @xfrm_state_hold(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_add(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_update(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_add(%struct.xfrm_state*, i32, i32) #1

declare dso_local i32 @xfrm_dev_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
