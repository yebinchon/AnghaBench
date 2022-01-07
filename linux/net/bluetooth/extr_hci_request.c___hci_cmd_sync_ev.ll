; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_cmd_sync_ev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_cmd_sync_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_dev = type { i32, i32, i32, %struct.sk_buff*, i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_REQ_PEND = common dso_local global i32 0, align 4
@hci_req_sync_complete = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s end: err %d\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hci_request, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %22 = call i32 @hci_req_init(%struct.hci_request* %14, %struct.hci_dev* %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @hci_req_add_ev(%struct.hci_request* %14, i32 %23, i32 %24, i8* %25, i32 %26)
  %28 = load i32, i32* @HCI_REQ_PEND, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @hci_req_sync_complete, align 4
  %32 = call i32 @hci_req_run_skb(%struct.hci_request* %14, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %16, align 4
  %37 = call %struct.sk_buff* @ERR_PTR(i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  br label %107

38:                                               ; preds = %6
  %39 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HCI_REQ_PEND, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @wait_event_interruptible_timeout(i32 %41, i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @ERESTARTSYS, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load i32, i32* @EINTR, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.sk_buff* @ERR_PTR(i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %7, align 8
  br label %107

58:                                               ; preds = %38
  %59 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %73 [
    i32 128, label %62
    i32 129, label %68
  ]

62:                                               ; preds = %58
  %63 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bt_to_errno(i32 %65)
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %16, align 4
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %76

73:                                               ; preds = %58
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %68, %62
  %77 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 3
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  store %struct.sk_buff* %83, %struct.sk_buff** %15, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %85, align 8
  %86 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %76
  %94 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  %96 = load i32, i32* %16, align 4
  %97 = call %struct.sk_buff* @ERR_PTR(i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %7, align 8
  br label %107

98:                                               ; preds = %76
  %99 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @ENODATA, align 4
  %103 = sub nsw i32 0, %102
  %104 = call %struct.sk_buff* @ERR_PTR(i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %7, align 8
  br label %107

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %7, align 8
  br label %107

107:                                              ; preds = %105, %101, %93, %54, %35
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %108
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add_ev(%struct.hci_request*, i32, i32, i8*, i32) #1

declare dso_local i32 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @bt_to_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
