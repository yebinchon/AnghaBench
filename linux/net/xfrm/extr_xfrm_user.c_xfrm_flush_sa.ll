; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_flush_sa.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_flush_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.km_event = type { %struct.net*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_usersa_flush = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_flush_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_flush_sa(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.km_event, align 8
  %10 = alloca %struct.xfrm_usersa_flush*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @sock_net(i32 %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %17 = call %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr* %16)
  store %struct.xfrm_usersa_flush* %17, %struct.xfrm_usersa_flush** %10, align 8
  %18 = load %struct.net*, %struct.net** %8, align 8
  %19 = load %struct.xfrm_usersa_flush*, %struct.xfrm_usersa_flush** %10, align 8
  %20 = getelementptr inbounds %struct.xfrm_usersa_flush, %struct.xfrm_usersa_flush* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xfrm_state_flush(%struct.net* %18, i32 %21, i32 1, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ESRCH, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %54

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %54

33:                                               ; preds = %3
  %34 = load %struct.xfrm_usersa_flush*, %struct.xfrm_usersa_flush** %10, align 8
  %35 = getelementptr inbounds %struct.xfrm_usersa_flush, %struct.xfrm_usersa_flush* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %44 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %48 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = getelementptr inbounds %struct.km_event, %struct.km_event* %9, i32 0, i32 0
  store %struct.net* %51, %struct.net** %52, align 8
  %53 = call i32 @km_state_notify(i32* null, %struct.km_event* %9)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %33, %31, %30
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_usersa_flush* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_state_flush(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @km_state_notify(i32*, %struct.km_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
