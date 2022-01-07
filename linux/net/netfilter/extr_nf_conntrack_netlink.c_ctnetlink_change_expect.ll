; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_change_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nlattr = type { i32 }

@CTA_EXPECT_TIMEOUT = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, %struct.nlattr**)* @ctnetlink_change_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_change_expect(%struct.nf_conntrack_expect* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @CTA_EXPECT_TIMEOUT, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %12, i32 0, i32 0
  %14 = call i32 @del_timer(%struct.TYPE_3__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %11
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @CTA_EXPECT_TIMEOUT, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i32 @nla_get_be32(%struct.nlattr* %24)
  %26 = call i32 @ntohl(i32 %25)
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %20, %29
  %31 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 0
  %36 = call i32 @add_timer(%struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
