; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_size_from_channelarray.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_size_from_channelarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @size_from_channelarray(%struct.iio_channel_info* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_channel_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_channel_info* %0, %struct.iio_channel_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %13, i64 %15
  %17 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %12, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %23, i64 %25
  %27 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 4
  br label %51

28:                                               ; preds = %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %30, %36
  %38 = sub nsw i32 %29, %37
  %39 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %39, i64 %41
  %43 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %38, %44
  %46 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %28, %21
  %52 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %52, i64 %54
  %56 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iio_channel_info*, %struct.iio_channel_info** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %58, i64 %60
  %62 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %7

67:                                               ; preds = %7
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
