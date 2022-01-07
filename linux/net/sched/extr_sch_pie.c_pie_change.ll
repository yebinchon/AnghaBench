; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.pie_sched_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.sk_buff = type { i32 }

@TCA_PIE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pie_policy = common dso_local global i32 0, align 4
@TCA_PIE_TARGET = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@TCA_PIE_TUPDATE = common dso_local global i64 0, align 8
@TCA_PIE_LIMIT = common dso_local global i64 0, align 8
@TCA_PIE_ALPHA = common dso_local global i64 0, align 8
@TCA_PIE_BETA = common dso_local global i64 0, align 8
@TCA_PIE_ECN = common dso_local global i64 0, align 8
@TCA_PIE_BYTEMODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @pie_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.pie_sched_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %19 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %18)
  store %struct.pie_sched_data* %19, %struct.pie_sched_data** %8, align 8
  %20 = load i32, i32* @TCA_PIE_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %185

30:                                               ; preds = %3
  %31 = load i32, i32* @TCA_PIE_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %33 = load i32, i32* @pie_policy, align 4
  %34 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %24, i32 %31, %struct.nlattr* %32, i32 %33, i32* null)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %185

39:                                               ; preds = %30
  %40 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %41 = call i32 @sch_tree_lock(%struct.Qdisc* %40)
  %42 = load i64, i64* @TCA_PIE_TARGET, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load i64, i64* @TCA_PIE_TARGET, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i8* @nla_get_u32(%struct.nlattr* %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32, i32* @NSEC_PER_USEC, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @PSCHED_NS2TICKS(i32 %54)
  %56 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %57 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %46, %39
  %60 = load i64, i64* @TCA_PIE_TUPDATE, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i64, i64* @TCA_PIE_TUPDATE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i8* @nla_get_u32(%struct.nlattr* %67)
  %69 = call i32 @usecs_to_jiffies(i8* %68)
  %70 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %64, %59
  %74 = load i64, i64* @TCA_PIE_LIMIT, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i64, i64* @TCA_PIE_LIMIT, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_get_u32(%struct.nlattr* %81)
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %90 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %78, %73
  %92 = load i64, i64* @TCA_PIE_ALPHA, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i64, i64* @TCA_PIE_ALPHA, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i8* @nla_get_u32(%struct.nlattr* %99)
  %101 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %102 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load i64, i64* @TCA_PIE_BETA, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i64, i64* @TCA_PIE_BETA, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i8* @nla_get_u32(%struct.nlattr* %112)
  %114 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %115 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i8* %113, i8** %116, align 8
  br label %117

117:                                              ; preds = %109, %104
  %118 = load i64, i64* @TCA_PIE_ECN, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = icmp ne %struct.nlattr* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load i64, i64* @TCA_PIE_ECN, align 8
  %124 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %123
  %125 = load %struct.nlattr*, %struct.nlattr** %124, align 8
  %126 = call i8* @nla_get_u32(%struct.nlattr* %125)
  %127 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %128 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %122, %117
  %131 = load i64, i64* @TCA_PIE_BYTEMODE, align 8
  %132 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %131
  %133 = load %struct.nlattr*, %struct.nlattr** %132, align 8
  %134 = icmp ne %struct.nlattr* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i64, i64* @TCA_PIE_BYTEMODE, align 8
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = call i8* @nla_get_u32(%struct.nlattr* %138)
  %140 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %141 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %145 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %157, %143
  %149 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %150 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %154 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ugt i32 %152, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %148
  %158 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %159 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %158, i32 0, i32 1
  %160 = call %struct.sk_buff* @__qdisc_dequeue_head(%struct.TYPE_4__* %159)
  store %struct.sk_buff* %160, %struct.sk_buff** %17, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %162 = call i64 @qdisc_pkt_len(%struct.sk_buff* %161)
  %163 = load i32, i32* %12, align 4
  %164 = zext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %12, align 4
  %167 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %169 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %167, %struct.sk_buff* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %171 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %172 = call i32 @rtnl_qdisc_drop(%struct.sk_buff* %170, %struct.Qdisc* %171)
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %177 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %175, %179
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %174, i32 %180, i32 %181)
  %183 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %184 = call i32 @sch_tree_unlock(%struct.Qdisc* %183)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %185

185:                                              ; preds = %173, %37, %27
  %186 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

declare dso_local i32 @usecs_to_jiffies(i8*) #1

declare dso_local %struct.sk_buff* @__qdisc_dequeue_head(%struct.TYPE_4__*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @rtnl_qdisc_drop(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
