; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_command_rej.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_command_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_cmd_rej_unk = type { i32 }
%struct.l2cap_chan = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_le_command_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_command_rej(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_cmd_rej_unk*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = bitcast i32* %12 to %struct.l2cap_cmd_rej_unk*
  store %struct.l2cap_cmd_rej_unk* %13, %struct.l2cap_cmd_rej_unk** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EPROTO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %22 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %25 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn* %24, i32 %27)
  store %struct.l2cap_chan* %28, %struct.l2cap_chan** %11, align 8
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %30 = icmp ne %struct.l2cap_chan* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %40

32:                                               ; preds = %20
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %34 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %36 = load i32, i32* @ECONNREFUSED, align 4
  %37 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %35, i32 %36)
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %39 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %38)
  br label %40

40:                                               ; preds = %32, %31
  %41 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %42 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
