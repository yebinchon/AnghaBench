; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_recv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.amp_mgr* }
%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.a2mp_cmd = type { i32, i32, i32 }
%struct.a2mp_cmd_rej = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"code 0x%2.2x id %d len %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown A2MP sig cmd 0x%2.2x\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Send A2MP Rej: cmd 0x%2.2x err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @a2mp_chan_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_chan_recv_cb(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.a2mp_cmd*, align 8
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.a2mp_cmd_rej, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 0
  %12 = load %struct.amp_mgr*, %struct.amp_mgr** %11, align 8
  store %struct.amp_mgr* %12, %struct.amp_mgr** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %14 = call i32 @amp_mgr_get(%struct.amp_mgr* %13)
  br label %15

15:                                               ; preds = %125, %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 12
  br i1 %20, label %21, label %126

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.a2mp_cmd*
  store %struct.a2mp_cmd* %26, %struct.a2mp_cmd** %5, align 8
  %27 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @skb_pull(%struct.sk_buff* %39, i32 12)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %21
  %47 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %21
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %126

54:                                               ; preds = %46
  %55 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %59 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %118 [
    i32 138, label %63
    i32 133, label %68
    i32 140, label %73
    i32 129, label %78
    i32 131, label %83
    i32 137, label %88
    i32 135, label %93
    i32 132, label %98
    i32 128, label %103
    i32 130, label %108
    i32 139, label %113
    i32 136, label %113
    i32 134, label %113
  ]

63:                                               ; preds = %54
  %64 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %67 = call i32 @a2mp_command_rej(%struct.amp_mgr* %64, %struct.sk_buff* %65, %struct.a2mp_cmd* %66)
  br label %125

68:                                               ; preds = %54
  %69 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %72 = call i32 @a2mp_discover_req(%struct.amp_mgr* %69, %struct.sk_buff* %70, %struct.a2mp_cmd* %71)
  store i32 %72, i32* %7, align 4
  br label %125

73:                                               ; preds = %54
  %74 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %77 = call i32 @a2mp_change_notify(%struct.amp_mgr* %74, %struct.sk_buff* %75, %struct.a2mp_cmd* %76)
  store i32 %77, i32* %7, align 4
  br label %125

78:                                               ; preds = %54
  %79 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %82 = call i32 @a2mp_getinfo_req(%struct.amp_mgr* %79, %struct.sk_buff* %80, %struct.a2mp_cmd* %81)
  store i32 %82, i32* %7, align 4
  br label %125

83:                                               ; preds = %54
  %84 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %87 = call i32 @a2mp_getampassoc_req(%struct.amp_mgr* %84, %struct.sk_buff* %85, %struct.a2mp_cmd* %86)
  store i32 %87, i32* %7, align 4
  br label %125

88:                                               ; preds = %54
  %89 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %92 = call i32 @a2mp_createphyslink_req(%struct.amp_mgr* %89, %struct.sk_buff* %90, %struct.a2mp_cmd* %91)
  store i32 %92, i32* %7, align 4
  br label %125

93:                                               ; preds = %54
  %94 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %97 = call i32 @a2mp_discphyslink_req(%struct.amp_mgr* %94, %struct.sk_buff* %95, %struct.a2mp_cmd* %96)
  store i32 %97, i32* %7, align 4
  br label %125

98:                                               ; preds = %54
  %99 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %102 = call i32 @a2mp_discover_rsp(%struct.amp_mgr* %99, %struct.sk_buff* %100, %struct.a2mp_cmd* %101)
  store i32 %102, i32* %7, align 4
  br label %125

103:                                              ; preds = %54
  %104 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %107 = call i32 @a2mp_getinfo_rsp(%struct.amp_mgr* %104, %struct.sk_buff* %105, %struct.a2mp_cmd* %106)
  store i32 %107, i32* %7, align 4
  br label %125

108:                                              ; preds = %54
  %109 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %112 = call i32 @a2mp_getampassoc_rsp(%struct.amp_mgr* %109, %struct.sk_buff* %110, %struct.a2mp_cmd* %111)
  store i32 %112, i32* %7, align 4
  br label %125

113:                                              ; preds = %54, %54, %54
  %114 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %117 = call i32 @a2mp_cmd_rsp(%struct.amp_mgr* %114, %struct.sk_buff* %115, %struct.a2mp_cmd* %116)
  store i32 %117, i32* %7, align 4
  br label %125

118:                                              ; preds = %54
  %119 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %120 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68, %63
  br label %15

126:                                              ; preds = %51, %15
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = call i32 @cpu_to_le16(i32 0)
  %131 = getelementptr inbounds %struct.a2mp_cmd_rej, %struct.a2mp_cmd_rej* %9, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = bitcast i8* %135 to %struct.a2mp_cmd*
  store %struct.a2mp_cmd* %136, %struct.a2mp_cmd** %5, align 8
  %137 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %138 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %143 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  %144 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @a2mp_send(%struct.amp_mgr* %142, i32 138, i32 %145, i32 4, %struct.a2mp_cmd_rej* %9)
  br label %147

147:                                              ; preds = %129, %126
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  %150 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %151 = call i32 @amp_mgr_put(%struct.amp_mgr* %150)
  ret i32 0
}

declare dso_local i32 @amp_mgr_get(%struct.amp_mgr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @a2mp_command_rej(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_discover_req(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_change_notify(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_getinfo_req(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_getampassoc_req(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_createphyslink_req(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_discphyslink_req(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_discover_rsp(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_getinfo_rsp(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_getampassoc_rsp(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @a2mp_cmd_rsp(%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_cmd_rej*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
