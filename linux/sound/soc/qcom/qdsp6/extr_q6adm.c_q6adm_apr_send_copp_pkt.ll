; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_apr_send_copp_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_apr_send_copp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6adm = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.q6copp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.apr_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to send APR packet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ADM copp cmd timedout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DSP returned error[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6adm*, %struct.q6copp*, %struct.apr_pkt*, i64)* @q6adm_apr_send_copp_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6adm_apr_send_copp_pkt(%struct.q6adm* %0, %struct.q6copp* %1, %struct.apr_pkt* %2, i64 %3) #0 {
  %5 = alloca %struct.q6adm*, align 8
  %6 = alloca %struct.q6copp*, align 8
  %7 = alloca %struct.apr_pkt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.q6adm* %0, %struct.q6adm** %5, align 8
  store %struct.q6copp* %1, %struct.q6copp** %6, align 8
  store %struct.apr_pkt* %2, %struct.apr_pkt** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %13 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %20 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %23 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %26 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %29 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.apr_pkt*, %struct.apr_pkt** %7, align 8
  %32 = call i32 @apr_send_pkt(i32 %30, %struct.apr_pkt* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %105

40:                                               ; preds = %4
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %45 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %48 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %43
  %54 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %55 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %53, %43
  %61 = phi i1 [ true, %43 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @TIMEOUT_MS, align 4
  %64 = call i32 @msecs_to_jiffies(i32 %63)
  %65 = call i32 @wait_event_timeout(i32 %46, i32 %62, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %80

66:                                               ; preds = %40
  %67 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %68 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %71 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @TIMEOUT_MS, align 4
  %78 = call i32 @msecs_to_jiffies(i32 %77)
  %79 = call i32 @wait_event_timeout(i32 %69, i32 %76, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %66, %60
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load %struct.device*, %struct.device** %9, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %104

88:                                               ; preds = %80
  %89 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %90 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = load %struct.q6copp*, %struct.q6copp** %6, align 8
  %97 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %94, %88
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.q6adm*, %struct.q6adm** %5, align 8
  %107 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
