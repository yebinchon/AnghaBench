; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_print1byte.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_print1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel_info = type { i32, i32, i32, float, float, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%05f \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print1byte(i32 %0, %struct.iio_channel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_channel_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.iio_channel_info* %1, %struct.iio_channel_info** %4, align 8
  %6 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %7 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %12 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %17 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %23 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 8, %24
  %26 = shl i32 %21, %25
  %27 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %28 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 8, %29
  %31 = ashr i32 %26, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sitofp i32 %32 to float
  %34 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %35 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %34, i32 0, i32 3
  %36 = load float, float* %35, align 4
  %37 = fadd float %33, %36
  %38 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %39 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %38, i32 0, i32 4
  %40 = load float, float* %39, align 8
  %41 = fmul float %37, %40
  %42 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %41)
  br label %55

43:                                               ; preds = %2
  %44 = load i32, i32* %3, align 4
  %45 = sitofp i32 %44 to float
  %46 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %47 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %46, i32 0, i32 3
  %48 = load float, float* %47, align 4
  %49 = fadd float %45, %48
  %50 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %51 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %50, i32 0, i32 4
  %52 = load float, float* %51, align 8
  %53 = fmul float %49, %52
  %54 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %53)
  br label %55

55:                                               ; preds = %43, %20
  ret void
}

declare dso_local i32 @printf(i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
