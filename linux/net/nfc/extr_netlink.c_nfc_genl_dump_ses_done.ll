; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_ses_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_ses_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64* }
%struct.class_dev_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nfc_genl_dump_ses_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_dump_ses_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.class_dev_iter*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %4 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %5 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.class_dev_iter*
  store %struct.class_dev_iter* %9, %struct.class_dev_iter** %3, align 8
  %10 = load %struct.class_dev_iter*, %struct.class_dev_iter** %3, align 8
  %11 = call i32 @nfc_device_iter_exit(%struct.class_dev_iter* %10)
  %12 = load %struct.class_dev_iter*, %struct.class_dev_iter** %3, align 8
  %13 = call i32 @kfree(%struct.class_dev_iter* %12)
  ret i32 0
}

declare dso_local i32 @nfc_device_iter_exit(%struct.class_dev_iter*) #1

declare dso_local i32 @kfree(%struct.class_dev_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
