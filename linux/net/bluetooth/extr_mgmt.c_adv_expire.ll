; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_adv_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_adv_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.adv_info = type { i32, i32 }
%struct.hci_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @adv_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv_expire(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv_info*, align 8
  %6 = alloca %struct.hci_request, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %8, i32 %11)
  store %struct.adv_info* %12, %struct.adv_info** %5, align 8
  %13 = load %struct.adv_info*, %struct.adv_info** %5, align 8
  %14 = icmp ne %struct.adv_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.adv_info*, %struct.adv_info** %5, align 8
  %18 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %47

24:                                               ; preds = %16
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = call i32 @cancel_adv_timeout(%struct.hci_dev* %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.adv_info*, %struct.adv_info** %5, align 8
  %29 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.adv_info* @hci_get_next_instance(%struct.hci_dev* %27, i32 %30)
  store %struct.adv_info* %31, %struct.adv_info** %5, align 8
  %32 = load %struct.adv_info*, %struct.adv_info** %5, align 8
  %33 = icmp ne %struct.adv_info* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = call i32 @hci_req_init(%struct.hci_request* %6, %struct.hci_dev* %36)
  %38 = load %struct.adv_info*, %struct.adv_info** %5, align 8
  %39 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__hci_req_schedule_adv_instance(%struct.hci_request* %6, i32 %40, i32 1)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %47

45:                                               ; preds = %35
  %46 = call i32 @hci_req_run(%struct.hci_request* %6, i32* null)
  br label %47

47:                                               ; preds = %45, %44, %34, %23, %15
  ret void
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @cancel_adv_timeout(%struct.hci_dev*) #1

declare dso_local %struct.adv_info* @hci_get_next_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_schedule_adv_instance(%struct.hci_request*, i32, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
