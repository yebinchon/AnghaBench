; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_new_ae.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_new_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.km_event = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_aevent_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFRMA_REPLAY_VAL = common dso_local global i64 0, align 8
@XFRMA_REPLAY_ESN_VAL = common dso_local global i64 0, align 8
@XFRMA_LTIME_VAL = common dso_local global i64 0, align 8
@XFRMA_ETIMER_THRESH = common dso_local global i64 0, align 8
@XFRMA_REPLAY_THRESH = common dso_local global i64 0, align 8
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_AE_CU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_new_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_new_ae(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.km_event, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca %struct.xfrm_aevent_id*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.xfrm_aevent_id* %27, %struct.xfrm_aevent_id** %14, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %29 = load i64, i64* @XFRMA_REPLAY_VAL, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  store %struct.nlattr* %31, %struct.nlattr** %15, align 8
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @XFRMA_REPLAY_ESN_VAL, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  store %struct.nlattr* %35, %struct.nlattr** %16, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = load i64, i64* @XFRMA_LTIME_VAL, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  store %struct.nlattr* %39, %struct.nlattr** %17, align 8
  %40 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %41 = load i64, i64* @XFRMA_ETIMER_THRESH, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  store %struct.nlattr* %43, %struct.nlattr** %18, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %45 = load i64, i64* @XFRMA_REPLAY_THRESH, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  store %struct.nlattr* %47, %struct.nlattr** %19, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %3
  %51 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %147

64:                                               ; preds = %59, %56, %53, %50, %3
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %66 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NLM_F_REPLACE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %147

73:                                               ; preds = %64
  %74 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %75 = call i32 @xfrm_mark_get(%struct.nlattr** %74, %struct.xfrm_mark* %13)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.net*, %struct.net** %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %79 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %82 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %86 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.xfrm_aevent_id*, %struct.xfrm_aevent_id** %14, align 8
  %90 = getelementptr inbounds %struct.xfrm_aevent_id, %struct.xfrm_aevent_id* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %76, i32 %77, i32* %80, i32 %84, i32 %88, i32 %92)
  store %struct.xfrm_state* %93, %struct.xfrm_state** %9, align 8
  %94 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %95 = icmp eq %struct.xfrm_state* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %73
  %97 = load i32, i32* @ESRCH, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %147

99:                                               ; preds = %73
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @XFRM_STATE_VALID, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %143

107:                                              ; preds = %99
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %109 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %112 = call i32 @xfrm_replay_verify_len(i32 %110, %struct.nlattr* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %143

116:                                              ; preds = %107
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 0
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %121 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %122 = call i32 @xfrm_update_ae_params(%struct.xfrm_state* %120, %struct.nlattr** %121, i32 1)
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %124 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock_bh(i32* %124)
  %126 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %127 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %131 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 2
  store i32 %132, i32* %133, align 4
  %134 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %135 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @XFRM_AE_CU, align 4
  %139 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %142 = call i32 @km_state_notify(%struct.xfrm_state* %141, %struct.km_event* %10)
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %116, %115, %106
  %144 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %145 = call i32 @xfrm_state_put(%struct.xfrm_state* %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %96, %71, %62
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_aevent_id* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @xfrm_replay_verify_len(i32, %struct.nlattr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xfrm_update_ae_params(%struct.xfrm_state*, %struct.nlattr**, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
