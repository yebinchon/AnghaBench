; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfserl.c_cfserl_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfserl.c_cfserl_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cfserl = type { i64 }

@CFSERL_STX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfserl_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfserl_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca %struct.cfserl*, align 8
  %6 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %3, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %4, align 8
  %7 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %8 = call %struct.cfserl* @container_obj(%struct.cflayer* %7)
  store %struct.cfserl* %8, %struct.cfserl** %5, align 8
  %9 = load i32, i32* @CFSERL_STX, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.cfserl*, %struct.cfserl** %5, align 8
  %11 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %16 = call i32 @cfpkt_add_head(%struct.cfpkt* %15, i32* %6, i32 1)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %19 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %21, align 8
  %23 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %24 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %27 = call i32 %22(%struct.TYPE_2__* %25, %struct.cfpkt* %26)
  ret i32 %27
}

declare dso_local %struct.cfserl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
