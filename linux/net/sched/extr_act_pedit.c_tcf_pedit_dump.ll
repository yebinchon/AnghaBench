; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_pedit.c_tcf_pedit_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_pedit = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.tc_pedit = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@keys = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCA_PEDIT_PARMS_EX = common dso_local global i32 0, align 4
@TCA_PEDIT_PARMS = common dso_local global i32 0, align 4
@TCA_PEDIT_TM = common dso_local global i32 0, align 4
@TCA_PEDIT_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_pedit_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_pedit_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_pedit*, align 8
  %12 = alloca %struct.tc_pedit*, align 8
  %13 = alloca %struct.tcf_t, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_pedit* @to_pedit(%struct.tc_action* %17)
  store %struct.tcf_pedit* %18, %struct.tcf_pedit** %11, align 8
  %19 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %20 = load i32, i32* @keys, align 4
  %21 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %22 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @struct_size(%struct.tc_pedit* %19, i32 %20, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.tc_pedit* @kzalloc(i32 %25, i32 %26)
  store %struct.tc_pedit* %27, %struct.tc_pedit** %12, align 8
  %28 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %29 = icmp ne %struct.tc_pedit* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %151

37:                                               ; preds = %4
  %38 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %39 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %42 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %45 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32 %43, i32 %46, i32 %52)
  %54 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %55 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %58 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %60 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %63 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %65 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %68 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %70 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %73 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %75 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %74, i32 0, i32 5
  %76 = call i64 @refcount_read(i32* %75)
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %81 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %83 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %82, i32 0, i32 4
  %84 = call i64 @atomic_read(i32* %83)
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %89 = getelementptr inbounds %struct.tc_pedit, %struct.tc_pedit* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %91 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %37
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %97 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %100 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @tcf_pedit_key_ex_dump(%struct.sk_buff* %95, i64 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %142

105:                                              ; preds = %94
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load i32, i32* @TCA_PEDIT_PARMS_EX, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %110 = call i64 @nla_put(%struct.sk_buff* %106, i32 %107, i32 %108, %struct.tc_pedit* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %142

113:                                              ; preds = %105
  br label %123

114:                                              ; preds = %37
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32, i32* @TCA_PEDIT_PARMS, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %119 = call i64 @nla_put(%struct.sk_buff* %115, i32 %116, i32 %117, %struct.tc_pedit* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %142

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %113
  %124 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %125 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %124, i32 0, i32 2
  %126 = call i32 @tcf_tm_dump(%struct.tcf_t* %13, i32* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = load i32, i32* @TCA_PEDIT_TM, align 4
  %129 = load i32, i32* @TCA_PEDIT_PAD, align 4
  %130 = call i64 @nla_put_64bit(%struct.sk_buff* %127, i32 %128, i32 4, %struct.tcf_t* %13, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %142

133:                                              ; preds = %123
  %134 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %135 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock_bh(i32* %135)
  %137 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %138 = call i32 @kfree(%struct.tc_pedit* %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  br label %151

142:                                              ; preds = %132, %121, %112, %104
  %143 = load %struct.tcf_pedit*, %struct.tcf_pedit** %11, align 8
  %144 = getelementptr inbounds %struct.tcf_pedit, %struct.tcf_pedit* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock_bh(i32* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @nlmsg_trim(%struct.sk_buff* %146, i8* %147)
  %149 = load %struct.tc_pedit*, %struct.tc_pedit** %12, align 8
  %150 = call i32 @kfree(%struct.tc_pedit* %149)
  store i32 -1, i32* %5, align 4
  br label %151

151:                                              ; preds = %142, %133, %34
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_pedit* @to_pedit(%struct.tc_action*) #1

declare dso_local i32 @struct_size(%struct.tc_pedit*, i32, i32) #1

declare dso_local %struct.tc_pedit* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @tcf_pedit_key_ex_dump(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_pedit*) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.tc_pedit*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
