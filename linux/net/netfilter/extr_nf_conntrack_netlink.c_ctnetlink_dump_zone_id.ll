; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_zone_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_zone_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_zone = type { i64, i32 }

@NF_CT_DEFAULT_ZONE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_zone*, i32)* @ctnetlink_dump_zone_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_zone_id(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_zone* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_zone*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conntrack_zone* %2, %struct.nf_conntrack_zone** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %8, align 8
  %11 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NF_CT_DEFAULT_ZONE_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %8, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %8, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @htons(i64 %27)
  %29 = call i64 @nla_put_be16(%struct.sk_buff* %23, i32 %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %34

33:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
