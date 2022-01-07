; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_u32.c_em_u32_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_u32.c_em_u32_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.tcf_pkt_info = type { i8*, i32 }
%struct.tc_u32_key = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_u32_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_u32_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_ematch*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca %struct.tc_u32_key*, align 8
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %6, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %7, align 8
  %10 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %11 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tc_u32_key*
  store %struct.tc_u32_key* %13, %struct.tc_u32_key** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i8* @skb_network_header(%struct.sk_buff* %14)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %17 = icmp ne %struct.tcf_pkt_info* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %20 = getelementptr inbounds %struct.tcf_pkt_info, %struct.tcf_pkt_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_pkt_info, %struct.tcf_pkt_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %29 = getelementptr inbounds %struct.tcf_pkt_info, %struct.tcf_pkt_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tc_u32_key*, %struct.tc_u32_key** %8, align 8
  %32 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = load i8*, i8** %9, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %27, %3
  %39 = load %struct.tc_u32_key*, %struct.tc_u32_key** %8, align 8
  %40 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @tcf_valid_offset(%struct.sk_buff* %45, i8* %46, i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %65

50:                                               ; preds = %38
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tc_u32_key*, %struct.tc_u32_key** %8, align 8
  %55 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %53, %56
  %58 = load %struct.tc_u32_key*, %struct.tc_u32_key** %8, align 8
  %59 = getelementptr inbounds %struct.tc_u32_key, %struct.tc_u32_key* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %50, %49
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @tcf_valid_offset(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
