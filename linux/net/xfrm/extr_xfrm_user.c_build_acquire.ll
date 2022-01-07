; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfrm_tmpl = type { i32, i32, i32 }
%struct.xfrm_policy = type { i32, i32, i32 }
%struct.xfrm_user_acquire = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_ACQUIRE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRM_POLICY_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*)* @build_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_acquire(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.xfrm_tmpl* %2, %struct.xfrm_policy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_state*, align 8
  %8 = alloca %struct.xfrm_tmpl*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_user_acquire*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %7, align 8
  store %struct.xfrm_tmpl* %2, %struct.xfrm_tmpl** %8, align 8
  store %struct.xfrm_policy* %3, %struct.xfrm_policy** %9, align 8
  %14 = call i32 (...) @xfrm_get_acqseq()
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* @XFRM_MSG_ACQUIRE, align 4
  %17 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %15, i32 0, i32 0, i32 %16, i32 32, i32 0)
  store %struct.nlmsghdr* %17, %struct.nlmsghdr** %12, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %19 = icmp eq %struct.nlmsghdr* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %115

23:                                               ; preds = %4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %25 = call %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.xfrm_user_acquire* %25, %struct.xfrm_user_acquire** %11, align 8
  %26 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %26, i32 0, i32 7
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 3
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  %31 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %32 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %31, i32 0, i32 6
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %32, i32* %35, i32 4)
  %37 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %38 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %37, i32 0, i32 5
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 1
  %41 = call i32 @memcpy(i32* %38, i32* %40, i32 4)
  %42 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %43 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %44 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %43, i32 0, i32 4
  %45 = load i32, i32* @XFRM_POLICY_OUT, align 4
  %46 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %42, i32* %44, i32 %45)
  %47 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %48 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %51 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %53 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %56 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %58 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %61 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %11, align 8
  %67 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @copy_to_user_tmpl(%struct.xfrm_policy* %68, %struct.sk_buff* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %23
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call i32 @copy_to_user_state_sec_ctx(%struct.xfrm_state* %74, %struct.sk_buff* %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %73, %23
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %82 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @copy_to_user_policy_type(i32 %83, %struct.sk_buff* %84)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %92 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %91, i32 0, i32 1
  %93 = call i32 @xfrm_mark_put(%struct.sk_buff* %90, i32* %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %100 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @xfrm_if_id_put(%struct.sk_buff* %98, i32 %101)
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %109 = call i32 @nlmsg_cancel(%struct.sk_buff* %107, %struct.nlmsghdr* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %114 = call i32 @nlmsg_end(%struct.sk_buff* %112, %struct.nlmsghdr* %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %106, %20
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @xfrm_get_acqseq(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, i32*, i32) #1

declare dso_local i32 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_state_sec_ctx(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_policy_type(i32, %struct.sk_buff*) #1

declare dso_local i32 @xfrm_mark_put(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_if_id_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
