; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"error: stream committed for set channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_set_channels(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_hsw*, align 8
  %6 = alloca %struct.sst_hsw_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %5, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %9 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %14 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %22 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
