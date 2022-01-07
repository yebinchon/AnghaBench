; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"NCI RX: MT=rsp, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\0A\00", align 1
@NCI_CTRL_HDR_SIZE = common dso_local global i32 0, align 4
@NCI_GID_PROPRIETARY = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported rsp opcode 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown rsp opcode 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
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
  %10 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %10, i32 0, i32 4
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nci_pbf(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @nci_opcode_gid(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nci_opcode_oid(i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nci_plen(i32 %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %18, i32 %20, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %28 = call i32 @skb_pull(%struct.sk_buff* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @nci_opcode_gid(i32 %29)
  %31 = load i64, i64* @NCI_GID_PROPRIETARY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @nci_prop_rsp_packet(%struct.nci_dev* %34, i32 %35, %struct.sk_buff* %36)
  %38 = load i32, i32* @ENOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %33
  br label %99

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %91 [
    i32 135, label %47
    i32 136, label %51
    i32 134, label %55
    i32 137, label %59
    i32 138, label %63
    i32 130, label %67
    i32 129, label %71
    i32 128, label %75
    i32 131, label %79
    i32 133, label %83
    i32 132, label %87
  ]

47:                                               ; preds = %45
  %48 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @nci_core_reset_rsp_packet(%struct.nci_dev* %48, %struct.sk_buff* %49)
  br label %94

51:                                               ; preds = %45
  %52 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @nci_core_init_rsp_packet(%struct.nci_dev* %52, %struct.sk_buff* %53)
  br label %94

55:                                               ; preds = %45
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @nci_core_set_config_rsp_packet(%struct.nci_dev* %56, %struct.sk_buff* %57)
  br label %94

59:                                               ; preds = %45
  %60 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @nci_core_conn_create_rsp_packet(%struct.nci_dev* %60, %struct.sk_buff* %61)
  br label %94

63:                                               ; preds = %45
  %64 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @nci_core_conn_close_rsp_packet(%struct.nci_dev* %64, %struct.sk_buff* %65)
  br label %94

67:                                               ; preds = %45
  %68 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @nci_rf_disc_map_rsp_packet(%struct.nci_dev* %68, %struct.sk_buff* %69)
  br label %94

71:                                               ; preds = %45
  %72 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @nci_rf_disc_rsp_packet(%struct.nci_dev* %72, %struct.sk_buff* %73)
  br label %94

75:                                               ; preds = %45
  %76 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @nci_rf_disc_select_rsp_packet(%struct.nci_dev* %76, %struct.sk_buff* %77)
  br label %94

79:                                               ; preds = %45
  %80 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @nci_rf_deactivate_rsp_packet(%struct.nci_dev* %80, %struct.sk_buff* %81)
  br label %94

83:                                               ; preds = %45
  %84 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @nci_nfcee_discover_rsp_packet(%struct.nci_dev* %84, %struct.sk_buff* %85)
  br label %94

87:                                               ; preds = %45
  %88 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @nci_nfcee_mode_set_rsp_packet(%struct.nci_dev* %88, %struct.sk_buff* %89)
  br label %94

91:                                               ; preds = %45
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47
  %95 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @nci_core_rsp_packet(%struct.nci_dev* %95, i32 %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %94, %44
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  %102 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %102, i32 0, i32 3
  %104 = call i32 @atomic_set(i32* %103, i32 1)
  %105 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %106 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %105, i32 0, i32 2
  %107 = call i32 @skb_queue_empty(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %99
  %110 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %111 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %114 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %113, i32 0, i32 0
  %115 = call i32 @queue_work(i32 %112, i32* %114)
  br label %116

116:                                              ; preds = %109, %99
  ret void
}

declare dso_local i32 @nci_opcode(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @nci_pbf(i32) #1

declare dso_local i64 @nci_opcode_gid(i32) #1

declare dso_local i32 @nci_opcode_oid(i32) #1

declare dso_local i32 @nci_plen(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nci_prop_rsp_packet(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nci_core_reset_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_init_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_set_config_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_conn_create_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_conn_close_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_disc_map_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_disc_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_disc_select_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_rf_deactivate_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_nfcee_discover_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_nfcee_mode_set_rsp_packet(%struct.nci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @nci_core_rsp_packet(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
