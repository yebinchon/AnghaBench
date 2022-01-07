; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_nat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_nat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_NAT_PARMS = common dso_local global i32 0, align 4
@TCA_NAT_TM = common dso_local global i32 0, align 4
@TCA_NAT_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_nat_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_nat_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_nat*, align 8
  %12 = alloca %struct.tc_nat, align 4
  %13 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i8* @skb_tail_pointer(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %17 = call %struct.tcf_nat* @to_tcf_nat(%struct.tc_action* %16)
  store %struct.tcf_nat* %17, %struct.tcf_nat** %11, align 8
  %18 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 4
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 5
  %24 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %25 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %24, i32 0, i32 7
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 6
  %30 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %31 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %30, i32 0, i32 8
  %32 = call i32 @refcount_read(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 7
  %36 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %37 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %40 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %43 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %47 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %51 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %55 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %59 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %12, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* @TCA_NAT_PARMS, align 4
  %64 = call i64 @nla_put(%struct.sk_buff* %62, i32 %63, i32 32, %struct.tc_nat* %12)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %4
  br label %84

67:                                               ; preds = %4
  %68 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %69 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %68, i32 0, i32 1
  %70 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = load i32, i32* @TCA_NAT_TM, align 4
  %73 = load i32, i32* @TCA_NAT_PAD, align 4
  %74 = call i64 @nla_put_64bit(%struct.sk_buff* %71, i32 %72, i32 4, %struct.tcf_t* %13, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %84

77:                                               ; preds = %67
  %78 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %79 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %5, align 4
  br label %91

84:                                               ; preds = %76, %66
  %85 = load %struct.tcf_nat*, %struct.tcf_nat** %11, align 8
  %86 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @nlmsg_trim(%struct.sk_buff* %88, i8* %89)
  store i32 -1, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_nat* @to_tcf_nat(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_nat*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
