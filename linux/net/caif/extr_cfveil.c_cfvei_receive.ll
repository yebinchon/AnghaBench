; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfveil.c_cfvei_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfveil.c_cfvei_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 (%struct.cflayer*, i32, i32)*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_OFF_IND = common dso_local global i32 0, align 4
@CAIF_CTRLCMD_FLOW_ON_IND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unknown VEI control packet %d (0x%x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfvei_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfvei_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %8 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %9 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @caif_assert(i32 %12)
  %14 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %15 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @caif_assert(i32 %18)
  %20 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %21 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %20, i32 0, i32 0
  %22 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.cflayer*, i32, i32)* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @caif_assert(i32 %24)
  %26 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %27 = call i64 @cfpkt_extr_head(%struct.cfpkt* %26, i32* %6, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %32 = call i32 @cfpkt_destroy(%struct.cfpkt* %31)
  %33 = load i32, i32* @EPROTO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %70 [
    i32 129, label %37
    i32 131, label %49
    i32 130, label %58
    i32 128, label %67
  ]

37:                                               ; preds = %35
  %38 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %39 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %41, align 8
  %43 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %44 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %47 = call i32 %42(%struct.TYPE_2__* %45, %struct.cfpkt* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %35
  %50 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %51 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %50, i32 0, i32 0
  %52 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %51, align 8
  %53 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %54 = load i32, i32* @CAIF_CTRLCMD_FLOW_OFF_IND, align 4
  %55 = call i32 %52(%struct.cflayer* %53, i32 %54, i32 0)
  %56 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %57 = call i32 @cfpkt_destroy(%struct.cfpkt* %56)
  store i32 0, i32* %3, align 4
  br label %78

58:                                               ; preds = %35
  %59 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %60 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %59, i32 0, i32 0
  %61 = load i32 (%struct.cflayer*, i32, i32)*, i32 (%struct.cflayer*, i32, i32)** %60, align 8
  %62 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %63 = load i32, i32* @CAIF_CTRLCMD_FLOW_ON_IND, align 4
  %64 = call i32 %61(%struct.cflayer* %62, i32 %63, i32 0)
  %65 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %66 = call i32 @cfpkt_destroy(%struct.cfpkt* %65)
  store i32 0, i32* %3, align 4
  br label %78

67:                                               ; preds = %35
  %68 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %69 = call i32 @cfpkt_destroy(%struct.cfpkt* %68)
  store i32 0, i32* %3, align 4
  br label %78

70:                                               ; preds = %35
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %75 = call i32 @cfpkt_destroy(%struct.cfpkt* %74)
  %76 = load i32, i32* @EPROTO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %67, %58, %49, %37, %29
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

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
