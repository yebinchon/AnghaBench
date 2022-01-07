; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfdgml.c_cfdgml_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfdgml.c_cfdgml_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.caif_payload_info = type { i32, i32*, i32 }
%struct.cfsrvl = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DGM_MTU = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfdgml_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfdgml_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.caif_payload_info*, align 8
  %9 = alloca %struct.cfsrvl*, align 8
  %10 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %12 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %11)
  store %struct.cfsrvl* %12, %struct.cfsrvl** %9, align 8
  %13 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %14 = call i32 @cfsrvl_ready(%struct.cfsrvl* %13, i32* %10)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %18 = call i32 @cfpkt_destroy(%struct.cfpkt* %17)
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %22 = call i64 @cfpkt_getlen(%struct.cfpkt* %21)
  %23 = load i64, i64* @DGM_MTU, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %27 = call i32 @cfpkt_destroy(%struct.cfpkt* %26)
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %32 = call i32 @cfpkt_add_head(%struct.cfpkt* %31, i32* %7, i32 3)
  store i32 8, i32* %6, align 4
  %33 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %34 = call i32 @cfpkt_add_head(%struct.cfpkt* %33, i32* %6, i32 1)
  %35 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %36 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %35)
  store %struct.caif_payload_info* %36, %struct.caif_payload_info** %8, align 8
  %37 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %38 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %42 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %44 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %46 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %45, i32 0, i32 0
  %47 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %48 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %50 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %52, align 8
  %54 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %55 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %58 = call i32 %53(%struct.TYPE_4__* %56, %struct.cfpkt* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %30, %25, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfsrvl_ready(%struct.cfsrvl*, i32*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i64 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
