; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_cmp_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_cmp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ila_map = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ila_xlat_params = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ila_map*, %struct.ila_xlat_params*)* @ila_cmp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_cmp_params(%struct.ila_map* %0, %struct.ila_xlat_params* %1) #0 {
  %3 = alloca %struct.ila_map*, align 8
  %4 = alloca %struct.ila_xlat_params*, align 8
  store %struct.ila_map* %0, %struct.ila_map** %3, align 8
  store %struct.ila_xlat_params* %1, %struct.ila_xlat_params** %4, align 8
  %5 = load %struct.ila_map*, %struct.ila_map** %3, align 8
  %6 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %10 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
