; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_newmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_newmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.dcbmsg = type { i64, i32, i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32, i32, i32, i32, %struct.nlmsghdr**)* @dcbnl_newmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dcbnl_newmsg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nlmsghdr** %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlmsghdr**, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.dcbmsg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nlmsghdr** %5, %struct.nlmsghdr*** %13, align 8
  %17 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sk_buff* @nlmsg_new(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %52

23:                                               ; preds = %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %26, i32 %27, i32 16, i32 %28)
  store %struct.nlmsghdr* %29, %struct.nlmsghdr** %16, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = icmp ne %struct.nlmsghdr* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %36 = call %struct.dcbmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.dcbmsg* %36, %struct.dcbmsg** %15, align 8
  %37 = load i32, i32* @AF_UNSPEC, align 4
  %38 = load %struct.dcbmsg*, %struct.dcbmsg** %15, align 8
  %39 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.dcbmsg*, %struct.dcbmsg** %15, align 8
  %42 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dcbmsg*, %struct.dcbmsg** %15, align 8
  %44 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %13, align 8
  %46 = icmp ne %struct.nlmsghdr** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %23
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %49 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %13, align 8
  store %struct.nlmsghdr* %48, %struct.nlmsghdr** %49, align 8
  br label %50

50:                                               ; preds = %47, %23
  %51 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  br label %52

52:                                               ; preds = %50, %22
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %53
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dcbmsg* @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
