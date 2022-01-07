; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_prop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_prop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_cmd_param = type { i64, i32*, i32 }

@NCI_GID_PROPRIETARY = common dso_local global i32 0, align 4
@nci_generic_req = common dso_local global i32 0, align 4
@NCI_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_prop_cmd(%struct.nci_dev* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nci_cmd_param, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @NCI_GID_PROPRIETARY, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nci_opcode_pack(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.nci_cmd_param, %struct.nci_cmd_param* %9, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.nci_cmd_param, %struct.nci_cmd_param* %9, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds %struct.nci_cmd_param, %struct.nci_cmd_param* %9, i32 0, i32 1
  store i32* %16, i32** %17, align 8
  %18 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %19 = load i32, i32* @nci_generic_req, align 4
  %20 = ptrtoint %struct.nci_cmd_param* %9 to i64
  %21 = load i32, i32* @NCI_CMD_TIMEOUT, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = call i32 @__nci_request(%struct.nci_dev* %18, i32 %19, i64 %20, i32 %22)
  ret i32 %23
}

declare dso_local i32 @nci_opcode_pack(i32, i32) #1

declare dso_local i32 @__nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
