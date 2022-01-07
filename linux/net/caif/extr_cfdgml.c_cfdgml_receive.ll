; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfdgml.c_cfdgml_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfdgml.c_cfdgml_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 (%struct.cflayer*, i32, i32)*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@DGM_CMD_BIT = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_OFF_IND = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_ON_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown datagram control %d (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfdgml_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfdgml_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  store i32 -1, i32* %6, align 4
  %9 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %10 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @caif_assert(i32 %13)
  %15 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %16 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @caif_assert(i32 %19)
  %21 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %22 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %21, i32 0, i32 0
  %23 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.cflayer*, i32, i32)* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @caif_assert(i32 %25)
  %27 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %28 = call i64 (%struct.cfpkt*, ...) @cfpkt_extr_head(%struct.cfpkt* %27, i32* %6, i32 1)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %33 = call i32 @cfpkt_destroy(%struct.cfpkt* %32)
  %34 = load i32, i32* @EPROTO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DGM_CMD_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %43 = call i64 (%struct.cfpkt*, ...) @cfpkt_extr_head(%struct.cfpkt* %42, [3 x i32]* %7, i32 3)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %48 = call i32 @cfpkt_destroy(%struct.cfpkt* %47)
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %91

51:                                               ; preds = %41
  %52 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %53 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %55, align 8
  %57 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %58 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %61 = call i32 %56(%struct.TYPE_2__* %59, %struct.cfpkt* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %83 [
    i32 129, label %65
    i32 128, label %74
  ]

65:                                               ; preds = %63
  %66 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %67 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %66, i32 0, i32 0
  %68 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %67, align 8
  %69 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %70 = load i32, i32* @CAIF_CTRLCMD_FLOW_OFF_IND, align 4
  %71 = call i32 %68(%struct.cflayer* %69, i32 %70, i32 0)
  %72 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %73 = call i32 @cfpkt_destroy(%struct.cfpkt* %72)
  store i32 0, i32* %3, align 4
  br label %91

74:                                               ; preds = %63
  %75 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %76 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %75, i32 0, i32 0
  %77 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %76, align 8
  %78 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %79 = load i32, i32* @CAIF_CTRLCMD_FLOW_ON_IND, align 4
  %80 = call i32 %77(%struct.cflayer* %78, i32 %79, i32 0)
  %81 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %82 = call i32 @cfpkt_destroy(%struct.cfpkt* %81)
  store i32 0, i32* %3, align 4
  br label %91

83:                                               ; preds = %63
  %84 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %85 = call i32 @cfpkt_destroy(%struct.cfpkt* %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EPROTO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %74, %65, %51, %45, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i64 @cfpkt_extr_head(%struct.cfpkt*, ...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
