; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_user_passkey_neg_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_user_passkey_neg_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_cp_user_passkey_neg_reply = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_USER_PASSKEY_NEG_REPLY = common dso_local global i32 0, align 4
@HCI_OP_USER_PASSKEY_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @user_passkey_neg_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_passkey_neg_reply(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_user_passkey_neg_reply*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.mgmt_cp_user_passkey_neg_reply*
  store %struct.mgmt_cp_user_passkey_neg_reply* %11, %struct.mgmt_cp_user_passkey_neg_reply** %9, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %15 = load %struct.mgmt_cp_user_passkey_neg_reply*, %struct.mgmt_cp_user_passkey_neg_reply** %9, align 8
  %16 = getelementptr inbounds %struct.mgmt_cp_user_passkey_neg_reply, %struct.mgmt_cp_user_passkey_neg_reply* %15, i32 0, i32 0
  %17 = load i32, i32* @MGMT_OP_USER_PASSKEY_NEG_REPLY, align 4
  %18 = load i32, i32* @HCI_OP_USER_PASSKEY_NEG_REPLY, align 4
  %19 = call i32 @user_pairing_resp(%struct.sock* %13, %struct.hci_dev* %14, i32* %16, i32 %17, i32 %18, i32 0)
  ret i32 %19
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @user_pairing_resp(%struct.sock*, %struct.hci_dev*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
