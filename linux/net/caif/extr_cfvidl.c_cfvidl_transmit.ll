; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfvidl.c_cfvidl_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfvidl.c_cfvidl_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cfsrvl = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.caif_payload_info = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfvidl_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfvidl_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca %struct.cfsrvl*, align 8
  %7 = alloca %struct.caif_payload_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %10)
  store %struct.cfsrvl* %11, %struct.cfsrvl** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %13 = call i32 @cfsrvl_ready(%struct.cfsrvl* %12, i32* %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %17 = call i32 @cfpkt_destroy(%struct.cfpkt* %16)
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %21 = call i32 @cfpkt_add_head(%struct.cfpkt* %20, i32* %8, i32 4)
  %22 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %23 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %22)
  store %struct.caif_payload_info* %23, %struct.caif_payload_info** %7, align 8
  %24 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %25 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %29 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %31 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %30, i32 0, i32 0
  %32 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %33 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %35 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %37, align 8
  %39 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %40 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %43 = call i32 %38(%struct.TYPE_4__* %41, %struct.cfpkt* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %19, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfsrvl_ready(%struct.cfsrvl*, i32*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
