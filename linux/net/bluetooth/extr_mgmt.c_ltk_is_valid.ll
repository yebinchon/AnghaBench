; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_ltk_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_ltk_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_ltk_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgmt_ltk_info*)* @ltk_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltk_is_valid(%struct.mgmt_ltk_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgmt_ltk_info*, align 8
  store %struct.mgmt_ltk_info* %0, %struct.mgmt_ltk_info** %3, align 8
  %4 = load %struct.mgmt_ltk_info*, %struct.mgmt_ltk_info** %3, align 8
  %5 = getelementptr inbounds %struct.mgmt_ltk_info, %struct.mgmt_ltk_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mgmt_ltk_info*, %struct.mgmt_ltk_info** %3, align 8
  %10 = getelementptr inbounds %struct.mgmt_ltk_info, %struct.mgmt_ltk_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %8, %1
  %15 = load %struct.mgmt_ltk_info*, %struct.mgmt_ltk_info** %3, align 8
  %16 = getelementptr inbounds %struct.mgmt_ltk_info, %struct.mgmt_ltk_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %32 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %33

20:                                               ; preds = %14
  %21 = load %struct.mgmt_ltk_info*, %struct.mgmt_ltk_info** %3, align 8
  %22 = getelementptr inbounds %struct.mgmt_ltk_info, %struct.mgmt_ltk_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 192
  %29 = icmp ne i32 %28, 192
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %33

31:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %19, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
