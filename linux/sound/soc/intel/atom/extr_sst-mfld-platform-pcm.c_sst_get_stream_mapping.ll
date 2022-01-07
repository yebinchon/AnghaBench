; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_get_stream_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_get_stream_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dev_stream_map = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.sst_dev_stream_map*, i32)* @sst_get_stream_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_get_stream_mapping(i32 %0, i32 %1, i32 %2, %struct.sst_dev_stream_map* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sst_dev_stream_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.sst_dev_stream_map* %3, %struct.sst_dev_stream_map** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %10, align 8
  %14 = icmp eq %struct.sst_dev_stream_map* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %48

18:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %24, i64 %26
  %28 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %33, i64 %35
  %37 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %32, %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %19

47:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %41, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
