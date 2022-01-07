; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_transmit_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_transmit_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfrfml = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.TYPE_8__ = type { i32*, i64, i32 }

@RFM_HEAD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfrfml*, %struct.cfpkt*)* @cfrfml_transmit_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfrfml_transmit_segment(%struct.cfrfml* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca %struct.cfrfml*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  store %struct.cfrfml* %0, %struct.cfrfml** %3, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %4, align 8
  %5 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %6 = call i64 @cfpkt_getlen(%struct.cfpkt* %5)
  %7 = load %struct.cfrfml*, %struct.cfrfml** %3, align 8
  %8 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RFM_HEAD_SIZE, align 8
  %11 = add nsw i64 %9, %10
  %12 = icmp slt i64 %6, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @caif_assert(i32 %13)
  %15 = load %struct.cfrfml*, %struct.cfrfml** %3, align 8
  %16 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %21 = call %struct.TYPE_8__* @cfpkt_info(%struct.cfpkt* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i64, i64* @RFM_HEAD_SIZE, align 8
  %24 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %25 = call %struct.TYPE_8__* @cfpkt_info(%struct.cfpkt* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  %27 = load %struct.cfrfml*, %struct.cfrfml** %3, align 8
  %28 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %31 = call %struct.TYPE_8__* @cfpkt_info(%struct.cfpkt* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.cfrfml*, %struct.cfrfml** %3, align 8
  %34 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_7__*, %struct.cfpkt*)*, i32 (%struct.TYPE_7__*, %struct.cfpkt*)** %38, align 8
  %40 = load %struct.cfrfml*, %struct.cfrfml** %3, align 8
  %41 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %46 = call i32 %39(%struct.TYPE_7__* %44, %struct.cfpkt* %45)
  ret i32 %46
}

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i64 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local %struct.TYPE_8__* @cfpkt_info(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
