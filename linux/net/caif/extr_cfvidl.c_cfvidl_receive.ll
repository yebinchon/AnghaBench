; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfvidl.c_cfvidl_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfvidl.c_cfvidl_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfvidl_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfvidl_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %7 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %8 = call i64 @cfpkt_extr_head(%struct.cfpkt* %7, i32* %6, i32 4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %13 = call i32 @cfpkt_destroy(%struct.cfpkt* %12)
  %14 = load i32, i32* @EPROTO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %18 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %20, align 8
  %22 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %23 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %26 = call i32 %21(%struct.TYPE_2__* %24, %struct.cfpkt* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @cfpkt_extr_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
