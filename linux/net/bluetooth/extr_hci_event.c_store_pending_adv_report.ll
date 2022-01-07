; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_store_pending_adv_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_store_pending_adv_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state }
%struct.discovery_state = type { i8*, i32, i32, i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32*, i8*, i32, i32, i8**, i8*)* @store_pending_adv_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_pending_adv_report(%struct.hci_dev* %0, i32* %1, i8* %2, i32 %3, i32 %4, i8** %5, i8* %6) #0 {
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.discovery_state*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  store %struct.discovery_state* %17, %struct.discovery_state** %15, align 8
  %18 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %19 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %18, i32 0, i32 5
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @bacpy(i32* %19, i32* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %24 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %27 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %30 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %32 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8**, i8*** %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @memcpy(i32 %33, i8** %34, i8* %35)
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.discovery_state*, %struct.discovery_state** %15, align 8
  %39 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
