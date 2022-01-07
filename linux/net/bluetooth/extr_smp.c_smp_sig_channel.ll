; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_sig_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_sig_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.smp_chan*, %struct.l2cap_conn* }
%struct.smp_chan = type { i32 }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, i32 }
%struct.sk_buff = type { i32, i32* }

@EILSEQ = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@SMP_PAIRING_NOTSUPP = common dso_local global i32 0, align 4
@SMP_CMD_MAX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown command code 0x%2.2x\00", align 1
@SMP_CMD_NOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected SMP command 0x%02x from %pMR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @smp_sig_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_sig_channel(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 1
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %13, align 8
  store %struct.l2cap_conn* %14, %struct.l2cap_conn** %6, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %16 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %15, i32 0, i32 0
  %17 = load %struct.hci_conn*, %struct.hci_conn** %16, align 8
  store %struct.hci_conn* %17, %struct.hci_conn** %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EILSEQ, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %158

25:                                               ; preds = %2
  %26 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %27 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HCI_LE_ENABLED, align 4
  %30 = call i32 @hci_dev_test_flag(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @SMP_PAIRING_NOTSUPP, align 4
  store i32 %33, i32* %10, align 4
  br label %133

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_pull(%struct.sk_buff* %40, i32 4)
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 0
  %44 = load %struct.smp_chan*, %struct.smp_chan** %43, align 8
  store %struct.smp_chan* %44, %struct.smp_chan** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SMP_CMD_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %148

49:                                               ; preds = %34
  %50 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %51 = icmp ne %struct.smp_chan* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %55 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %54, i32 0, i32 0
  %56 = call i32 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %148

59:                                               ; preds = %52, %49
  %60 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %61 = icmp ne %struct.smp_chan* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 132
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 129
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %148

69:                                               ; preds = %65, %62, %59
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %128 [
    i32 132, label %71
    i32 134, label %75
    i32 131, label %80
    i32 129, label %84
    i32 135, label %88
    i32 133, label %92
    i32 140, label %96
    i32 136, label %100
    i32 138, label %104
    i32 139, label %108
    i32 128, label %112
    i32 130, label %116
    i32 141, label %120
    i32 137, label %124
  ]

71:                                               ; preds = %69
  %72 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @smp_cmd_pairing_req(%struct.l2cap_conn* %72, %struct.sk_buff* %73)
  store i32 %74, i32* %10, align 4
  br label %132

75:                                               ; preds = %69
  %76 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %77 = call i32 @smp_failure(%struct.l2cap_conn* %76, i32 0)
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %132

80:                                               ; preds = %69
  %81 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @smp_cmd_pairing_rsp(%struct.l2cap_conn* %81, %struct.sk_buff* %82)
  store i32 %83, i32* %10, align 4
  br label %132

84:                                               ; preds = %69
  %85 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @smp_cmd_security_req(%struct.l2cap_conn* %85, %struct.sk_buff* %86)
  store i32 %87, i32* %10, align 4
  br label %132

88:                                               ; preds = %69
  %89 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @smp_cmd_pairing_confirm(%struct.l2cap_conn* %89, %struct.sk_buff* %90)
  store i32 %91, i32* %10, align 4
  br label %132

92:                                               ; preds = %69
  %93 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @smp_cmd_pairing_random(%struct.l2cap_conn* %93, %struct.sk_buff* %94)
  store i32 %95, i32* %10, align 4
  br label %132

96:                                               ; preds = %69
  %97 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @smp_cmd_encrypt_info(%struct.l2cap_conn* %97, %struct.sk_buff* %98)
  store i32 %99, i32* %10, align 4
  br label %132

100:                                              ; preds = %69
  %101 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @smp_cmd_master_ident(%struct.l2cap_conn* %101, %struct.sk_buff* %102)
  store i32 %103, i32* %10, align 4
  br label %132

104:                                              ; preds = %69
  %105 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @smp_cmd_ident_info(%struct.l2cap_conn* %105, %struct.sk_buff* %106)
  store i32 %107, i32* %10, align 4
  br label %132

108:                                              ; preds = %69
  %109 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i32 @smp_cmd_ident_addr_info(%struct.l2cap_conn* %109, %struct.sk_buff* %110)
  store i32 %111, i32* %10, align 4
  br label %132

112:                                              ; preds = %69
  %113 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 @smp_cmd_sign_info(%struct.l2cap_conn* %113, %struct.sk_buff* %114)
  store i32 %115, i32* %10, align 4
  br label %132

116:                                              ; preds = %69
  %117 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call i32 @smp_cmd_public_key(%struct.l2cap_conn* %117, %struct.sk_buff* %118)
  store i32 %119, i32* %10, align 4
  br label %132

120:                                              ; preds = %69
  %121 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @smp_cmd_dhkey_check(%struct.l2cap_conn* %121, %struct.sk_buff* %122)
  store i32 %123, i32* %10, align 4
  br label %132

124:                                              ; preds = %69
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @smp_cmd_keypress_notify(%struct.l2cap_conn* %125, %struct.sk_buff* %126)
  store i32 %127, i32* %10, align 4
  br label %132

128:                                              ; preds = %69
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @SMP_CMD_NOTSUPP, align 4
  store i32 %131, i32* %10, align 4
  br label %133

132:                                              ; preds = %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %75, %71
  br label %133

133:                                              ; preds = %132, %128, %32
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @smp_failure(%struct.l2cap_conn* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call i32 @kfree_skb(%struct.sk_buff* %144)
  br label %146

146:                                              ; preds = %143, %133
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %158

148:                                              ; preds = %68, %58, %48
  %149 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %150 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %154 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %153, i32 0, i32 0
  %155 = call i32 @bt_dev_err(i32 %151, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %148, %146, %22
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @hci_dev_test_flag(i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_cmd_pairing_req(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_failure(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @smp_cmd_pairing_rsp(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_security_req(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_pairing_confirm(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_pairing_random(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_encrypt_info(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_master_ident(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_ident_info(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_ident_addr_info(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_sign_info(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_public_key(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_dhkey_check(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @smp_cmd_keypress_notify(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
