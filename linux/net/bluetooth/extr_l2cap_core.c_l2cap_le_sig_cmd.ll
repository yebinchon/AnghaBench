; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_sig_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_sig_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unknown LE signaling command 0x%2.2x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_le_sig_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_sig_cmd(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %11 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %56 [
    i32 135, label %13
    i32 134, label %19
    i32 133, label %25
    i32 129, label %26
    i32 130, label %32
    i32 128, label %38
    i32 132, label %44
    i32 131, label %50
  ]

13:                                               ; preds = %4
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %15 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @l2cap_le_command_rej(%struct.l2cap_conn* %14, %struct.l2cap_cmd_hdr* %15, i32 %16, i32* %17)
  br label %63

19:                                               ; preds = %4
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %21 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @l2cap_conn_param_update_req(%struct.l2cap_conn* %20, %struct.l2cap_cmd_hdr* %21, i32 %22, i32* %23)
  store i32 %24, i32* %9, align 4
  br label %63

25:                                               ; preds = %4
  br label %63

26:                                               ; preds = %4
  %27 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %28 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @l2cap_le_connect_rsp(%struct.l2cap_conn* %27, %struct.l2cap_cmd_hdr* %28, i32 %29, i32* %30)
  br label %63

32:                                               ; preds = %4
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %34 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @l2cap_le_connect_req(%struct.l2cap_conn* %33, %struct.l2cap_cmd_hdr* %34, i32 %35, i32* %36)
  store i32 %37, i32* %9, align 4
  br label %63

38:                                               ; preds = %4
  %39 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %40 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @l2cap_le_credits(%struct.l2cap_conn* %39, %struct.l2cap_cmd_hdr* %40, i32 %41, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %63

44:                                               ; preds = %4
  %45 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %46 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @l2cap_disconnect_req(%struct.l2cap_conn* %45, %struct.l2cap_cmd_hdr* %46, i32 %47, i32* %48)
  store i32 %49, i32* %9, align 4
  br label %63

50:                                               ; preds = %4
  %51 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %52 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @l2cap_disconnect_rsp(%struct.l2cap_conn* %51, %struct.l2cap_cmd_hdr* %52, i32 %53, i32* %54)
  br label %63

56:                                               ; preds = %4
  %57 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %50, %44, %38, %32, %26, %25, %19, %13
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @l2cap_le_command_rej(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_conn_param_update_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_le_connect_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_le_connect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_le_credits(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_disconnect_req(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @l2cap_disconnect_rsp(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
