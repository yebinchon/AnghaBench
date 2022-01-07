; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_cmd_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_cmd_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.a2mp_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ident %d code 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_cmd_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_cmd_rsp(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca %struct.amp_mgr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.a2mp_cmd*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %6, align 8
  %7 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %6, align 8
  %8 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %6, align 8
  %11 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %18)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
