; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64 }

@BR_NO_STP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_stp_set_enabled(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BR_NO_STP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %16 = call i32 @br_stp_start(%struct.net_bridge* %15)
  br label %17

17:                                               ; preds = %14, %8
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %20 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BR_NO_STP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %26 = call i32 @br_stp_stop(%struct.net_bridge* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %17
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @br_stp_start(%struct.net_bridge*) #1

declare dso_local i32 @br_stp_stop(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
