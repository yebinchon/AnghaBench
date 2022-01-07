; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@nci_cmd_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s_nci_cmd_wq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nci_rx_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s_nci_rx_wq\00", align 1
@nci_tx_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s_nci_tx_wq\00", align 1
@nci_cmd_timer = common dso_local global i32 0, align 4
@nci_data_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_register_device(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %6 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %10, i32 0, i32 14
  store i64 0, i64* %11, align 8
  %12 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %12, i32 0, i32 13
  %14 = load i32, i32* @nci_cmd_work, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i8* @dev_name(%struct.device* %17)
  %19 = call i32 @snprintf(i8* %16, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %21 = call i8* @create_singlethread_workqueue(i8* %20)
  %22 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %113

31:                                               ; preds = %1
  %32 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %32, i32 0, i32 12
  %34 = load i32, i32* @nci_rx_work, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i8* @dev_name(%struct.device* %37)
  %39 = call i32 @snprintf(i8* %36, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %41 = call i8* @create_singlethread_workqueue(i8* %40)
  %42 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %108

51:                                               ; preds = %31
  %52 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %52, i32 0, i32 11
  %54 = load i32, i32* @nci_tx_work, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i8* @dev_name(%struct.device* %57)
  %59 = call i32 @snprintf(i8* %56, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %61 = call i8* @create_singlethread_workqueue(i8* %60)
  %62 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %63 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %62, i32 0, i32 10
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %64, i32 0, i32 10
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %103

71:                                               ; preds = %51
  %72 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %72, i32 0, i32 9
  %74 = call i32 @skb_queue_head_init(i32* %73)
  %75 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %75, i32 0, i32 8
  %77 = call i32 @skb_queue_head_init(i32* %76)
  %78 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %79 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %78, i32 0, i32 7
  %80 = call i32 @skb_queue_head_init(i32* %79)
  %81 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %82 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %81, i32 0, i32 6
  %83 = load i32, i32* @nci_cmd_timer, align 4
  %84 = call i32 @timer_setup(i32* %82, i32 %83, i32 0)
  %85 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %85, i32 0, i32 5
  %87 = load i32, i32* @nci_data_timer, align 4
  %88 = call i32 @timer_setup(i32* %86, i32 %87, i32 0)
  %89 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %90 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %89, i32 0, i32 4
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %93 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %92, i32 0, i32 3
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %96 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = call i32 @nfc_register_device(%struct.TYPE_2__* %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %71
  br label %103

102:                                              ; preds = %71
  br label %113

103:                                              ; preds = %101, %68
  %104 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %105 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @destroy_workqueue(i8* %106)
  br label %108

108:                                              ; preds = %103, %48
  %109 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %110 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @destroy_workqueue(i8* %111)
  br label %113

113:                                              ; preds = %108, %102, %28
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfc_register_device(%struct.TYPE_2__*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
