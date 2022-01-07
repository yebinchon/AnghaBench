; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cffrml.c_cffrml_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cffrml.c_cffrml_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.cfpkt*)* }
%struct.cfpkt = type { i32 }
%struct.cffrml = type { i64 }

@cffrml_rcv_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Framing length error (%d)\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@cffrml_checksum = common dso_local global i32 0, align 4
@cffrml_rcv_checsum_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Frame checksum error (0x%x != 0x%x)\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Packet is erroneous!\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Layr up is missing!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cffrml_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cffrml_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cffrml*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %11 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %12 = call %struct.cffrml* @container_obj(%struct.cflayer* %11)
  store %struct.cffrml* %12, %struct.cffrml** %10, align 8
  %13 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %14 = call i32 @cfpkt_extr_head(%struct.cfpkt* %13, i32* %6, i32 2)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cffrml*, %struct.cffrml** %10, align 8
  %18 = getelementptr inbounds %struct.cffrml, %struct.cffrml* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @cfpkt_setlen(%struct.cfpkt* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @cffrml_rcv_error, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @cffrml_rcv_error, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %35 = call i32 @cfpkt_destroy(%struct.cfpkt* %34)
  %36 = load i32, i32* @EPROTO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %24
  %39 = load %struct.cffrml*, %struct.cffrml** %10, align 8
  %40 = getelementptr inbounds %struct.cffrml, %struct.cffrml* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %45 = call i32 @cfpkt_extr_trail(%struct.cfpkt* %44, i32* %6, i32 2)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %49 = load i32, i32* @cffrml_checksum, align 4
  %50 = call i32 @cfpkt_iterate(%struct.cfpkt* %48, i32 %49, i32 65535)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %56 = call i32 @cfpkt_add_trail(%struct.cfpkt* %55, i32* %6, i32 2)
  %57 = load i32, i32* @cffrml_rcv_error, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @cffrml_rcv_error, align 4
  %59 = load i32, i32* @cffrml_rcv_checsum_error, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @cffrml_rcv_checsum_error, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EILSEQ, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %101

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %69 = call i64 @cfpkt_erroneous(%struct.cfpkt* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* @cffrml_rcv_error, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @cffrml_rcv_error, align 4
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %76 = call i32 @cfpkt_destroy(%struct.cfpkt* %75)
  %77 = load i32, i32* @EPROTO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %101

79:                                               ; preds = %67
  %80 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %81 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp eq %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %87 = call i32 @cfpkt_destroy(%struct.cfpkt* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %79
  %91 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %92 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_2__*, %struct.cfpkt*)*, i32 (%struct.TYPE_2__*, %struct.cfpkt*)** %94, align 8
  %96 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %97 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %100 = call i32 %95(%struct.TYPE_2__* %98, %struct.cfpkt* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %90, %84, %71, %54, %29
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.cffrml* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfpkt_extr_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @cfpkt_setlen(%struct.cfpkt*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_extr_trail(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @cfpkt_iterate(%struct.cfpkt*, i32, i32) #1

declare dso_local i32 @cfpkt_add_trail(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @cfpkt_erroneous(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
