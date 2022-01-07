; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c___hci_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c___hci_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unresponded command not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"no memory for command (opcode 0x%4.4x)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hci_cmd_send(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @hci_opcode_ogf(i32 %11)
  %13 = icmp ne i32 %12, 63
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %16 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev* %20, i32 %21, i32 %22, i8* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = call i32 @hci_send_frame(%struct.hci_dev* %34, %struct.sk_buff* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %27, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @hci_opcode_ogf(i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local %struct.sk_buff* @hci_prepare_cmd(%struct.hci_dev*, i32, i32, i8*) #1

declare dso_local i32 @hci_send_frame(%struct.hci_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
