; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i64 }
%struct.nlattr = type { i32 }

@CTA_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@nfct_time_stamp = common dso_local global i64 0, align 8
@IPS_DYING_BIT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nlattr**)* @ctnetlink_change_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_timeout(%struct.nf_conn* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @CTA_TIMEOUT, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = call i32 @nla_get_be32(%struct.nlattr* %10)
  %12 = call i64 @ntohl(i32 %11)
  %13 = load i64, i64* @HZ, align 8
  %14 = mul nsw i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @INT_MAX, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i64, i64* @nfct_time_stamp, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %25 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @IPS_DYING_BIT, align 4
  %27 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ETIME, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
