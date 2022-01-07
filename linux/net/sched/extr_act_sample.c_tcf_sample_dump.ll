; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_sample.c_tcf_sample_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_sample = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.tc_sample = type { i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_SAMPLE_PARMS = common dso_local global i32 0, align 4
@TCA_SAMPLE_TM = common dso_local global i32 0, align 4
@TCA_SAMPLE_PAD = common dso_local global i32 0, align 4
@TCA_SAMPLE_RATE = common dso_local global i32 0, align 4
@TCA_SAMPLE_TRUNC_SIZE = common dso_local global i32 0, align 4
@TCA_SAMPLE_PSAMPLE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_sample_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_sample_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_sample*, align 8
  %12 = alloca %struct.tc_sample, align 4
  %13 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = call %struct.tcf_sample* @to_sample(%struct.tc_action* %16)
  store %struct.tcf_sample* %17, %struct.tcf_sample** %11, align 8
  %18 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %12, i32 0, i32 1
  %20 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %21 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %20, i32 0, i32 7
  %22 = call i32 @atomic_read(i32* %21)
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %12, i32 0, i32 2
  %26 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %27 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %26, i32 0, i32 8
  %28 = call i32 @refcount_read(i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %12, i32 0, i32 3
  %32 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %33 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %36 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %39 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.tc_sample, %struct.tc_sample* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* @TCA_SAMPLE_PARMS, align 4
  %44 = call i64 @nla_put(%struct.sk_buff* %42, i32 %43, i32 16, %struct.tc_sample* %12)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %97

47:                                               ; preds = %4
  %48 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %49 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %48, i32 0, i32 5
  %50 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* @TCA_SAMPLE_TM, align 4
  %53 = load i32, i32* @TCA_SAMPLE_PAD, align 4
  %54 = call i64 @nla_put_64bit(%struct.sk_buff* %51, i32 %52, i32 4, %struct.tcf_t* %13, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %97

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @TCA_SAMPLE_RATE, align 4
  %60 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %61 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %97

66:                                               ; preds = %57
  %67 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %68 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i32, i32* @TCA_SAMPLE_TRUNC_SIZE, align 4
  %74 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %75 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %97

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %66
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* @TCA_SAMPLE_PSAMPLE_GROUP, align 4
  %84 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %85 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %97

90:                                               ; preds = %81
  %91 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %92 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %5, align 4
  br label %104

97:                                               ; preds = %89, %79, %65, %56, %46
  %98 = load %struct.tcf_sample*, %struct.tcf_sample** %11, align 8
  %99 = getelementptr inbounds %struct.tcf_sample, %struct.tcf_sample* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @nlmsg_trim(%struct.sk_buff* %101, i8* %102)
  store i32 -1, i32* %5, align 4
  br label %104

104:                                              ; preds = %97, %90
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_sample* @to_sample(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_sample*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
