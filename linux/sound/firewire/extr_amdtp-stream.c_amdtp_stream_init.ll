; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32, i64, i32, i32, i32, %struct.fw_unit*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fw_unit = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm_period_tasklet = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_stream_init(%struct.amdtp_stream* %0, %struct.fw_unit* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdtp_stream*, align 8
  %10 = alloca %struct.fw_unit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %9, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %14, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %78

21:                                               ; preds = %7
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %26 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 8
  %27 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %28 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %78

34:                                               ; preds = %21
  %35 = load %struct.fw_unit*, %struct.fw_unit** %10, align 8
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %36, i32 0, i32 11
  store %struct.fw_unit* %35, %struct.fw_unit** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %40 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %43 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @ERR_PTR(i32 -1)
  %45 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %46 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %48 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %47, i32 0, i32 9
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %51 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %50, i32 0, i32 8
  %52 = load i32, i32* @pcm_period_tasklet, align 4
  %53 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %54 = ptrtoint %struct.amdtp_stream* %53 to i64
  %55 = call i32 @tasklet_init(i32* %51, i32 %52, i64 %54)
  %56 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %57 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %59 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %58, i32 0, i32 6
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %62 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %65 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %68 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %34
  %73 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %74 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %34
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %31, %18
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
