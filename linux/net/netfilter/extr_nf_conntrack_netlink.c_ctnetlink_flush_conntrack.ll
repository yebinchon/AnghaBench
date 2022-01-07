; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_flush_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_flush_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.ctnetlink_filter = type { i32 }

@CTA_MARK = common dso_local global i64 0, align 8
@CTA_MARK_MASK = common dso_local global i64 0, align 8
@ctnetlink_flush_iterate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr**, i32, i32, i64)* @ctnetlink_flush_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_flush_conntrack(%struct.net* %0, %struct.nlattr** %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ctnetlink_filter*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.ctnetlink_filter* null, %struct.ctnetlink_filter** %12, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %17 = load i64, i64* @CTA_MARK, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load i64, i64* @CTA_MARK_MASK, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21, %5
  %28 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call %struct.ctnetlink_filter* @ctnetlink_alloc_filter(%struct.nlattr** %28, i64 %29)
  store %struct.ctnetlink_filter* %30, %struct.ctnetlink_filter** %12, align 8
  %31 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %12, align 8
  %32 = call i64 @IS_ERR(%struct.ctnetlink_filter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %12, align 8
  %36 = call i32 @PTR_ERR(%struct.ctnetlink_filter* %35)
  store i32 %36, i32* %6, align 4
  br label %47

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %21, %15
  %39 = load %struct.net*, %struct.net** %7, align 8
  %40 = load i32, i32* @ctnetlink_flush_iterate, align 4
  %41 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @nf_ct_iterate_cleanup_net(%struct.net* %39, i32 %40, %struct.ctnetlink_filter* %41, i32 %42, i32 %43)
  %45 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %12, align 8
  %46 = call i32 @kfree(%struct.ctnetlink_filter* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %34
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.ctnetlink_filter* @ctnetlink_alloc_filter(%struct.nlattr**, i64) #1

declare dso_local i64 @IS_ERR(%struct.ctnetlink_filter*) #1

declare dso_local i32 @PTR_ERR(%struct.ctnetlink_filter*) #1

declare dso_local i32 @nf_ct_iterate_cleanup_net(%struct.net*, i32, %struct.ctnetlink_filter*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ctnetlink_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
