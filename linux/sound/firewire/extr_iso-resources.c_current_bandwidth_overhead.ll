; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_current_bandwidth_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_current_bandwidth_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*)* @current_bandwidth_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @current_bandwidth_overhead(%struct.fw_card* %0) #0 {
  %2 = alloca %struct.fw_card*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %2, align 8
  %3 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %4 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 63
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %9 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 97
  %12 = sdiv i32 %11, 10
  %13 = add nsw i32 %12, 89
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi i32 [ %13, %7 ], [ 512, %14 ]
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
