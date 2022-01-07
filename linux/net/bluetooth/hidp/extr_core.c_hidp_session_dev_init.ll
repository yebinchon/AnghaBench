; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.hidp_connadd_req = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.hidp_connadd_req*)* @hidp_session_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session_dev_init(%struct.hidp_session* %0, %struct.hidp_connadd_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.hidp_connadd_req*, align 8
  %6 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.hidp_connadd_req* %1, %struct.hidp_connadd_req** %5, align 8
  %7 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %8 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %13 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %14 = call i32 @hidp_setup_hid(%struct.hidp_session* %12, %struct.hidp_connadd_req* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %17, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %27 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %32 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %33 = call i32 @hidp_setup_input(%struct.hidp_session* %31, %struct.hidp_connadd_req* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @hidp_setup_hid(%struct.hidp_session*, %struct.hidp_connadd_req*) #1

declare dso_local i32 @hidp_setup_input(%struct.hidp_session*, %struct.hidp_connadd_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
