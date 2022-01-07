; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conn_tstamp = type { i64, i64 }

@CTA_TIMESTAMP = common dso_local global i32 0, align 4
@CTA_TIMESTAMP_START = common dso_local global i32 0, align 4
@CTA_TIMESTAMP_PAD = common dso_local global i32 0, align 4
@CTA_TIMESTAMP_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_timestamp(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nf_conn_tstamp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %9 = call %struct.nf_conn_tstamp* @nf_conn_tstamp_find(%struct.nf_conn* %8)
  store %struct.nf_conn_tstamp* %9, %struct.nf_conn_tstamp** %7, align 8
  %10 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %7, align 8
  %11 = icmp ne %struct.nf_conn_tstamp* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @CTA_TIMESTAMP, align 4
  %16 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %6, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @CTA_TIMESTAMP_START, align 4
  %23 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conn_tstamp, %struct.nf_conn_tstamp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cpu_to_be64(i64 %25)
  %27 = load i32, i32* @CTA_TIMESTAMP_PAD, align 4
  %28 = call i64 @nla_put_be64(%struct.sk_buff* %21, i32 %22, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %20
  %31 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %7, align 8
  %32 = getelementptr inbounds %struct.nf_conn_tstamp, %struct.nf_conn_tstamp* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @CTA_TIMESTAMP_STOP, align 4
  %38 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %7, align 8
  %39 = getelementptr inbounds %struct.nf_conn_tstamp, %struct.nf_conn_tstamp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @cpu_to_be64(i64 %40)
  %42 = load i32, i32* @CTA_TIMESTAMP_PAD, align 4
  %43 = call i64 @nla_put_be64(%struct.sk_buff* %36, i32 %37, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35, %20
  br label %50

46:                                               ; preds = %35, %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %45, %19
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.nf_conn_tstamp* @nf_conn_tstamp_find(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
