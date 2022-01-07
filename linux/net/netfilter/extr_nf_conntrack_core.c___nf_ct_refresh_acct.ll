; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_ct_refresh_acct.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c___nf_ct_refresh_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IPS_FIXED_TIMEOUT_BIT = common dso_local global i32 0, align 4
@nfct_time_stamp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nf_ct_refresh_acct(%struct.nf_conn* %0, i32 %1, %struct.sk_buff* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @IPS_FIXED_TIMEOUT_BIT, align 4
  %12 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %39

17:                                               ; preds = %5
  %18 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %19 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @nfct_time_stamp, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %27 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @READ_ONCE(i32 %28)
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %34 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @WRITE_ONCE(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %32, %25
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nf_ct_acct_update(%struct.nf_conn* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %39
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @nf_ct_acct_update(%struct.nf_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
