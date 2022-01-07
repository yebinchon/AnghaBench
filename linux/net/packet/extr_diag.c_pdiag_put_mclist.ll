; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_mclist.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_mclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_sock = type { %struct.packet_mclist* }
%struct.packet_mclist = type { i32, i32, i32, i32, i32, %struct.packet_mclist* }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.packet_diag_mclist = type { i32, i32, i32, i32, i32 }

@PACKET_DIAG_MCLIST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_sock*, %struct.sk_buff*)* @pdiag_put_mclist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdiag_put_mclist(%struct.packet_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.packet_mclist*, align 8
  %8 = alloca %struct.packet_diag_mclist*, align 8
  store %struct.packet_sock* %0, %struct.packet_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @PACKET_DIAG_MCLIST, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %6, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = call i32 (...) @rtnl_lock()
  %19 = load %struct.packet_sock*, %struct.packet_sock** %4, align 8
  %20 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %19, i32 0, i32 0
  %21 = load %struct.packet_mclist*, %struct.packet_mclist** %20, align 8
  store %struct.packet_mclist* %21, %struct.packet_mclist** %7, align 8
  br label %22

22:                                               ; preds = %66, %17
  %23 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %24 = icmp ne %struct.packet_mclist* %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.packet_diag_mclist* @nla_reserve_nohdr(%struct.sk_buff* %26, i32 20)
  store %struct.packet_diag_mclist* %27, %struct.packet_diag_mclist** %8, align 8
  %28 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %29 = icmp ne %struct.packet_diag_mclist* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = call i32 (...) @rtnl_unlock()
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %34 = call i32 @nla_nest_cancel(%struct.sk_buff* %32, %struct.nlattr* %33)
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %39 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %42 = getelementptr inbounds %struct.packet_diag_mclist, %struct.packet_diag_mclist* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %44 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %47 = getelementptr inbounds %struct.packet_diag_mclist, %struct.packet_diag_mclist* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %49 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %52 = getelementptr inbounds %struct.packet_diag_mclist, %struct.packet_diag_mclist* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %54 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %57 = getelementptr inbounds %struct.packet_diag_mclist, %struct.packet_diag_mclist* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = call i32 @BUILD_BUG_ON(i32 0)
  %59 = load %struct.packet_diag_mclist*, %struct.packet_diag_mclist** %8, align 8
  %60 = getelementptr inbounds %struct.packet_diag_mclist, %struct.packet_diag_mclist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %63 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 4)
  br label %66

66:                                               ; preds = %37
  %67 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %68 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %67, i32 0, i32 5
  %69 = load %struct.packet_mclist*, %struct.packet_mclist** %68, align 8
  store %struct.packet_mclist* %69, %struct.packet_mclist** %7, align 8
  br label %22

70:                                               ; preds = %22
  %71 = call i32 (...) @rtnl_unlock()
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %74 = call i32 @nla_nest_end(%struct.sk_buff* %72, %struct.nlattr* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %30, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.packet_diag_mclist* @nla_reserve_nohdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
