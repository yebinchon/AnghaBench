; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_remove_adv_instance.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_remove_adv_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i64, i32, i32 }
%struct.adv_info = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s removing %dMR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_remove_adv_instance(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %7, i32 %8)
  store %struct.adv_info* %9, %struct.adv_info** %6, align 8
  %10 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %11 = icmp ne %struct.adv_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %15
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 3
  %34 = call i32 @cancel_delayed_work(i32* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %15
  %41 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %42 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %41, i32 0, i32 1
  %43 = call i32 @cancel_delayed_work_sync(i32* %42)
  %44 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %45 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %44, i32 0, i32 0
  %46 = call i32 @list_del(i32* %45)
  %47 = load %struct.adv_info*, %struct.adv_info** %6, align 8
  %48 = call i32 @kfree(%struct.adv_info* %47)
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %40, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.adv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
