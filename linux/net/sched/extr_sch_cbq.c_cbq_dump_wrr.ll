; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_wrr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_wrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cbq_class = type { i32, i64, i64, i32 }
%struct.tc_cbq_wrropt = type { i32, i64, i64, i32, i64 }

@TCA_CBQ_WRROPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cbq_class*)* @cbq_dump_wrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_wrr(%struct.sk_buff* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tc_cbq_wrropt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i8* @skb_tail_pointer(%struct.sk_buff* %8)
  store i8* %9, i8** %6, align 8
  %10 = call i32 @memset(%struct.tc_cbq_wrropt* %7, i32 0, i32 40)
  %11 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %7, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %13 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %17 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %7, i32 0, i32 2
  store i64 %19, i64* %20, align 8
  %21 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %7, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %27 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @TCA_CBQ_WRROPT, align 4
  %32 = call i64 @nla_put(%struct.sk_buff* %30, i32 %31, i32 40, %struct.tc_cbq_wrropt* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @nlmsg_trim(%struct.sk_buff* %40, i8* %41)
  store i32 -1, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tc_cbq_wrropt*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_cbq_wrropt*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
