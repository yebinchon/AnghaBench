; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"idx=%d to gate %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_HCI_ANY_SET_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i64, i64* %11, align 8
  %18 = add i64 1, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @memcpy(i32* %31, i32* %32, i64 %33)
  %35 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @NFC_HCI_ANY_SET_PARAMETER, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  %41 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %35, i32 %36, i32 %37, i32* %38, i64 %40, i32* null)
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %27, %24
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
