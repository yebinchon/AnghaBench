; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_se_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_se_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_evt_transaction = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"transaction: %x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_se_transaction(%struct.nfc_dev* %0, i32 %1, %struct.nfc_evt_transaction* %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_evt_transaction*, align 8
  %7 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfc_evt_transaction* %2, %struct.nfc_evt_transaction** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %10, i32 0, i32 0
  %12 = call i32 @device_lock(i32* %11)
  %13 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %6, align 8
  %14 = icmp ne %struct.nfc_evt_transaction* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPROTO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nfc_evt_transaction*, %struct.nfc_evt_transaction** %6, align 8
  %22 = call i32 @nfc_genl_se_transaction(%struct.nfc_dev* %19, i32 %20, %struct.nfc_evt_transaction* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %24, i32 0, i32 0
  %26 = call i32 @device_unlock(i32* %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @nfc_genl_se_transaction(%struct.nfc_dev*, i32, %struct.nfc_evt_transaction*) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
