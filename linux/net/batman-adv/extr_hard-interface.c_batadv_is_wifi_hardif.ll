; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_wifi_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_wifi_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_is_wifi_hardif(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %3, align 8
  %4 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %5 = icmp ne %struct.batadv_hard_iface* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %9 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
