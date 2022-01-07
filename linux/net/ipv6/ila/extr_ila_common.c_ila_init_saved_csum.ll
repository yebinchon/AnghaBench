; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_init_saved_csum.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_common.c_ila_init_saved_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ila_params = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ila_init_saved_csum(%struct.ila_params* %0) #0 {
  %2 = alloca %struct.ila_params*, align 8
  store %struct.ila_params* %0, %struct.ila_params** %2, align 8
  %3 = load %struct.ila_params*, %struct.ila_params** %2, align 8
  %4 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.ila_params*, %struct.ila_params** %2, align 8
  %11 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %10, i32 0, i32 1
  %12 = load %struct.ila_params*, %struct.ila_params** %2, align 8
  %13 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_2__* %13 to i32*
  %15 = call i32 @compute_csum_diff8(i32* %11, i32* %14)
  %16 = load %struct.ila_params*, %struct.ila_params** %2, align 8
  %17 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @compute_csum_diff8(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
