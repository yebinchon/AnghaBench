; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_pending_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_pending_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32, %struct.sock*, i8*, i32, i32, i8* }
%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %0, i8* %1, %struct.hci_dev* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mgmt_pending_cmd*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.hci_dev* %2, %struct.hci_dev** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mgmt_pending_cmd* @kzalloc(i32 40, i32 %13)
  store %struct.mgmt_pending_cmd* %14, %struct.mgmt_pending_cmd** %12, align 8
  %15 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %16 = icmp ne %struct.mgmt_pending_cmd* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.mgmt_pending_cmd* null, %struct.mgmt_pending_cmd** %6, align 8
  br label %55

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %26 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kmemdup(i8* %27, i8* %28, i32 %29)
  %31 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %32 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %34 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %18
  %38 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %39 = call i32 @kfree(%struct.mgmt_pending_cmd* %38)
  store %struct.mgmt_pending_cmd* null, %struct.mgmt_pending_cmd** %6, align 8
  br label %55

40:                                               ; preds = %18
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %43 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %46 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %45, i32 0, i32 1
  store %struct.sock* %44, %struct.sock** %46, align 8
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = call i32 @sock_hold(%struct.sock* %47)
  %49 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %50 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %49, i32 0, i32 0
  %51 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 0
  %53 = call i32 @list_add(i32* %50, i32* %52)
  %54 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  store %struct.mgmt_pending_cmd* %54, %struct.mgmt_pending_cmd** %6, align 8
  br label %55

55:                                               ; preds = %40, %37, %17
  %56 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %6, align 8
  ret %struct.mgmt_pending_cmd* %56
}

declare dso_local %struct.mgmt_pending_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @kmemdup(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
