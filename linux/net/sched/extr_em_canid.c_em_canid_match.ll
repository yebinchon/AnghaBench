; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i32 }
%struct.tcf_pkt_info = type { i32 }
%struct.canid_match = type { i32, i32, %struct.can_filter* }
%struct.can_filter = type { i32, i32 }

@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_canid_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_canid_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.tcf_pkt_info*, align 8
  %7 = alloca %struct.canid_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.can_filter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %6, align 8
  %12 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %13 = call %struct.canid_match* @em_canid_priv(%struct.tcf_ematch* %12)
  store %struct.canid_match* %13, %struct.canid_match** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @em_canid_get_id(%struct.sk_buff* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @CAN_EFF_FLAG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %21 = load %struct.canid_match*, %struct.canid_match** %7, align 8
  %22 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %21, i32 0, i32 2
  %23 = load %struct.can_filter*, %struct.can_filter** %22, align 8
  store %struct.can_filter* %23, %struct.can_filter** %11, align 8
  br label %24

24:                                               ; preds = %43, %20
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.canid_match*, %struct.canid_match** %7, align 8
  %27 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.can_filter*, %struct.can_filter** %11, align 8
  %32 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %33, %34
  %36 = load %struct.can_filter*, %struct.can_filter** %11, align 8
  %37 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %48

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.can_filter*, %struct.can_filter** %11, align 8
  %47 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %46, i32 1
  store %struct.can_filter* %47, %struct.can_filter** %11, align 8
  br label %24

48:                                               ; preds = %41, %24
  br label %61

49:                                               ; preds = %3
  %50 = load i32, i32* @CAN_SFF_MASK, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.canid_match*, %struct.canid_match** %7, align 8
  %55 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %49, %48
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.canid_match* @em_canid_priv(%struct.tcf_ematch*) #1

declare dso_local i32 @em_canid_get_id(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
