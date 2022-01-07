; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_overquota.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_overquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_acct = type { i32, i32, i32, i64 }

@NFACCT_UNDERQUOTA = common dso_local global i32 0, align 4
@NFACCT_F_QUOTA = common dso_local global i32 0, align 4
@NFACCT_NO_QUOTA = common dso_local global i32 0, align 4
@NFACCT_F_QUOTA_PKTS = common dso_local global i32 0, align 4
@NFACCT_OVERQUOTA_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfnl_acct_overquota(%struct.net* %0, %struct.nf_acct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_acct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_acct* %1, %struct.nf_acct** %5, align 8
  %9 = load i32, i32* @NFACCT_UNDERQUOTA, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %11 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NFACCT_F_QUOTA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NFACCT_NO_QUOTA, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %20 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %7, align 8
  %23 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %24 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NFACCT_F_QUOTA_PKTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %31 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %30, i32 0, i32 2
  %32 = call i64 @atomic64_read(i32* %31)
  br label %37

33:                                               ; preds = %18
  %34 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %35 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %34, i32 0, i32 1
  %36 = call i64 @atomic64_read(i32* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %39, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i32, i32* @NFACCT_OVERQUOTA_BIT, align 4
  %50 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %51 = getelementptr inbounds %struct.nf_acct, %struct.nf_acct* %50, i32 0, i32 0
  %52 = call i32 @test_and_set_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.net*, %struct.net** %4, align 8
  %56 = load %struct.nf_acct*, %struct.nf_acct** %5, align 8
  %57 = call i32 @nfnl_overquota_report(%struct.net* %55, %struct.nf_acct* %56)
  br label %58

58:                                               ; preds = %54, %48, %37
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nfnl_overquota_report(%struct.net*, %struct.nf_acct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
