; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_get_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_get_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atalk_addr = type { i32 }
%struct.atalk_route = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @atrtr_get_dev(%struct.atalk_addr* %0) #0 {
  %2 = alloca %struct.atalk_addr*, align 8
  %3 = alloca %struct.atalk_route*, align 8
  store %struct.atalk_addr* %0, %struct.atalk_addr** %2, align 8
  %4 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  %5 = call %struct.atalk_route* @atrtr_find(%struct.atalk_addr* %4)
  store %struct.atalk_route* %5, %struct.atalk_route** %3, align 8
  %6 = load %struct.atalk_route*, %struct.atalk_route** %3, align 8
  %7 = icmp ne %struct.atalk_route* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.atalk_route*, %struct.atalk_route** %3, align 8
  %10 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.net_device* [ %11, %8 ], [ null, %12 ]
  ret %struct.net_device* %14
}

declare dso_local %struct.atalk_route* @atrtr_find(%struct.atalk_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
