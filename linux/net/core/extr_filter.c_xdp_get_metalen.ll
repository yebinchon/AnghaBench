; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_get_metalen.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_xdp_get_metalen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_buff = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdp_buff*)* @xdp_get_metalen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdp_get_metalen(%struct.xdp_buff* %0) #0 {
  %2 = alloca %struct.xdp_buff*, align 8
  store %struct.xdp_buff* %0, %struct.xdp_buff** %2, align 8
  %3 = load %struct.xdp_buff*, %struct.xdp_buff** %2, align 8
  %4 = call i64 @xdp_data_meta_unsupported(%struct.xdp_buff* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %15

7:                                                ; preds = %1
  %8 = load %struct.xdp_buff*, %struct.xdp_buff** %2, align 8
  %9 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.xdp_buff*, %struct.xdp_buff** %2, align 8
  %12 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  br label %15

15:                                               ; preds = %7, %6
  %16 = phi i64 [ 0, %6 ], [ %14, %7 ]
  ret i64 %16
}

declare dso_local i64 @xdp_data_meta_unsupported(%struct.xdp_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
