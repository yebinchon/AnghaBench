; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTA_IP_MAX = common dso_local global i32 0, align 4
@cta_ip_nla_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nf_conntrack_tuple*)* @ctnetlink_parse_tuple_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple_ip(%struct.nlattr* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  %10 = load i32, i32* @CTA_IP_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @CTA_IP_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32* null, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %24 = load i32, i32* @CTA_IP_MAX, align 4
  %25 = load i32, i32* @cta_ip_nla_policy, align 4
  %26 = call i32 @nla_validate_nested_deprecated(%struct.nlattr* %23, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %44

31:                                               ; preds = %22
  %32 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %42 [
    i32 129, label %36
    i32 128, label %39
  ]

36:                                               ; preds = %31
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %38 = call i32 @ipv4_nlattr_to_tuple(%struct.nlattr** %14, %struct.nf_conntrack_tuple* %37)
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %41 = call i32 @ipv6_nlattr_to_tuple(%struct.nlattr** %14, %struct.nf_conntrack_tuple* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %31, %39, %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %29, %20
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i32 @nla_validate_nested_deprecated(%struct.nlattr*, i32, i32, i32*) #2

declare dso_local i32 @ipv4_nlattr_to_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*) #2

declare dso_local i32 @ipv6_nlattr_to_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
