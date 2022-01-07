; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cffrml.c_cffrml_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cffrml.c_cffrml_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cffrml = type { i64 }
%struct.TYPE_4__ = type { i32 }

@cffrml_checksum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cffrml_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cffrml_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cffrml*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %10 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %11 = call %struct.cffrml* @container_obj(%struct.cflayer* %10)
  store %struct.cffrml* %11, %struct.cffrml** %9, align 8
  %12 = load %struct.cffrml*, %struct.cffrml** %9, align 8
  %13 = getelementptr inbounds %struct.cffrml, %struct.cffrml* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %18 = load i32, i32* @cffrml_checksum, align 4
  %19 = call i32 @cfpkt_iterate(%struct.cfpkt* %17, i32 %18, i32 65535)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %23 = call i32 @cfpkt_add_trail(%struct.cfpkt* %22, i32* %8, i32 2)
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %26 = call i32 @cfpkt_pad_trail(%struct.cfpkt* %25, i32 2)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %29 = call i32 @cfpkt_getlen(%struct.cfpkt* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %33 = call i32 @cfpkt_add_head(%struct.cfpkt* %32, i32* %8, i32 2)
  %34 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %35 = call %struct.TYPE_4__* @cfpkt_info(%struct.cfpkt* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %40 = call i64 @cfpkt_erroneous(%struct.cfpkt* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %45 = call i32 @cfpkt_destroy(%struct.cfpkt* %44)
  %46 = load i32, i32* @EPROTO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %27
  %49 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %50 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp eq %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %55 = call i32 @cfpkt_destroy(%struct.cfpkt* %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %60 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_3__*, %struct.cfpkt*)*, i32 (%struct.TYPE_3__*, %struct.cfpkt*)** %62, align 8
  %64 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %65 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %68 = call i32 %63(%struct.TYPE_3__* %66, %struct.cfpkt* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %58, %53, %42
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cffrml* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfpkt_iterate(%struct.cfpkt*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cfpkt_add_trail(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @cfpkt_pad_trail(%struct.cfpkt*, i32) #1

declare dso_local i32 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @cfpkt_info(%struct.cfpkt*) #1

declare dso_local i64 @cfpkt_erroneous(%struct.cfpkt*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
