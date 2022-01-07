; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_throttle_flow.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tc_edt.c_throttle_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }

@flow_map = common dso_local global i32 0, align 4
@NS_PER_SEC = common dso_local global i64 0, align 8
@THROTTLE_RATE_BPS = common dso_local global i64 0, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@TIME_HORIZON_NS = common dso_local global i64 0, align 8
@ECN_HORIZON_NS = common dso_local global i64 0, align 8
@BPF_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__sk_buff*)* @throttle_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_flow(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = call i64* @bpf_map_lookup_elem(i32* @flow_map, i32* %4)
  store i64* %10, i64** %5, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NS_PER_SEC, align 8
  %15 = mul nsw i64 %13, %14
  %16 = load i64, i64* @THROTTLE_RATE_BPS, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = call i64 (...) @bpf_ktime_get_ns()
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @BPF_ANY, align 4
  %41 = call i64 @bpf_map_update_elem(i32* @flow_map, i32* %4, i64* %8, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %44, i32* %2, align 4
  br label %75

45:                                               ; preds = %39
  %46 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64, i64* @TIME_HORIZON_NS, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %54, i32* %2, align 4
  br label %75

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @ECN_HORIZON_NS, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %63 = call i32 @bpf_skb_ecn_set_ce(%struct.__sk_buff* %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* @BPF_EXIST, align 4
  %66 = call i64 @bpf_map_update_elem(i32* @flow_map, i32* %4, i64* %9, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %68, %53, %45, %43
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i64 @bpf_ktime_get_ns(...) #1

declare dso_local i64 @bpf_map_update_elem(i32*, i32*, i64*, i32) #1

declare dso_local i32 @bpf_skb_ecn_set_ce(%struct.__sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
