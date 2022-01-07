; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_linkdown_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_linkdown_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 (%struct.cflayer*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cfctrl = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cflayer* }

@.str = private unnamed_addr constant [36 x i8] c"not able to send link-down request\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CFPKT_CTRL_PKT_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFCTRL_CMD_LINK_DESTROY = common dso_local global i64 0, align 8
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfctrl_linkdown_req(%struct.cflayer* %0, i64 %1, %struct.cflayer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cflayer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cflayer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfpkt*, align 8
  %10 = alloca %struct.cfctrl*, align 8
  %11 = alloca %struct.cflayer*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cflayer* %2, %struct.cflayer** %7, align 8
  %12 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %13 = call %struct.cfctrl* @container_obj(%struct.cflayer* %12)
  store %struct.cfctrl* %13, %struct.cfctrl** %10, align 8
  %14 = load %struct.cfctrl*, %struct.cfctrl** %10, align 8
  %15 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.cflayer*, %struct.cflayer** %17, align 8
  store %struct.cflayer* %18, %struct.cflayer** %11, align 8
  %19 = load %struct.cflayer*, %struct.cflayer** %11, align 8
  %20 = icmp ne %struct.cflayer* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* @CFPKT_CTRL_PKT_LEN, align 4
  %27 = call %struct.cfpkt* @cfpkt_create(i32 %26)
  store %struct.cfpkt* %27, %struct.cfpkt** %9, align 8
  %28 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %29 = icmp ne %struct.cfpkt* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %25
  %34 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %35 = load i64, i64* @CFCTRL_CMD_LINK_DESTROY, align 8
  %36 = call i32 @cfpkt_addbdy(%struct.cfpkt* %34, i64 %35)
  %37 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @cfpkt_addbdy(%struct.cfpkt* %37, i64 %38)
  %40 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %41 = call i32 @cfpkt_info(%struct.cfpkt* %40)
  %42 = load %struct.cfctrl*, %struct.cfctrl** %10, align 8
  %43 = call i32 @init_info(i32 %41, %struct.cfctrl* %42)
  %44 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %45 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %46 = call i32 @cfpkt_set_prio(%struct.cfpkt* %44, i32 %45)
  %47 = load %struct.cflayer*, %struct.cflayer** %11, align 8
  %48 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %47, i32 0, i32 0
  %49 = load i32 (%struct.cflayer*, %struct.cfpkt*)*, i32 (%struct.cflayer*, %struct.cfpkt*)** %48, align 8
  %50 = load %struct.cflayer*, %struct.cflayer** %11, align 8
  %51 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %52 = call i32 %49(%struct.cflayer* %50, %struct.cfpkt* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.cfctrl*, %struct.cfctrl** %10, align 8
  %54 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %33, %30, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.cfctrl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.cfpkt* @cfpkt_create(i32) #1

declare dso_local i32 @cfpkt_addbdy(%struct.cfpkt*, i64) #1

declare dso_local i32 @init_info(i32, %struct.cfctrl*) #1

declare dso_local i32 @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_set_prio(%struct.cfpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
