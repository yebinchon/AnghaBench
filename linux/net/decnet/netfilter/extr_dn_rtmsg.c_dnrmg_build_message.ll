; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/netfilter/extr_dn_rtmsg.c_dnrmg_build_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/netfilter/extr_dn_rtmsg.c_dnrmg_build_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nf_dn_rtmsg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32*)* @dnrmg_build_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dnrmg_build_message(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nf_dn_rtmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @NLMSG_ALIGN(i32 %14)
  %16 = call i64 @NLMSG_ALIGN(i32 4)
  %17 = add i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @nlmsg_new(i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %69

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %31, i32 0, i32 0, i32 0, i64 %32, i32 0)
  store %struct.nlmsghdr* %33, %struct.nlmsghdr** %9, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %35 = icmp ne %struct.nlmsghdr* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %69

42:                                               ; preds = %27
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %44 = call i64 @nlmsg_data(%struct.nlmsghdr* %43)
  %45 = inttoptr i64 %44 to %struct.nf_dn_rtmsg*
  store %struct.nf_dn_rtmsg* %45, %struct.nf_dn_rtmsg** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nf_dn_rtmsg*, %struct.nf_dn_rtmsg** %11, align 8
  %52 = getelementptr inbounds %struct.nf_dn_rtmsg, %struct.nf_dn_rtmsg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.nf_dn_rtmsg*, %struct.nf_dn_rtmsg** %11, align 8
  %54 = call i8* @NFDN_RTMSG(%struct.nf_dn_rtmsg* %53)
  store i8* %54, i8** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %55, i8* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %69

69:                                               ; preds = %42, %36, %23
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %70
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i8* @NFDN_RTMSG(%struct.nf_dn_rtmsg*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
