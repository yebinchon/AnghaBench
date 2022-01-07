; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*)* @hidp_session_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session_dev_add(%struct.hidp_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  %5 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %6 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @hid_add_device(%struct.TYPE_2__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %9
  %19 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %20 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @get_device(i32* %22)
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %26 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %31 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @input_register_device(i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %40 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @input_get_device(i64 %41)
  br label %43

43:                                               ; preds = %38, %24
  br label %44

44:                                               ; preds = %43, %18
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %36, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @hid_add_device(%struct.TYPE_2__*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @input_register_device(i64) #1

declare dso_local i32 @input_get_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
