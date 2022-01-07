; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_calc_hlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_calc_hlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@LL_MAX_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_tnl*)* @ip6erspan_calc_hlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6erspan_calc_hlen(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.ip6_tnl*, align 8
  %3 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %2, align 8
  %4 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %5 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %4, i32 0, i32 0
  store i32 8, i32* %5, align 8
  %6 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %7 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %10 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  %13 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %14 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @erspan_hdr_len(i32 %16)
  %18 = add nsw i32 %12, %17
  %19 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %20 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %22 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @LL_MAX_HEADER, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %32 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @erspan_hdr_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
