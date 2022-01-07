; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_command_rej.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_command_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32, i32 }
%struct.a2mp_cmd_rej = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ident %d reason %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_command_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_command_rej(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_cmd_rej*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.a2mp_cmd_rej*
  store %struct.a2mp_cmd_rej* %13, %struct.a2mp_cmd_rej** %8, align 8
  %14 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.a2mp_cmd_rej*, %struct.a2mp_cmd_rej** %8, align 8
  %28 = getelementptr inbounds %struct.a2mp_cmd_rej, %struct.a2mp_cmd_rej* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 4)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
