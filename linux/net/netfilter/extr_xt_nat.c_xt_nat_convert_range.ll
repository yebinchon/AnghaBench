; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_nat_convert_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_nat.c_xt_nat_convert_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_nat_range2 = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_nat_range2*, %struct.nf_nat_ipv4_range*)* @xt_nat_convert_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xt_nat_convert_range(%struct.nf_nat_range2* %0, %struct.nf_nat_ipv4_range* %1) #0 {
  %3 = alloca %struct.nf_nat_range2*, align 8
  %4 = alloca %struct.nf_nat_ipv4_range*, align 8
  store %struct.nf_nat_range2* %0, %struct.nf_nat_range2** %3, align 8
  store %struct.nf_nat_ipv4_range* %1, %struct.nf_nat_ipv4_range** %4, align 8
  %5 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %6 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %5, i32 0, i32 3
  %7 = call i32 @memset(%struct.TYPE_2__* %6, i32 0, i32 4)
  %8 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %9 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %8, i32 0, i32 2
  %10 = call i32 @memset(%struct.TYPE_2__* %9, i32 0, i32 4)
  %11 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %12 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %11, i32 0, i32 5
  %13 = call i32 @memset(%struct.TYPE_2__* %12, i32 0, i32 4)
  %14 = load %struct.nf_nat_ipv4_range*, %struct.nf_nat_ipv4_range** %4, align 8
  %15 = getelementptr inbounds %struct.nf_nat_ipv4_range, %struct.nf_nat_ipv4_range* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %18 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nf_nat_ipv4_range*, %struct.nf_nat_ipv4_range** %4, align 8
  %20 = getelementptr inbounds %struct.nf_nat_ipv4_range, %struct.nf_nat_ipv4_range* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %23 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.nf_nat_ipv4_range*, %struct.nf_nat_ipv4_range** %4, align 8
  %26 = getelementptr inbounds %struct.nf_nat_ipv4_range, %struct.nf_nat_ipv4_range* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %29 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.nf_nat_ipv4_range*, %struct.nf_nat_ipv4_range** %4, align 8
  %32 = getelementptr inbounds %struct.nf_nat_ipv4_range, %struct.nf_nat_ipv4_range* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %35 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nf_nat_ipv4_range*, %struct.nf_nat_ipv4_range** %4, align 8
  %37 = getelementptr inbounds %struct.nf_nat_ipv4_range, %struct.nf_nat_ipv4_range* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %3, align 8
  %40 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
