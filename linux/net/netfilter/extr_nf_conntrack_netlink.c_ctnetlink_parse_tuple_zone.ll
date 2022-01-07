; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_zone.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_zone = type { i64, i32 }

@NF_CT_DEFAULT_ZONE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTA_TUPLE_REPLY = common dso_local global i32 0, align 4
@NF_CT_ZONE_DIR_REPL = common dso_local global i32 0, align 4
@NF_CT_ZONE_DIR_ORIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, %struct.nf_conntrack_zone*)* @ctnetlink_parse_tuple_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple_zone(%struct.nlattr* %0, i32 %1, %struct.nf_conntrack_zone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_zone* %2, %struct.nf_conntrack_zone** %7, align 8
  %9 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NF_CT_DEFAULT_ZONE_ID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %19 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %20 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %18, %struct.nf_conntrack_zone* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CTA_TUPLE_REPLY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @NF_CT_ZONE_DIR_REPL, align 4
  %31 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @NF_CT_ZONE_DIR_ORIG, align 4
  %35 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %23, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
