; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hidp_session = type { i8 }

@.str = private unnamed_addr constant [36 x i8] c"session %p type %d code %d value %d\00", align 1
@EV_LED = common dso_local global i32 0, align 4
@LED_KANA = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@HIDP_TRANS_DATA = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @hidp_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_input_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hidp_session*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x i8], align 1
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %15 = call %struct.hidp_session* @input_get_drvdata(%struct.input_dev* %14)
  store %struct.hidp_session* %15, %struct.hidp_session** %10, align 8
  %16 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EV_LED, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %106

25:                                               ; preds = %4
  %26 = load i32, i32* @LED_KANA, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = shl i32 %34, 3
  %36 = load i32, i32* @LED_COMPOSE, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = shl i32 %44, 3
  %46 = or i32 %35, %45
  %47 = load i32, i32* @LED_SCROLLL, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @test_bit(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = shl i32 %55, 2
  %57 = or i32 %46, %56
  %58 = load i32, i32* @LED_CAPSL, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @test_bit(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = shl i32 %66, 1
  %68 = or i32 %57, %67
  %69 = load i32, i32* @LED_NUML, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @test_bit(i32 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = shl i32 %77, 0
  %79 = or i32 %68, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %11, align 1
  %81 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %82 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %106

89:                                               ; preds = %25
  %90 = load i8, i8* %11, align 1
  %91 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %92 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %91, i32 0, i32 0
  store i8 %90, i8* %92, align 1
  %93 = load i8, i8* @HIDP_TRANS_DATA, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @HIDP_DATA_RTYPE_OUPUT, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %12, align 1
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 1, i8* %99, align 1
  %100 = load i8, i8* %11, align 1
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  store i8 %100, i8* %101, align 1
  %102 = load %struct.hidp_session*, %struct.hidp_session** %10, align 8
  %103 = load i8, i8* %12, align 1
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %105 = call i32 @hidp_send_intr_message(%struct.hidp_session* %102, i8 zeroext %103, i8* %104, i32 2)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %89, %88, %24
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.hidp_session* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @hidp_send_intr_message(%struct.hidp_session*, i8 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
