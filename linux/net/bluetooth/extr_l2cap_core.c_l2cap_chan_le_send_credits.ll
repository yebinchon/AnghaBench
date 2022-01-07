; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_le_send_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_le_send_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i64, i64, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_le_credits = type { i8*, i8* }

@.str = private unnamed_addr constant [39 x i8] c"chan %p returning %u credits to sender\00", align 1
@L2CAP_LE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_chan_le_send_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_chan_le_send_credits(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_le_credits, align 8
  %5 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 5
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %3, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %11, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @cpu_to_le16(i64 %36)
  %38 = getelementptr inbounds %struct.l2cap_le_credits, %struct.l2cap_le_credits* %4, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @cpu_to_le16(i64 %39)
  %41 = getelementptr inbounds %struct.l2cap_le_credits, %struct.l2cap_le_credits* %4, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %43 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %42)
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @L2CAP_LE_CREDITS, align 4
  %51 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %46, i32 %49, i32 %50, i32 16, %struct.l2cap_le_credits* %4)
  br label %52

52:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_le_credits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
