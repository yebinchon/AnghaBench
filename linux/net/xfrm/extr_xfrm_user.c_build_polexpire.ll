; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_polexpire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_polexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_policy = type { i32, i32, i32 }
%struct.km_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_user_polexpire = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_POLEXPIRE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_policy*, i32, %struct.km_event*)* @build_polexpire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_polexpire(%struct.sk_buff* %0, %struct.xfrm_policy* %1, i32 %2, %struct.km_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.km_event*, align 8
  %10 = alloca %struct.xfrm_user_polexpire*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.km_event* %3, %struct.km_event** %9, align 8
  %14 = load %struct.km_event*, %struct.km_event** %9, align 8
  %15 = getelementptr inbounds %struct.km_event, %struct.km_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.km_event*, %struct.km_event** %9, align 8
  %20 = getelementptr inbounds %struct.km_event, %struct.km_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XFRM_MSG_POLEXPIRE, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %21, i32 0, i32 %22, i32 8, i32 0)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %12, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %91

29:                                               ; preds = %4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %31 = call %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.xfrm_user_polexpire* %31, %struct.xfrm_user_polexpire** %10, align 8
  %32 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %33 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %34 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %33, i32 0, i32 1
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @copy_to_user_policy(%struct.xfrm_policy* %32, i32* %34, i32 %35)
  %37 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @copy_to_user_tmpl(%struct.xfrm_policy* %37, %struct.sk_buff* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @copy_to_user_sec_ctx(%struct.xfrm_policy* %43, %struct.sk_buff* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %29
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @copy_to_user_policy_type(i32 %52, %struct.sk_buff* %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %61 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %60, i32 0, i32 1
  %62 = call i32 @xfrm_mark_put(%struct.sk_buff* %59, i32* %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %69 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @xfrm_if_id_put(%struct.sk_buff* %67, i32 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %78 = call i32 @nlmsg_cancel(%struct.sk_buff* %76, %struct.nlmsghdr* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %91

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %87 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %90 = call i32 @nlmsg_end(%struct.sk_buff* %88, %struct.nlmsghdr* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %80, %75, %26
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @copy_to_user_policy(%struct.xfrm_policy*, i32*, i32) #1

declare dso_local i32 @copy_to_user_tmpl(%struct.xfrm_policy*, %struct.sk_buff*) #1

declare dso_local i32 @copy_to_user_sec_ctx(%struct.xfrm_policy*, %struct.sk_buff*) #1

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
