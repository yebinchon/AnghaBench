; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_is_packet_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_is_packet_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { %struct.sock*, i32 }
%struct.sock = type { i64, i64 }
%struct.etf_sched_data = type { i64, i64, i32, i32 (...)*, i64 }

@SOCK_TXTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @is_packet_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_packet_valid(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.etf_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.etf_sched_data* %11, %struct.etf_sched_data** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %8, align 8
  %18 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = icmp ne %struct.sock* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %70

27:                                               ; preds = %23
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = load i32, i32* @SOCK_TXTIME, align 4
  %30 = call i32 @sock_flag(%struct.sock* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %70

33:                                               ; preds = %27
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %70

42:                                               ; preds = %33
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %47 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %70

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %54 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %53, i32 0, i32 3
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = call i32 (...) %55()
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @ktime_before(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ktime_before(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %52
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %50, %41, %32, %26
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.etf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
