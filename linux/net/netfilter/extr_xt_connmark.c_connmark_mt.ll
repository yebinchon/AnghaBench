; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connmark.c_connmark_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connmark.c_connmark_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_connmark_mtinfo1* }
%struct.xt_connmark_mtinfo1 = type { i32, i32, i32 }
%struct.nf_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @connmark_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connmark_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_connmark_mtinfo1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_connmark_mtinfo1*, %struct.xt_connmark_mtinfo1** %10, align 8
  store %struct.xt_connmark_mtinfo1* %11, %struct.xt_connmark_mtinfo1** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %12, i32* %7)
  store %struct.nf_conn* %13, %struct.nf_conn** %8, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %15 = icmp eq %struct.nf_conn* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %19 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xt_connmark_mtinfo1*, %struct.xt_connmark_mtinfo1** %6, align 8
  %22 = getelementptr inbounds %struct.xt_connmark_mtinfo1, %struct.xt_connmark_mtinfo1* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = load %struct.xt_connmark_mtinfo1*, %struct.xt_connmark_mtinfo1** %6, align 8
  %26 = getelementptr inbounds %struct.xt_connmark_mtinfo1, %struct.xt_connmark_mtinfo1* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.xt_connmark_mtinfo1*, %struct.xt_connmark_mtinfo1** %6, align 8
  %31 = getelementptr inbounds %struct.xt_connmark_mtinfo1, %struct.xt_connmark_mtinfo1* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %29, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
