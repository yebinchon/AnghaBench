; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tca_get_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tca_get_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcamsg = type { i64, i64, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action**, i32, i32, i32, i32, i32, i32)* @tca_get_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca_get_fill(%struct.sk_buff* %0, %struct.tc_action** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tc_action**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcamsg*, align 8
  %19 = alloca %struct.nlmsghdr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.tc_action** %1, %struct.tc_action*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call i8* @skb_tail_pointer(%struct.sk_buff* %22)
  store i8* %23, i8** %20, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %26, i32 %27, i32 24, i32 %28)
  store %struct.nlmsghdr* %29, %struct.nlmsghdr** %19, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %31 = icmp ne %struct.nlmsghdr* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %8
  br label %73

33:                                               ; preds = %8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %35 = call %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr* %34)
  store %struct.tcamsg* %35, %struct.tcamsg** %18, align 8
  %36 = load i32, i32* @AF_UNSPEC, align 4
  %37 = load %struct.tcamsg*, %struct.tcamsg** %18, align 8
  %38 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tcamsg*, %struct.tcamsg** %18, align 8
  %40 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.tcamsg*, %struct.tcamsg** %18, align 8
  %42 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load i32, i32* @TCA_ACT_TAB, align 4
  %45 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %21, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %73

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = load %struct.tc_action**, %struct.tc_action*** %11, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i64 @tcf_action_dump(%struct.sk_buff* %50, %struct.tc_action** %51, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %73

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %60 = call i32 @nla_nest_end(%struct.sk_buff* %58, %struct.nlattr* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = call i8* @skb_tail_pointer(%struct.sk_buff* %61)
  %63 = load i8*, i8** %20, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %77

73:                                               ; preds = %56, %48, %32
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = call i32 @nlmsg_trim(%struct.sk_buff* %74, i8* %75)
  store i32 -1, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %57
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @tcf_action_dump(%struct.sk_buff*, %struct.tc_action**, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
