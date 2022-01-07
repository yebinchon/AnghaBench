; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c___ctnetlink_change_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c___ctnetlink_change_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@IPS_UNCHANGEABLE_MASK = common dso_local global i64 0, align 8
@__IPS_MAX_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, i64, i64)* @__ctnetlink_change_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ctnetlink_change_status(%struct.nf_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @IPS_UNCHANGEABLE_MASK, align 8
  %9 = xor i64 %8, -1
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %10, %9
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @IPS_UNCHANGEABLE_MASK, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @__IPS_MAX_BIT, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %30 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %45

32:                                               ; preds = %20
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 0
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %16

49:                                               ; preds = %16
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
