; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_match_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_match_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.xt_ecn_info* }
%struct.xt_ecn_info = type { i32, i32 }
%struct.tcphdr = type { i32, i32 }

@XT_ECN_OP_MATCH_ECE = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @match_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tcp(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_ecn_info*, align 8
  %7 = alloca %struct.tcphdr, align 4
  %8 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 1
  %11 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %10, align 8
  store %struct.xt_ecn_info* %11, %struct.xt_ecn_info** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %12, i32 %15, i32 8, %struct.tcphdr* %7)
  store %struct.tcphdr* %16, %struct.tcphdr** %8, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %18 = icmp eq %struct.tcphdr* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %22 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XT_ECN_OP_MATCH_ECE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %29 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XT_ECN_OP_MATCH_ECE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %79

40:                                               ; preds = %34
  br label %48

41:                                               ; preds = %27
  %42 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %79

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %51 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XT_ECN_OP_MATCH_CWR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %58 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XT_ECN_OP_MATCH_CWR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %79

69:                                               ; preds = %63
  br label %77

70:                                               ; preds = %56
  %71 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %79

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %49
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75, %68, %46, %39, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
