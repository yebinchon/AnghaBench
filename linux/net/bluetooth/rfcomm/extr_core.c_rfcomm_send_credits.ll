; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%p addr %d credits %d\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, i32)* @rfcomm_send_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_credits(%struct.rfcomm_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_hdr*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32* %10, i32** %9, align 8
  %11 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %17, %struct.rfcomm_hdr** %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 12
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @RFCOMM_UIH, align 4
  %24 = call i32 @__ctrl(i32 %23, i32 1)
  %25 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = call i32 @__len8(i32 0)
  %28 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %35 = call i32 @__fcs(i32* %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  %39 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %39, i32* %40, i32 %47)
  ret i32 %48
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i32 @__len8(i32) #1

declare dso_local i32 @__fcs(i32*) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
