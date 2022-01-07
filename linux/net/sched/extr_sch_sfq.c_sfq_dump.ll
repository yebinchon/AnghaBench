; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sfq_sched_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.red_parms* }
%struct.red_parms = type { i32, i32, i32, i32, i32, i32 }
%struct.tc_sfq_qopt_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @sfq_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sfq_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_sfq_qopt_v1, align 4
  %9 = alloca %struct.red_parms*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.sfq_sched_data* %11, %struct.sfq_sched_data** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i8* @skb_tail_pointer(%struct.sk_buff* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %15 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %14, i32 0, i32 9
  %16 = load %struct.red_parms*, %struct.red_parms** %15, align 8
  store %struct.red_parms* %16, %struct.red_parms** %9, align 8
  %17 = call i32 @memset(%struct.tc_sfq_qopt_v1* %8, i32 0, i32 60)
  %18 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %25, %26
  %28 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %31 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %36 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %41 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 10
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 9
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %50 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %54 = icmp ne %struct.red_parms* %53, null
  br i1 %54, label %55, label %88

55:                                               ; preds = %2
  %56 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %57 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %60 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %58, %61
  %63 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %65 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %68 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %66, %69
  %71 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %73 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %77 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 7
  store i32 %78, i32* %79, align 4
  %80 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %81 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 6
  store i32 %82, i32* %83, align 4
  %84 = load %struct.red_parms*, %struct.red_parms** %9, align 8
  %85 = getelementptr inbounds %struct.red_parms, %struct.red_parms* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 5
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %55, %2
  %89 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 4
  %90 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %91 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %90, i32 0, i32 2
  %92 = call i32 @memcpy(i32* %89, i32* %91, i32 4)
  %93 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %94 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.tc_sfq_qopt_v1, %struct.tc_sfq_qopt_v1* %8, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load i32, i32* @TCA_OPTIONS, align 4
  %99 = call i64 @nla_put(%struct.sk_buff* %97, i32 %98, i32 60, %struct.tc_sfq_qopt_v1* %8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %3, align 4
  br label %110

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @nlmsg_trim(%struct.sk_buff* %107, i8* %108)
  store i32 -1, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tc_sfq_qopt_v1*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_sfq_qopt_v1*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
