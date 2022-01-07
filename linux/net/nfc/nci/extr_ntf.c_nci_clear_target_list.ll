; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_clear_target_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_clear_target_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i64, i32 }

@NCI_MAX_DISCOVERED_TARGETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_clear_target_list(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %3 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @NCI_MAX_DISCOVERED_TARGETS, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @memset(i32 %5, i32 0, i32 %9)
  %11 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
