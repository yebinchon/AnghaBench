; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_change_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_change_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.a2mp_cmd = type { i32 }
%struct.a2mp_cl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Controller id %d type %d status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_change_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_change_notify(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca %struct.amp_mgr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.a2mp_cmd*, align 8
  %7 = alloca %struct.a2mp_cl*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.a2mp_cl*
  store %struct.a2mp_cl* %12, %struct.a2mp_cl** %7, align 8
  br label %13

13:                                               ; preds = %19, %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 12
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.a2mp_cl*, %struct.a2mp_cl** %7, align 8
  %21 = getelementptr inbounds %struct.a2mp_cl, %struct.a2mp_cl* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.a2mp_cl*, %struct.a2mp_cl** %7, align 8
  %24 = getelementptr inbounds %struct.a2mp_cl, %struct.a2mp_cl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.a2mp_cl*, %struct.a2mp_cl** %7, align 8
  %27 = getelementptr inbounds %struct.a2mp_cl, %struct.a2mp_cl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.a2mp_cl* @skb_pull(%struct.sk_buff* %30, i32 12)
  store %struct.a2mp_cl* %31, %struct.a2mp_cl** %7, align 8
  br label %13

32:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.a2mp_cl* @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
