; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_secmark_restore.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CONNSECMARK.c_secmark_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conn = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @secmark_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secmark_restore(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %10, i32* %4)
  store %struct.nf_conn* %11, %struct.nf_conn** %3, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %13 = icmp ne %struct.nf_conn* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %14, %9
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
