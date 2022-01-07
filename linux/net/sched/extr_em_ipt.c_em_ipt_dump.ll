; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_em_ipt_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_ipt.c_em_ipt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.em_ipt_match = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@TCA_EM_IPT_MATCH_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TCA_EM_IPT_HOOK = common dso_local global i32 0, align 4
@TCA_EM_IPT_MATCH_REVISION = common dso_local global i32 0, align 4
@TCA_EM_IPT_NFPROTO = common dso_local global i32 0, align 4
@TCA_EM_IPT_MATCH_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*)* @em_ipt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_ipt_dump(%struct.sk_buff* %0, %struct.tcf_ematch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.em_ipt_match*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  %7 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %8 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.em_ipt_match*
  store %struct.em_ipt_match* %11, %struct.em_ipt_match** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @TCA_EM_IPT_MATCH_NAME, align 4
  %14 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %15 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_put_string(%struct.sk_buff* %12, i32 %13, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @TCA_EM_IPT_HOOK, align 4
  %27 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %28 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @TCA_EM_IPT_MATCH_REVISION, align 4
  %38 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %39 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %35
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @TCA_EM_IPT_NFPROTO, align 4
  %51 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %52 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @nla_put_u8(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %48
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @TCA_EM_IPT_MATCH_DATA, align 4
  %62 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %63 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %76

69:                                               ; preds = %59
  %70 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %71 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  br label %76

76:                                               ; preds = %69, %68
  %77 = phi i64 [ %66, %68 ], [ %75, %69 ]
  %78 = trunc i64 %77 to i32
  %79 = load %struct.em_ipt_match*, %struct.em_ipt_match** %6, align 8
  %80 = getelementptr inbounds %struct.em_ipt_match, %struct.em_ipt_match* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @nla_put(%struct.sk_buff* %60, i32 %61, i32 %78, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %56, %45, %32, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
