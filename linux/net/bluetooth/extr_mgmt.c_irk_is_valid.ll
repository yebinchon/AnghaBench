; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_irk_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_irk_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_irk_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgmt_irk_info*)* @irk_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irk_is_valid(%struct.mgmt_irk_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgmt_irk_info*, align 8
  store %struct.mgmt_irk_info* %0, %struct.mgmt_irk_info** %3, align 8
  %4 = load %struct.mgmt_irk_info*, %struct.mgmt_irk_info** %3, align 8
  %5 = getelementptr inbounds %struct.mgmt_irk_info, %struct.mgmt_irk_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %21 [
    i32 129, label %8
    i32 128, label %9
  ]

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.mgmt_irk_info*, %struct.mgmt_irk_info** %3, align 8
  %11 = getelementptr inbounds %struct.mgmt_irk_info, %struct.mgmt_irk_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 5
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 192
  %18 = icmp ne i32 %17, 192
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %22

20:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
