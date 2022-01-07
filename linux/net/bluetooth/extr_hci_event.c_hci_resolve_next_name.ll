; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_resolve_next_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_resolve_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state }
%struct.discovery_state = type { i32 }
%struct.inquiry_entry = type { i32 }

@BDADDR_ANY = common dso_local global i32 0, align 4
@NAME_NEEDED = common dso_local global i32 0, align 4
@NAME_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_resolve_next_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_resolve_next_name(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.discovery_state*, align 8
  %5 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 0
  store %struct.discovery_state* %7, %struct.discovery_state** %4, align 8
  %8 = load %struct.discovery_state*, %struct.discovery_state** %4, align 8
  %9 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %8, i32 0, i32 0
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load i32, i32* @BDADDR_ANY, align 4
  %16 = load i32, i32* @NAME_NEEDED, align 4
  %17 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev* %14, i32 %15, i32 %16)
  store %struct.inquiry_entry* %17, %struct.inquiry_entry** %5, align 8
  %18 = load %struct.inquiry_entry*, %struct.inquiry_entry** %5, align 8
  %19 = icmp ne %struct.inquiry_entry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.inquiry_entry*, %struct.inquiry_entry** %5, align 8
  %24 = call i64 @hci_resolve_name(%struct.hci_dev* %22, %struct.inquiry_entry* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @NAME_PENDING, align 4
  %28 = load %struct.inquiry_entry*, %struct.inquiry_entry** %5, align 8
  %29 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %20, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev*, i32, i32) #1

declare dso_local i64 @hci_resolve_name(%struct.hci_dev*, %struct.inquiry_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
