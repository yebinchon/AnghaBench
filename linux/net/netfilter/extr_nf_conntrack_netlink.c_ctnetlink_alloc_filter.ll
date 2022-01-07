; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_alloc_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_alloc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctnetlink_filter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.nlattr = type { i32 }

@CTA_MARK = common dso_local global i64 0, align 8
@CTA_MARK_MASK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctnetlink_filter* (%struct.nlattr**, i32)* @ctnetlink_alloc_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctnetlink_filter* @ctnetlink_alloc_filter(%struct.nlattr** %0, i32 %1) #0 {
  %3 = alloca %struct.ctnetlink_filter*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctnetlink_filter*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %8 = load i64, i64* @CTA_MARK, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = load i64, i64* @CTA_MARK_MASK, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ctnetlink_filter* @ERR_PTR(i32 %20)
  store %struct.ctnetlink_filter* %21, %struct.ctnetlink_filter** %3, align 8
  br label %36

22:                                               ; preds = %12, %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ctnetlink_filter* @kzalloc(i32 24, i32 %23)
  store %struct.ctnetlink_filter* %24, %struct.ctnetlink_filter** %6, align 8
  %25 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %6, align 8
  %26 = icmp eq %struct.ctnetlink_filter* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ctnetlink_filter* @ERR_PTR(i32 %29)
  store %struct.ctnetlink_filter* %30, %struct.ctnetlink_filter** %3, align 8
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %6, align 8
  %34 = getelementptr inbounds %struct.ctnetlink_filter, %struct.ctnetlink_filter* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %6, align 8
  store %struct.ctnetlink_filter* %35, %struct.ctnetlink_filter** %3, align 8
  br label %36

36:                                               ; preds = %31, %27, %18
  %37 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %3, align 8
  ret %struct.ctnetlink_filter* %37
}

declare dso_local %struct.ctnetlink_filter* @ERR_PTR(i32) #1

declare dso_local %struct.ctnetlink_filter* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
