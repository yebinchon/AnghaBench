; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfveil.c_cfvei_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfveil.c_cfvei_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.caif_payload_info = type { i32, i32*, i32 }
%struct.cfsrvl = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfvei_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfvei_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.caif_payload_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfsrvl*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %10)
  store %struct.cfsrvl* %11, %struct.cfsrvl** %9, align 8
  %12 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %13 = call i32 @cfsrvl_ready(%struct.cfsrvl* %12, i32* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %18 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @caif_assert(i32 %21)
  %23 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %24 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_4__*, %struct.cfpkt*)* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @caif_assert(i32 %29)
  %31 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %32 = call i64 @cfpkt_add_head(%struct.cfpkt* %31, i32* %6, i32 1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %16
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %63

38:                                               ; preds = %16
  %39 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %40 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %39)
  store %struct.caif_payload_info* %40, %struct.caif_payload_info** %7, align 8
  %41 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %42 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %46 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %48 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.cfsrvl*, %struct.cfsrvl** %9, align 8
  %50 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %49, i32 0, i32 0
  %51 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %52 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %54 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %56, align 8
  %58 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %59 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %62 = call i32 %57(%struct.TYPE_4__* %60, %struct.cfpkt* %61)
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %34, %15
  %64 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %65 = call i32 @cfpkt_destroy(%struct.cfpkt* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %38
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfsrvl_ready(%struct.cfsrvl*, i32*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i64 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
