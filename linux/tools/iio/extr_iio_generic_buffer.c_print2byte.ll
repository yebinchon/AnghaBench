; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_print2byte.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_print2byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel_info = type { i32, i32, i32, float, float, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%05f \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print2byte(i32 %0, %struct.iio_channel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_channel_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.iio_channel_info* %1, %struct.iio_channel_info** %4, align 8
  %6 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %7 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @be16toh(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @le16toh(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %18 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %23 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %28 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %34 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 16, %35
  %37 = shl i32 %32, %36
  %38 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %39 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 16, %40
  %42 = ashr i32 %37, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sitofp i32 %43 to float
  %45 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %46 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %45, i32 0, i32 3
  %47 = load float, float* %46, align 4
  %48 = fadd float %44, %47
  %49 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %50 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %49, i32 0, i32 4
  %51 = load float, float* %50, align 8
  %52 = fmul float %48, %51
  %53 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %52)
  br label %66

54:                                               ; preds = %16
  %55 = load i32, i32* %3, align 4
  %56 = sitofp i32 %55 to float
  %57 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %58 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %57, i32 0, i32 3
  %59 = load float, float* %58, align 4
  %60 = fadd float %56, %59
  %61 = load %struct.iio_channel_info*, %struct.iio_channel_info** %4, align 8
  %62 = getelementptr inbounds %struct.iio_channel_info, %struct.iio_channel_info* %61, i32 0, i32 4
  %63 = load float, float* %62, align 8
  %64 = fmul float %60, %63
  %65 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %64)
  br label %66

66:                                               ; preds = %54, %31
  ret void
}

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @printf(i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
