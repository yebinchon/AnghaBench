; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_change_tx_queue_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_change_tx_queue_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.pfifo_fast_priv = type { i32 }
%struct.skb_array = type { i32 }

@PFIFO_FAST_BANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32)* @pfifo_fast_change_tx_queue_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_fast_change_tx_queue_len(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfifo_fast_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skb_array*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %11 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.pfifo_fast_priv* %11, %struct.pfifo_fast_priv** %5, align 8
  %12 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.skb_array*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.skb_array* @band2list(%struct.pfifo_fast_priv* %21, i32 %22)
  store %struct.skb_array* %23, %struct.skb_array** %9, align 8
  %24 = load %struct.skb_array*, %struct.skb_array** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.skb_array*, %struct.skb_array** %15, i64 %26
  store %struct.skb_array* %24, %struct.skb_array** %27, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @skb_array_resize_multiple(%struct.skb_array** %15, i32 %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.skb_array* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local i32 @skb_array_resize_multiple(%struct.skb_array**, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
