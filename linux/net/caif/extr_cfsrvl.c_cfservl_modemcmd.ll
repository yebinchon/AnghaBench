; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_cfservl_modemcmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfsrvl.c_cfservl_modemcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cfsrvl = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.caif_payload_info = type { i32, i32*, i32 }

@SRVL_FLOW_ON = common dso_local global i32 0, align 4
@SRVL_CTRL_PKT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@SRVL_FLOW_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, i32)* @cfservl_modemcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfservl_modemcmd(%struct.cflayer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfsrvl*, align 8
  %7 = alloca %struct.cfpkt*, align 8
  %8 = alloca %struct.caif_payload_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfpkt*, align 8
  %11 = alloca %struct.caif_payload_info*, align 8
  %12 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %14 = call %struct.cfsrvl* @container_obj(%struct.cflayer* %13)
  store %struct.cfsrvl* %14, %struct.cfsrvl** %6, align 8
  %15 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %16 = icmp ne %struct.cflayer* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @caif_assert(i32 %17)
  %19 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %20 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @caif_assert(i32 %23)
  %25 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %26 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_5__*, %struct.cfpkt*)*, i32 (%struct.TYPE_5__*, %struct.cfpkt*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_5__*, %struct.cfpkt*)* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @caif_assert(i32 %31)
  %33 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %34 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %134 [
    i32 128, label %40
    i32 129, label %87
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @SRVL_FLOW_ON, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @SRVL_CTRL_PKT_SIZE, align 4
  %43 = call %struct.cfpkt* @cfpkt_create(i32 %42)
  store %struct.cfpkt* %43, %struct.cfpkt** %7, align 8
  %44 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %45 = icmp ne %struct.cfpkt* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %138

49:                                               ; preds = %40
  %50 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %51 = call i32 @cfpkt_add_head(%struct.cfpkt* %50, i32* %9, i32 1)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %56 = call i32 @cfpkt_destroy(%struct.cfpkt* %55)
  %57 = load i32, i32* @EPROTO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %138

59:                                               ; preds = %49
  %60 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %61 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %60)
  store %struct.caif_payload_info* %61, %struct.caif_payload_info** %8, align 8
  %62 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %63 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %67 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %69 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %71 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %70, i32 0, i32 0
  %72 = load %struct.caif_payload_info*, %struct.caif_payload_info** %8, align 8
  %73 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %75 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %76 = call i32 @cfpkt_set_prio(%struct.cfpkt* %74, i32 %75)
  %77 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %78 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_5__*, %struct.cfpkt*)*, i32 (%struct.TYPE_5__*, %struct.cfpkt*)** %80, align 8
  %82 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %83 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %86 = call i32 %81(%struct.TYPE_5__* %84, %struct.cfpkt* %85)
  store i32 %86, i32* %3, align 4
  br label %138

87:                                               ; preds = %38
  %88 = load i32, i32* @SRVL_FLOW_OFF, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @SRVL_CTRL_PKT_SIZE, align 4
  %90 = call %struct.cfpkt* @cfpkt_create(i32 %89)
  store %struct.cfpkt* %90, %struct.cfpkt** %10, align 8
  %91 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %92 = icmp ne %struct.cfpkt* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %138

96:                                               ; preds = %87
  %97 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %98 = call i32 @cfpkt_add_head(%struct.cfpkt* %97, i32* %12, i32 1)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %103 = call i32 @cfpkt_destroy(%struct.cfpkt* %102)
  %104 = load i32, i32* @EPROTO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %138

106:                                              ; preds = %96
  %107 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %108 = call %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt* %107)
  store %struct.caif_payload_info* %108, %struct.caif_payload_info** %11, align 8
  %109 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %110 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.caif_payload_info*, %struct.caif_payload_info** %11, align 8
  %114 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.caif_payload_info*, %struct.caif_payload_info** %11, align 8
  %116 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.cfsrvl*, %struct.cfsrvl** %6, align 8
  %118 = getelementptr inbounds %struct.cfsrvl, %struct.cfsrvl* %117, i32 0, i32 0
  %119 = load %struct.caif_payload_info*, %struct.caif_payload_info** %11, align 8
  %120 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %119, i32 0, i32 1
  store i32* %118, i32** %120, align 8
  %121 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %122 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %123 = call i32 @cfpkt_set_prio(%struct.cfpkt* %121, i32 %122)
  %124 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %125 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_5__*, %struct.cfpkt*)*, i32 (%struct.TYPE_5__*, %struct.cfpkt*)** %127, align 8
  %129 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %130 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %133 = call i32 %128(%struct.TYPE_5__* %131, %struct.cfpkt* %132)
  store i32 %133, i32* %3, align 4
  br label %138

134:                                              ; preds = %38
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %135, %106, %100, %93, %59, %53, %46, %37
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.cfsrvl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local %struct.cfpkt* @cfpkt_create(i32) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local %struct.caif_payload_info* @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_set_prio(%struct.cfpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
