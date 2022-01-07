; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_write_remote_amp_assoc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_write_remote_amp_assoc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_write_remote_amp_assoc = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"%s status 0x%2.2x phy_handle 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32, %struct.sk_buff*)* @write_remote_amp_assoc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_remote_amp_assoc_complete(%struct.hci_dev* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hci_rp_write_remote_amp_assoc*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_rp_write_remote_amp_assoc*
  store %struct.hci_rp_write_remote_amp_assoc* %14, %struct.hci_rp_write_remote_amp_assoc** %9, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hci_rp_write_remote_amp_assoc*, %struct.hci_rp_write_remote_amp_assoc** %9, align 8
  %19 = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, %struct.hci_rp_write_remote_amp_assoc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hci_rp_write_remote_amp_assoc*, %struct.hci_rp_write_remote_amp_assoc** %9, align 8
  %22 = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, %struct.hci_rp_write_remote_amp_assoc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i32 %23)
  %25 = load %struct.hci_rp_write_remote_amp_assoc*, %struct.hci_rp_write_remote_amp_assoc** %9, align 8
  %26 = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, %struct.hci_rp_write_remote_amp_assoc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %32 = load %struct.hci_rp_write_remote_amp_assoc*, %struct.hci_rp_write_remote_amp_assoc** %9, align 8
  %33 = getelementptr inbounds %struct.hci_rp_write_remote_amp_assoc, %struct.hci_rp_write_remote_amp_assoc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @amp_write_rem_assoc_continue(%struct.hci_dev* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64, i32) #1

declare dso_local i32 @amp_write_rem_assoc_continue(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
