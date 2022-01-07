; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"NCI RX: MT=ntf, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", align 1
@NCI_CTRL_HDR_SIZE = common dso_local global i32 0, align 4
@NCI_GID_PROPRIETARY = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported ntf opcode 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown ntf opcode 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nci_opcode(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nci_pbf(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @nci_opcode_gid(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nci_opcode_oid(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nci_plen(i32 %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %15, i32 %17, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %25 = call i32 @skb_pull(%struct.sk_buff* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @nci_opcode_gid(i32 %26)
  %28 = load i64, i64* @NCI_GID_PROPRIETARY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @nci_prop_ntf_packet(%struct.nci_dev* %31, i32 %32, %struct.sk_buff* %33)
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %30
  br label %84

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %76 [
    i32 135, label %44
    i32 134, label %48
    i32 133, label %52
    i32 130, label %56
    i32 129, label %60
    i32 131, label %64
    i32 132, label %68
    i32 128, label %72
  ]

44:                                               ; preds = %42
  %45 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @nci_core_conn_credits_ntf_packet(%struct.nci_dev* %45, %struct.sk_buff* %46)
  br label %79

48:                                               ; preds = %42
  %49 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @nci_core_generic_error_ntf_packet(%struct.nci_dev* %49, %struct.sk_buff* %50)
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @nci_core_conn_intf_error_ntf_packet(%struct.nci_dev* %53, %struct.sk_buff* %54)
  br label %79

56:                                               ; preds = %42
  %57 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @nci_rf_discover_ntf_packet(%struct.nci_dev* %57, %struct.sk_buff* %58)
  br label %79

60:                                               ; preds = %42
  %61 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @nci_rf_intf_activated_ntf_packet(%struct.nci_dev* %61, %struct.sk_buff* %62)
  br label %79

64:                                               ; preds = %42
  %65 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @nci_rf_deactivate_ntf_packet(%struct.nci_dev* %65, %struct.sk_buff* %66)
  br label %79

68:                                               ; preds = %42
  %69 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @nci_nfcee_discover_ntf_packet(%struct.nci_dev* %69, %struct.sk_buff* %70)
  br label %79

72:                                               ; preds = %42
  %73 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @nci_nfcee_action_ntf_packet(%struct.nci_dev* %73, %struct.sk_buff* %74)
  br label %79

76:                                               ; preds = %42
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %72, %68, %64, %60, %56, %52, %48, %44
  %80 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @nci_core_ntf_packet(%struct.nci_dev* %80, i32 %81, %struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %79, %41
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  ret void
}

declare dso_local i32 @nci_opcode(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @nci_pbf(i32) #1

declare dso_local i64 @nci_opcode_gid(i32) #1

declare dso_local i32 @nci_opcode_oid(i32) #1

declare dso_local i32 @nci_plen(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nci_prop_ntf_packet(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nci_core_conn_credits_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_generic_error_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_conn_intf_error_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_discover_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_intf_activated_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_deactivate_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_nfcee_discover_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_nfcee_action_ntf_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_ntf_packet(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
