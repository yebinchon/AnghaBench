; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_afe_apr_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_afe_apr_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe = type { i32, i32, i32 }
%struct.apr_pkt = type { %struct.apr_hdr }
%struct.apr_hdr = type { i64 }
%struct.q6afe_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"packet not transmitted (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DSP returned error[%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6afe*, %struct.apr_pkt*, %struct.q6afe_port*)* @afe_apr_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe_apr_send_pkt(%struct.q6afe* %0, %struct.apr_pkt* %1, %struct.q6afe_port* %2) #0 {
  %4 = alloca %struct.q6afe*, align 8
  %5 = alloca %struct.apr_pkt*, align 8
  %6 = alloca %struct.q6afe_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.apr_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.q6afe* %0, %struct.q6afe** %4, align 8
  store %struct.apr_pkt* %1, %struct.apr_pkt** %5, align 8
  store %struct.q6afe_port* %2, %struct.q6afe_port** %6, align 8
  %10 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %11 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %10, i32 0, i32 1
  store i32* %11, i32** %7, align 8
  %12 = load %struct.apr_pkt*, %struct.apr_pkt** %5, align 8
  %13 = getelementptr inbounds %struct.apr_pkt, %struct.apr_pkt* %12, i32 0, i32 0
  store %struct.apr_hdr* %13, %struct.apr_hdr** %8, align 8
  %14 = load %struct.q6afe*, %struct.q6afe** %4, align 8
  %15 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %18 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %21 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load %struct.q6afe*, %struct.q6afe** %4, align 8
  %24 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.apr_pkt*, %struct.apr_pkt** %5, align 8
  %27 = call i32 @apr_send_pkt(i32 %25, %struct.apr_pkt* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.q6afe*, %struct.q6afe** %4, align 8
  %32 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %78

38:                                               ; preds = %3
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %42 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.apr_hdr*, %struct.apr_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @TIMEOUT_MS, align 4
  %51 = call i32 @msecs_to_jiffies(i32 %50)
  %52 = call i32 @wait_event_timeout(i32 %40, i32 %49, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %38
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %77

58:                                               ; preds = %38
  %59 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %60 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.q6afe*, %struct.q6afe** %4, align 8
  %66 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.q6afe_port*, %struct.q6afe_port** %6, align 8
  %69 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %76

75:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %30
  %79 = load %struct.q6afe*, %struct.q6afe** %4, align 8
  %80 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apr_send_pkt(i32, %struct.apr_pkt*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
