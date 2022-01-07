; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfdbgl.c_cfdbgl_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfdbgl.c_cfdbgl_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cfsrvl = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.caif_payload_info = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfdbgl_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfdbgl_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca %struct.cfsrvl*, align 8
  %7 = alloca %struct.caif_payload_info*, align 8
  %8 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %9 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %10 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %9)
  store %struct.cfsrvl* %10, %struct.cfsrvl** %6, align 8
  %11 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %12 = call i32 @cfsrvl_ready(%struct.cfsrvl* %11, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %16 = call i32 @cfpkt_destroy(%struct.cfpkt* %15)
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %20 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %19)
  store %struct.caif_payload_info* %20, %struct.caif_payload_info** %7, align 8
  %21 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %22 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %26 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %28 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %27, i32 0, i32 0
  %29 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %30 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %32 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %34, align 8
  %36 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %37 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %40 = call i32 %35(%struct.TYPE_4__* %38, %struct.cfpkt* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %18, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfsrvl_ready(%struct.cfsrvl*, i32*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
