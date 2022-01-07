; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_must_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_must_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32 }
%struct.genl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_family*, %struct.genl_info*, i32)* @ovs_must_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_must_notify(%struct.genl_family* %0, %struct.genl_info* %1, i32 %2) #0 {
  %4 = alloca %struct.genl_family*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NLM_F_ECHO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.genl_family*, %struct.genl_family** %4, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = call i32 @genl_info_net(%struct.genl_info* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @genl_has_listeners(%struct.genl_family* %16, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi i1 [ true, %3 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @genl_has_listeners(%struct.genl_family*, i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
