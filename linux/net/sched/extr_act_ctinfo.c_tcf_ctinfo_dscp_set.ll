; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_dscp_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_dscp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.tcf_ctinfo = type { i32, i32 }
%struct.tcf_ctinfo_params = type { i32, i32 }
%struct.sk_buff = type { i32 }

@INET_ECN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, %struct.tcf_ctinfo*, %struct.tcf_ctinfo_params*, %struct.sk_buff*, i32, i32)* @tcf_ctinfo_dscp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_ctinfo_dscp_set(%struct.nf_conn* %0, %struct.tcf_ctinfo* %1, %struct.tcf_ctinfo_params* %2, %struct.sk_buff* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.tcf_ctinfo*, align 8
  %9 = alloca %struct.tcf_ctinfo_params*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store %struct.tcf_ctinfo* %1, %struct.tcf_ctinfo** %8, align 8
  store %struct.tcf_ctinfo_params* %2, %struct.tcf_ctinfo_params** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %9, align 8
  %19 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %9, align 8
  %23 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  %26 = shl i32 %25, 2
  %27 = load i32, i32* @INET_ECN_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %103 [
    i32 129, label %31
    i32 128, label %67
  ]

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = call i32 @ip_hdr(%struct.sk_buff* %32)
  %34 = call i32 @ipv4_get_dsfield(i32 %33)
  %35 = load i32, i32* @INET_ECN_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @skb_try_make_writable(%struct.sk_buff* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @likely(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = call i32 @ip_hdr(%struct.sk_buff* %51)
  %53 = load i32, i32* @INET_ECN_MASK, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ipv4_change_dsfield(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %57 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %65

60:                                               ; preds = %41
  %61 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %62 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %50
  br label %66

66:                                               ; preds = %65, %31
  br label %104

67:                                               ; preds = %6
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = call i32 @ipv6_hdr(%struct.sk_buff* %68)
  %70 = call i32 @ipv6_get_dsfield(i32 %69)
  %71 = load i32, i32* @INET_ECN_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @skb_try_make_writable(%struct.sk_buff* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @likely(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = call i32 @ipv6_hdr(%struct.sk_buff* %87)
  %89 = load i32, i32* @INET_ECN_MASK, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ipv6_change_dsfield(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %93 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %101

96:                                               ; preds = %77
  %97 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %8, align 8
  %98 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %86
  br label %102

102:                                              ; preds = %101, %67
  br label %104

103:                                              ; preds = %6
  br label %104

104:                                              ; preds = %103, %102, %66
  ret void
}

declare dso_local i32 @ipv4_get_dsfield(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv4_change_dsfield(i32, i32, i32) #1

declare dso_local i32 @ipv6_get_dsfield(i32) #1

declare dso_local i32 @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_change_dsfield(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
