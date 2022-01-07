; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_skb_nfct_cached.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_skb_nfct_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_UNTRACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i64, i32)* @tcf_ct_skb_nfct_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_skb_nfct_cached(%struct.net* %0, %struct.sk_buff* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %12, i32* %10)
  store %struct.nf_conn* %13, %struct.nf_conn** %11, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %15 = icmp ne %struct.nf_conn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %56

17:                                               ; preds = %4
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 1
  %21 = call i32 @read_pnet(i32* %20)
  %22 = call i32 @net_eq(%struct.net* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %27 = call %struct.TYPE_2__* @nf_ct_zone(%struct.nf_conn* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @CTINFO2DIR(i32 %37)
  %39 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %43 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %47 = call i32 @nf_ct_kill(%struct.nf_conn* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = call i32 @nf_conntrack_put(i32* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* @IP_CT_UNTRACKED, align 4
  %54 = call i32 @nf_ct_set(%struct.sk_buff* %52, i32* null, i32 %53)
  store i32 0, i32* %5, align 4
  br label %56

55:                                               ; preds = %36, %33
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %48, %32, %24, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local %struct.TYPE_2__* @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_kill(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_put(i32*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
