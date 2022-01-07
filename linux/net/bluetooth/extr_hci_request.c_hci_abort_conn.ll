; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_abort_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_abort_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32 }
%struct.hci_request = type { i32 }

@abort_conn_complete = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to run HCI request: err %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_abort_conn(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_request, align 4
  %7 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @hci_req_init(%struct.hci_request* %6, i32 %10)
  %12 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__hci_abort_conn(%struct.hci_request* %6, %struct.hci_conn* %12, i32 %13)
  %15 = load i32, i32* @abort_conn_complete, align 4
  %16 = call i32 @hci_req_run(%struct.hci_request* %6, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @bt_dev_err(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @hci_req_init(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_abort_conn(%struct.hci_request*, %struct.hci_conn*, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
