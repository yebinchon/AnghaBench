; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_same_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_same_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nf_conntrack_tuple*)* @same_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_src(%struct.nf_conn* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_tuple** %5, align 8
  %12 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %26 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i64 @nf_inet_addr_cmp(i32* %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br label %42

42:                                               ; preds = %30, %21, %2
  %43 = phi i1 [ false, %21 ], [ false, %2 ], [ %41, %30 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare dso_local i64 @nf_inet_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
