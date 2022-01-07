; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_nat_range2 = type { i32, i32, i32 }

@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@NF_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range2*)* @in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_range(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_nat_range2*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %4, align 8
  store %struct.nf_nat_range2* %1, %struct.nf_nat_range2** %5, align 8
  %6 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %7 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %14 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %15 = call i32 @nf_nat_inet_in_range(%struct.nf_conntrack_tuple* %13, %struct.nf_nat_range2* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %34

18:                                               ; preds = %12, %2
  %19 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %20 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NF_NAT_RANGE_PROTO_SPECIFIED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %28 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %29 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %30 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %29, i32 0, i32 2
  %31 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %32 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %31, i32 0, i32 1
  %33 = call i32 @l4proto_in_range(%struct.nf_conntrack_tuple* %27, i32 %28, i32* %30, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %25, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nf_nat_inet_in_range(%struct.nf_conntrack_tuple*, %struct.nf_nat_range2*) #1

declare dso_local i32 @l4proto_in_range(%struct.nf_conntrack_tuple*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
