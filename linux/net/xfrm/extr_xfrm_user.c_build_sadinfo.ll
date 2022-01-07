; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_sadinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_build_sadinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.xfrmk_sadinfo = type { i32, i32, i32 }
%struct.xfrmu_sadhinfo = type { i32, i32 }
%struct.nlmsghdr = type { i32 }

@XFRM_MSG_NEWSADINFO = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@XFRMA_SAD_CNT = common dso_local global i32 0, align 4
@XFRMA_SAD_HINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32, i32)* @build_sadinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_sadinfo(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrmk_sadinfo, align 4
  %13 = alloca %struct.xfrmu_sadhinfo, align 4
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @XFRM_MSG_NEWSADINFO, align 4
  %21 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32 %20, i32 4, i32 0)
  store %struct.nlmsghdr* %21, %struct.nlmsghdr** %14, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %23 = icmp eq %struct.nlmsghdr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %5
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %29 = call i32* @nlmsg_data(%struct.nlmsghdr* %28)
  store i32* %29, i32** %16, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %16, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = call i32 @xfrm_sad_getinfo(%struct.net* %32, %struct.xfrmk_sadinfo* %12)
  %34 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %12, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.xfrmu_sadhinfo, %struct.xfrmu_sadhinfo* %13, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.xfrmu_sadhinfo, %struct.xfrmu_sadhinfo* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @XFRMA_SAD_CNT, align 4
  %42 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %27
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* @XFRMA_SAD_HINFO, align 4
  %50 = call i32 @nla_put(%struct.sk_buff* %48, i32 %49, i32 8, %struct.xfrmu_sadhinfo* %13)
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %57 = call i32 @nlmsg_cancel(%struct.sk_buff* %55, %struct.nlmsghdr* %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %62 = call i32 @nlmsg_end(%struct.sk_buff* %60, %struct.nlmsghdr* %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %54, %24
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_sad_getinfo(%struct.net*, %struct.xfrmk_sadinfo*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.xfrmu_sadhinfo*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
