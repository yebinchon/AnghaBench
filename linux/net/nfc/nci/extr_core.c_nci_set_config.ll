; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_set_config_param = type { i64, i32*, i32 }

@nci_set_config_req = common dso_local global i32 0, align 4
@NCI_SET_CONFIG_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_set_config(%struct.nci_dev* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nci_set_config_param, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %10, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %10, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds %struct.nci_set_config_param, %struct.nci_set_config_param* %10, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %25 = load i32, i32* @nci_set_config_req, align 4
  %26 = ptrtoint %struct.nci_set_config_param* %10 to i64
  %27 = load i32, i32* @NCI_SET_CONFIG_TIMEOUT, align 4
  %28 = call i32 @msecs_to_jiffies(i32 %27)
  %29 = call i32 @__nci_request(%struct.nci_dev* %24, i32 %25, i64 %26, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @__nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
