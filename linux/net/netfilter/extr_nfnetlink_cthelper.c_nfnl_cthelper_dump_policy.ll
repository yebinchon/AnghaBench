; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_dump_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_dump_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_helper = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@NFCTH_POLICY = common dso_local global i64 0, align 8
@NFCTH_POLICY_SET_NUM = common dso_local global i32 0, align 4
@NFCTH_POLICY_SET = common dso_local global i64 0, align 8
@NFCTH_POLICY_NAME = common dso_local global i32 0, align 4
@NFCTH_POLICY_EXPECT_MAX = common dso_local global i32 0, align 4
@NFCTH_POLICY_EXPECT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conntrack_helper*)* @nfnl_cthelper_dump_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_dump_policy(%struct.sk_buff* %0, %struct.nf_conntrack_helper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conntrack_helper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conntrack_helper* %1, %struct.nf_conntrack_helper** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i64, i64* @NFCTH_POLICY, align 8
  %11 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %9, i64 %10)
  store %struct.nlattr* %11, %struct.nlattr** %7, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %99

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @NFCTH_POLICY_SET_NUM, align 4
  %18 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = call i32 @htonl(i32 %21)
  %23 = call i64 @nla_put_be32(%struct.sk_buff* %16, i32 %17, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %99

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %92, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %30 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i64, i64* @NFCTH_POLICY_SET, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %35, i64 %39)
  store %struct.nlattr* %40, %struct.nlattr** %8, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %42 = icmp eq %struct.nlattr* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %99

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @NFCTH_POLICY_NAME, align 4
  %47 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_string(%struct.sk_buff* %45, i32 %46, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %99

58:                                               ; preds = %44
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @NFCTH_POLICY_EXPECT_MAX, align 4
  %61 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htonl(i32 %68)
  %70 = call i64 @nla_put_be32(%struct.sk_buff* %59, i32 %60, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %99

73:                                               ; preds = %58
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @NFCTH_POLICY_EXPECT_TIMEOUT, align 4
  %76 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %5, align 8
  %77 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @htonl(i32 %83)
  %85 = call i64 @nla_put_be32(%struct.sk_buff* %74, i32 %75, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %99

88:                                               ; preds = %73
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %91 = call i32 @nla_nest_end(%struct.sk_buff* %89, %struct.nlattr* %90)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %27

95:                                               ; preds = %27
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %98 = call i32 @nla_nest_end(%struct.sk_buff* %96, %struct.nlattr* %97)
  store i32 0, i32* %3, align 4
  br label %100

99:                                               ; preds = %87, %72, %57, %43, %25, %14
  store i32 -1, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i64) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
