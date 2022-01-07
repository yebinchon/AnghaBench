; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nf_conn*)* @nf_ct_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_match(%struct.nf_conn* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %4, align 8
  %5 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %6 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %12 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @nf_ct_tuple_equal(i32* %10, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %27 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i64 @nf_ct_tuple_equal(i32* %25, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %19
  %35 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %37 = call i32 @nf_ct_zone(%struct.nf_conn* %36)
  %38 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %39 = call i64 @nf_ct_zone_equal(%struct.nf_conn* %35, i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %43 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %44 = call i32 @nf_ct_zone(%struct.nf_conn* %43)
  %45 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %46 = call i64 @nf_ct_zone_equal(%struct.nf_conn* %42, i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %50 = call i32 @nf_ct_net(%struct.nf_conn* %49)
  %51 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %52 = call i32 @nf_ct_net(%struct.nf_conn* %51)
  %53 = call i64 @net_eq(i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %41, %34, %19, %2
  %56 = phi i1 [ false, %41 ], [ false, %34 ], [ false, %19 ], [ false, %2 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i64 @nf_ct_tuple_equal(i32*, i32*) #1

declare dso_local i64 @nf_ct_zone_equal(%struct.nf_conn*, i32, i64) #1

declare dso_local i32 @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
