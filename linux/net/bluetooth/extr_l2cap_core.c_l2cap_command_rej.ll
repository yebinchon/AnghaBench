; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_command_rej.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_command_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i64, i32 }
%struct.l2cap_cmd_hdr = type { i64 }
%struct.l2cap_cmd_rej_unk = type { i64 }

@EPROTO = common dso_local global i32 0, align 4
@L2CAP_REJ_NOT_UNDERSTOOD = common dso_local global i64 0, align 8
@L2CAP_INFO_FEAT_MASK_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_command_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_command_rej(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_cmd_rej_unk*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = bitcast i32* %11 to %struct.l2cap_cmd_rej_unk*
  store %struct.l2cap_cmd_rej_unk* %12, %struct.l2cap_cmd_rej_unk** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EPROTO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load %struct.l2cap_cmd_rej_unk*, %struct.l2cap_cmd_rej_unk** %10, align 8
  %21 = getelementptr inbounds %struct.l2cap_cmd_rej_unk, %struct.l2cap_cmd_rej_unk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @L2CAP_REJ_NOT_UNDERSTOOD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %28 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_SENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %42, i32 0, i32 2
  %44 = call i32 @cancel_delayed_work(i32* %43)
  %45 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %47 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %51 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %53 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %52)
  br label %54

54:                                               ; preds = %41, %33, %26
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %25, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @l2cap_conn_start(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
