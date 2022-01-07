; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfutill.c_cfutill_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfutill.c_cfutill_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 (%struct.cflayer*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32* }
%struct.cfpkt = type { i32 }
%struct.cfsrvl = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_OFF_IND = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_ON_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"REMOTE SHUTDOWN REQUEST RECEIVED\0A\00", align 1
@CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown service control %d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfutill_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfutill_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfsrvl*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %9 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %8)
  store %struct.cfsrvl* %9, %struct.cfsrvl** %7, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = icmp ne %struct.cflayer* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @caif_assert(i32 %12)
  %14 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %15 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @caif_assert(i32 %18)
  %20 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %21 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_2__*, %struct.cfpkt*)* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @caif_assert(i32 %26)
  %28 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %29 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @caif_assert(i32 %34)
  %36 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %37 = call i64 @cfpkt_extr_head(%struct.cfpkt* %36, i32* %6, i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %42 = call i32 @cfpkt_destroy(%struct.cfpkt* %41)
  %43 = load i32, i32* @EPROTO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %96

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %88 [
    i32 129, label %47
    i32 131, label %58
    i32 130, label %67
    i32 128, label %76
  ]

47:                                               ; preds = %45
  %48 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %49 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %51, align 8
  %53 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %54 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %57 = call i32 %52(%struct.TYPE_2__* %55, %struct.cfpkt* %56)
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %45
  %59 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %60 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %59, i32 0, i32 0
  %61 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %60, align 8
  %62 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %63 = load i32, i32* @CAIF_CTRLCMD_FLOW_OFF_IND, align 4
  %64 = call i32 %61(%struct.cflayer* %62, i32 %63, i32 0)
  %65 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %66 = call i32 @cfpkt_destroy(%struct.cfpkt* %65)
  store i32 0, i32* %3, align 4
  br label %96

67:                                               ; preds = %45
  %68 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %69 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %68, i32 0, i32 0
  %70 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %69, align 8
  %71 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %72 = load i32, i32* @CAIF_CTRLCMD_FLOW_ON_IND, align 4
  %73 = call i32 %70(%struct.cflayer* %71, i32 %72, i32 0)
  %74 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %75 = call i32 @cfpkt_destroy(%struct.cfpkt* %74)
  store i32 0, i32* %3, align 4
  br label %96

76:                                               ; preds = %45
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %79 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %78, i32 0, i32 0
  %80 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %79, align 8
  %81 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %82 = load i32, i32* @CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND, align 4
  %83 = call i32 %80(%struct.cflayer* %81, i32 %82, i32 0)
  %84 = load %struct.cfsrvl*, %struct.cfsrvl** %7, align 8
  %85 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %87 = call i32 @cfpkt_destroy(%struct.cfpkt* %86)
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %45
  %89 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %90 = call i32 @cfpkt_destroy(%struct.cfpkt* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @EPROTO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %76, %67, %58, %47, %39
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i64 @cfpkt_extr_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
