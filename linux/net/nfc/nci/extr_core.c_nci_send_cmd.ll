; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32 }
%struct.nci_ctrl_hdr = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"opcode 0x%x, plen %d\0A\00", align 1
@NCI_CTRL_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no memory for command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NCI_MT_CMD_PKT = common dso_local global i32 0, align 4
@NCI_PBF_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_send_cmd(%struct.nci_dev* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nci_ctrl_hdr*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %16 = load i64, i64* @NCI_CTRL_HDR_SIZE, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev* %15, i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load i64, i64* @NCI_CTRL_HDR_SIZE, align 8
  %30 = call %struct.nci_ctrl_hdr* @skb_put(%struct.sk_buff* %28, i64 %29)
  store %struct.nci_ctrl_hdr* %30, %struct.nci_ctrl_hdr** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @nci_opcode_gid(i32 %31)
  %33 = load %struct.nci_ctrl_hdr*, %struct.nci_ctrl_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @nci_opcode_oid(i32 %35)
  %37 = load %struct.nci_ctrl_hdr*, %struct.nci_ctrl_hdr** %10, align 8
  %38 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.nci_ctrl_hdr*, %struct.nci_ctrl_hdr** %10, align 8
  %41 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.nci_ctrl_hdr*, %struct.nci_ctrl_hdr** %10, align 8
  %43 = bitcast %struct.nci_ctrl_hdr* %42 to i64*
  %44 = load i32, i32* @NCI_MT_CMD_PKT, align 4
  %45 = call i32 @nci_mt_set(i64* %43, i32 %44)
  %46 = load %struct.nci_ctrl_hdr*, %struct.nci_ctrl_hdr** %10, align 8
  %47 = bitcast %struct.nci_ctrl_hdr* %46 to i64*
  %48 = load i32, i32* @NCI_PBF_LAST, align 4
  %49 = call i32 @nci_pbf_set(i64* %47, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %27
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @skb_put_data(%struct.sk_buff* %53, i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %27
  %58 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %59 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %58, i32 0, i32 2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = call i32 @skb_queue_tail(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %65, i32 0, i32 0
  %67 = call i32 @queue_work(i32 %64, i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %57, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev*, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.nci_ctrl_hdr* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @nci_opcode_gid(i32) #1

declare dso_local i32 @nci_opcode_oid(i32) #1

declare dso_local i32 @nci_mt_set(i64*, i32) #1

declare dso_local i32 @nci_pbf_set(i64*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
