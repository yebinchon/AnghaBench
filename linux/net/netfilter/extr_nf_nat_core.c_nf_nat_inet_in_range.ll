; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_inet_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_inet_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nf_nat_range2 = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range2*)* @nf_nat_inet_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_inet_in_range(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_nat_range2*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %4, align 8
  store %struct.nf_nat_range2* %1, %struct.nf_nat_range2** %5, align 8
  %6 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %7 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NFPROTO_IPV4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohl(i32 %17)
  %19 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %20 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ntohl(i32 %22)
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %12
  %26 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %27 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohl(i32 %30)
  %32 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %33 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohl(i32 %35)
  %37 = icmp sle i64 %31, %36
  br label %38

38:                                               ; preds = %25, %12
  %39 = phi i1 [ false, %12 ], [ %37, %25 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %2
  %42 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %47 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i64 @ipv6_addr_cmp(i32* %45, i32* %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %5, align 8
  %57 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i64 @ipv6_addr_cmp(i32* %55, i32* %58)
  %60 = icmp sle i64 %59, 0
  br label %61

61:                                               ; preds = %51, %41
  %62 = phi i1 [ false, %41 ], [ %60, %51 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %38
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ipv6_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
