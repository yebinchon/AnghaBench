; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)* }
%struct.tcf_walker = type { i32, i32 }

@walker_check_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32)* @tcf_proto_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_proto_is_empty(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_walker, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %6, i32 0, i32 1
  %9 = load i32, i32* @walker_check_empty, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)*, i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %18 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)*, i32 (%struct.tcf_proto*, %struct.tcf_walker*, i32)** %20, align 8
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %21(%struct.tcf_proto* %22, %struct.tcf_walker* %6, i32 %23)
  %25 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
