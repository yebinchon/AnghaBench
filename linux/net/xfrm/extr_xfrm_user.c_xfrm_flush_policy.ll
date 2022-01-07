; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_flush_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_flush_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_flush_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_flush_policy(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.km_event, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @sock_net(i32 %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = call i32 @copy_from_user_policy_type(i32* %10, %struct.nlattr** %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.net*, %struct.net** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @xfrm_policy_flush(%struct.net* %24, i32 %25, i32 1)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ESRCH, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %56

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %42 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %46 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load %struct.net*, %struct.net** %8, align 8
  %54 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 0
  store %struct.net* %53, %struct.net** %54, align 8
  %55 = call i32 @km_policy_notify(i32* null, i32 0, %struct.km_event* %9)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %37, %35, %34, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local i32 @xfrm_policy_flush(%struct.net*, i32, i32) #1

declare dso_local i32 @km_policy_notify(i32*, i32, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
