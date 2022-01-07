; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_physical_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_physical_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"chan %p, result %d, local_amp_id %d, remote_amp_id %d\00", align 1
@BT_DISCONN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_MR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__l2cap_physical_cfm(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BT_DISCONN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BT_CLOSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %2
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %30)
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BT_CONNECTED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @l2cap_do_create(%struct.l2cap_chan* %39, i32 %40, i32 %41, i32 %42)
  br label %71

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @L2CAP_MR_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @l2cap_do_move_cancel(%struct.l2cap_chan* %49, i32 %50)
  br label %70

52:                                               ; preds = %44
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %65 [
    i32 129, label %56
    i32 128, label %61
  ]

56:                                               ; preds = %52
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @l2cap_do_move_initiate(%struct.l2cap_chan* %57, i32 %58, i32 %59)
  br label %69

61:                                               ; preds = %52
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @l2cap_do_move_respond(%struct.l2cap_chan* %62, i32 %63)
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @l2cap_do_move_cancel(%struct.l2cap_chan* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61, %56
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %29, %70, %38
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32, i32, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_do_create(%struct.l2cap_chan*, i32, i32, i32) #1

declare dso_local i32 @l2cap_do_move_cancel(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_do_move_initiate(%struct.l2cap_chan*, i32, i32) #1

declare dso_local i32 @l2cap_do_move_respond(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
