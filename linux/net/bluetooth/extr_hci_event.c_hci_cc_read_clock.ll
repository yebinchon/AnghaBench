; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_clock.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i8*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_rp_read_clock = type { i32, i32, i32, i64 }
%struct.hci_cp_read_clock = type { i32 }
%struct.hci_conn = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_OP_READ_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_clock(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_clock*, align 8
  %6 = alloca %struct.hci_cp_read_clock*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_rp_read_clock*
  store %struct.hci_rp_read_clock* %12, %struct.hci_rp_read_clock** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.hci_rp_read_clock*, %struct.hci_rp_read_clock** %5, align 8
  %25 = getelementptr inbounds %struct.hci_rp_read_clock, %struct.hci_rp_read_clock* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %76

29:                                               ; preds = %23
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = call i32 @hci_dev_lock(%struct.hci_dev* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = load i32, i32* @HCI_OP_READ_CLOCK, align 4
  %34 = call %struct.hci_cp_read_clock* @hci_sent_cmd_data(%struct.hci_dev* %32, i32 %33)
  store %struct.hci_cp_read_clock* %34, %struct.hci_cp_read_clock** %6, align 8
  %35 = load %struct.hci_cp_read_clock*, %struct.hci_cp_read_clock** %6, align 8
  %36 = icmp ne %struct.hci_cp_read_clock* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %73

38:                                               ; preds = %29
  %39 = load %struct.hci_cp_read_clock*, %struct.hci_cp_read_clock** %6, align 8
  %40 = getelementptr inbounds %struct.hci_cp_read_clock, %struct.hci_cp_read_clock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.hci_rp_read_clock*, %struct.hci_rp_read_clock** %5, align 8
  %45 = getelementptr inbounds %struct.hci_rp_read_clock, %struct.hci_rp_read_clock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %73

50:                                               ; preds = %38
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = load %struct.hci_rp_read_clock*, %struct.hci_rp_read_clock** %5, align 8
  %53 = getelementptr inbounds %struct.hci_rp_read_clock, %struct.hci_rp_read_clock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @__le16_to_cpu(i32 %54)
  %56 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %51, i32 %55)
  store %struct.hci_conn* %56, %struct.hci_conn** %7, align 8
  %57 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %58 = icmp ne %struct.hci_conn* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.hci_rp_read_clock*, %struct.hci_rp_read_clock** %5, align 8
  %61 = getelementptr inbounds %struct.hci_rp_read_clock, %struct.hci_rp_read_clock* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hci_rp_read_clock*, %struct.hci_rp_read_clock** %5, align 8
  %67 = getelementptr inbounds %struct.hci_rp_read_clock, %struct.hci_rp_read_clock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %71 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %59, %50
  br label %73

73:                                               ; preds = %72, %43, %37
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = call i32 @hci_dev_unlock(%struct.hci_dev* %74)
  br label %76

76:                                               ; preds = %73, %28, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_cp_read_clock* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
