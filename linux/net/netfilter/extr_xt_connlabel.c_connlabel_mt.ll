; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlabel.c_connlabel_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connlabel.c_connlabel_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_connlabel_mtinfo* }
%struct.xt_connlabel_mtinfo = type { i32, i32 }
%struct.nf_conn_labels = type { i32 }
%struct.nf_conn = type { i32 }

@XT_CONNLABEL_OP_INVERT = common dso_local global i32 0, align 4
@XT_CONNLABEL_OP_SET = common dso_local global i32 0, align 4
@IPCT_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @connlabel_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connlabel_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_connlabel_mtinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn_labels*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  %13 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %12, align 8
  store %struct.xt_connlabel_mtinfo* %13, %struct.xt_connlabel_mtinfo** %6, align 8
  %14 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %6, align 8
  %15 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XT_CONNLABEL_OP_INVERT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %19, i32* %7)
  store %struct.nf_conn* %20, %struct.nf_conn** %9, align 8
  %21 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %22 = icmp eq %struct.nf_conn* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %27 = call %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn* %26)
  store %struct.nf_conn_labels* %27, %struct.nf_conn_labels** %8, align 8
  %28 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %8, align 8
  %29 = icmp ne %struct.nf_conn_labels* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %25
  %33 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %6, align 8
  %34 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %8, align 8
  %37 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %32
  %47 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %6, align 8
  %48 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XT_CONNLABEL_OP_SET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.xt_connlabel_mtinfo*, %struct.xt_connlabel_mtinfo** %6, align 8
  %55 = getelementptr inbounds %struct.xt_connlabel_mtinfo, %struct.xt_connlabel_mtinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %8, align 8
  %58 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @test_and_set_bit(i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @IPCT_LABEL, align 4
  %64 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %65 = call i32 @nf_conntrack_event_cache(i32 %63, %struct.nf_conn* %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %46
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %66, %41, %30, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
