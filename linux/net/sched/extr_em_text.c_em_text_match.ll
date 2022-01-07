; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_text.c_em_text_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_text.c_em_text_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i32 }
%struct.tcf_pkt_info = type { i32 }
%struct.text_match = type { i32, i64, i32, i64, i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_text_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_text_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.tcf_pkt_info*, align 8
  %7 = alloca %struct.text_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %6, align 8
  %10 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %11 = call %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch* %10)
  store %struct.text_match* %11, %struct.text_match** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.text_match*, %struct.text_match** %7, align 8
  %14 = getelementptr inbounds %struct.text_match, %struct.text_match* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @tcf_get_base_ptr(%struct.sk_buff* %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.text_match*, %struct.text_match** %7, align 8
  %22 = getelementptr inbounds %struct.text_match, %struct.text_match* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.text_match*, %struct.text_match** %7, align 8
  %30 = getelementptr inbounds %struct.text_match, %struct.text_match* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @tcf_get_base_ptr(%struct.sk_buff* %28, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.text_match*, %struct.text_match** %7, align 8
  %38 = getelementptr inbounds %struct.text_match, %struct.text_match* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.text_match*, %struct.text_match** %7, align 8
  %48 = getelementptr inbounds %struct.text_match, %struct.text_match* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @skb_find_text(%struct.sk_buff* %44, i32 %45, i32 %46, i32 %49)
  %51 = load i64, i64* @UINT_MAX, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch*) #1

declare dso_local i32 @tcf_get_base_ptr(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_find_text(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
