; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_rls.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_hdr = type { i8*, i32, i8* }
%struct.rfcomm_mcc = type { i8*, i32 }
%struct.rfcomm_rls = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"%p cr %d status 0x%x\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_RLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, i32, i32)* @rfcomm_send_rls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_rls(%struct.rfcomm_session* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rfcomm_hdr*, align 8
  %10 = alloca %struct.rfcomm_mcc*, align 8
  %11 = alloca %struct.rfcomm_rls*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %13, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %21, %struct.rfcomm_hdr** %9, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 24
  store i32* %23, i32** %13, align 8
  %24 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %25 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__addr(i32 %26, i32 0)
  %28 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %9, align 8
  %29 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @RFCOMM_UIH, align 4
  %31 = call i32 @__ctrl(i32 %30, i32 0)
  %32 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = call i8* @__len8(i32 32)
  %35 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %9, align 8
  %36 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = bitcast i8* %38 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %39, %struct.rfcomm_mcc** %10, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RFCOMM_RLS, align 4
  %44 = call i32 @__mcc_type(i32 %42, i32 %43)
  %45 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %10, align 8
  %46 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = call i8* @__len8(i32 16)
  %48 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %10, align 8
  %49 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = bitcast i8* %51 to %struct.rfcomm_rls*
  store %struct.rfcomm_rls* %52, %struct.rfcomm_rls** %11, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  store i32* %54, i32** %13, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @__addr(i32 1, i32 %55)
  %57 = load %struct.rfcomm_rls*, %struct.rfcomm_rls** %11, align 8
  %58 = getelementptr inbounds %struct.rfcomm_rls, %struct.rfcomm_rls* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.rfcomm_rls*, %struct.rfcomm_rls** %11, align 8
  %61 = getelementptr inbounds %struct.rfcomm_rls, %struct.rfcomm_rls* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %63 = call i32 @__fcs(i32* %62)
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  %67 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %67, i32* %68, i32 %75)
  ret i32 %76
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i32) #1

declare dso_local i8* @__addr(i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i8* @__len8(i32) #1

declare dso_local i32 @__mcc_type(i32, i32) #1

declare dso_local i32 @__fcs(i32*) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
