; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_get_csum_diff_iaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_get_csum_diff_iaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ila_addr = type { i32 }
%struct.ila_params = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ila_addr*, %struct.ila_params*)* @get_csum_diff_iaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_csum_diff_iaddr(%struct.ila_addr* %0, %struct.ila_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ila_addr*, align 8
  %5 = alloca %struct.ila_params*, align 8
  store %struct.ila_addr* %0, %struct.ila_addr** %4, align 8
  store %struct.ila_params* %1, %struct.ila_params** %5, align 8
  %6 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %7 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %13 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %17 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %16, i32 0, i32 0
  %18 = load %struct.ila_addr*, %struct.ila_addr** %4, align 8
  %19 = getelementptr inbounds %struct.ila_addr, %struct.ila_addr* %18, i32 0, i32 0
  %20 = call i32 @compute_csum_diff8(i32* %17, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @compute_csum_diff8(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
