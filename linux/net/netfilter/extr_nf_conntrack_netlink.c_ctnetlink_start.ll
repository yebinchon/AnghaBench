; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nlattr**, i32 }
%struct.nlattr = type { i32 }
%struct.ctnetlink_filter = type opaque
%struct.nfgenmsg = type { i64 }

@CTA_MARK = common dso_local global i64 0, align 8
@CTA_MARK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @ctnetlink_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_start(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ctnetlink_filter*, align 8
  %6 = alloca %struct.nfgenmsg*, align 8
  %7 = alloca i64, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %8 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %9 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %8, i32 0, i32 0
  %10 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %10, %struct.nlattr*** %4, align 8
  store %struct.ctnetlink_filter* null, %struct.ctnetlink_filter** %5, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfgenmsg* @nlmsg_data(i32 %13)
  store %struct.nfgenmsg* %14, %struct.nfgenmsg** %6, align 8
  %15 = load %struct.nfgenmsg*, %struct.nfgenmsg** %6, align 8
  %16 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %22 = load i64, i64* @CTA_MARK, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %28 = load i64, i64* @CTA_MARK_MASK, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %26, %1
  %33 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call %struct.nlattr** @ctnetlink_alloc_filter(%struct.nlattr** %33, i64 %34)
  %36 = bitcast %struct.nlattr** %35 to %struct.ctnetlink_filter*
  store %struct.ctnetlink_filter* %36, %struct.ctnetlink_filter** %5, align 8
  %37 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %5, align 8
  %38 = bitcast %struct.ctnetlink_filter* %37 to %struct.nlattr**
  %39 = call i64 @IS_ERR(%struct.nlattr** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %5, align 8
  %43 = bitcast %struct.ctnetlink_filter* %42 to %struct.nlattr**
  %44 = call i32 @PTR_ERR(%struct.nlattr** %43)
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %26, %20
  %47 = load %struct.ctnetlink_filter*, %struct.ctnetlink_filter** %5, align 8
  %48 = bitcast %struct.ctnetlink_filter* %47 to %struct.nlattr**
  %49 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %50 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %49, i32 0, i32 0
  store %struct.nlattr** %48, %struct.nlattr*** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(i32) #1

declare dso_local %struct.nlattr** @ctnetlink_alloc_filter(%struct.nlattr**, i64) #1

declare dso_local i64 @IS_ERR(%struct.nlattr**) #1

declare dso_local i32 @PTR_ERR(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
