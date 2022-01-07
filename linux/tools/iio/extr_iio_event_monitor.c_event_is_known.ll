; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_event_is_known.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_event_is_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_event_data*)* @event_is_known to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_is_known(%struct.iio_event_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_event_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_event_data* %0, %struct.iio_event_data** %3, align 8
  %8 = load %struct.iio_event_data*, %struct.iio_event_data** %3, align 8
  %9 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IIO_EVENT_CODE_EXTRACT_CHAN_TYPE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.iio_event_data*, %struct.iio_event_data** %3, align 8
  %13 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IIO_EVENT_CODE_EXTRACT_MODIFIER(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.iio_event_data*, %struct.iio_event_data** %3, align 8
  %17 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.iio_event_data*, %struct.iio_event_data** %3, align 8
  %21 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
    i32 205, label %25
    i32 138, label %25
    i32 213, label %25
    i32 209, label %25
    i32 187, label %25
    i32 188, label %25
    i32 189, label %25
    i32 136, label %25
    i32 132, label %25
    i32 190, label %25
    i32 134, label %25
    i32 210, label %25
    i32 131, label %25
    i32 208, label %25
    i32 211, label %25
    i32 207, label %25
    i32 137, label %25
    i32 191, label %25
    i32 212, label %25
    i32 133, label %25
    i32 203, label %25
    i32 204, label %25
    i32 129, label %25
    i32 206, label %25
    i32 135, label %25
    i32 141, label %25
    i32 130, label %25
    i32 192, label %25
    i32 139, label %25
    i32 140, label %25
    i32 186, label %25
  ]

25:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %30 [
    i32 142, label %29
    i32 153, label %29
    i32 146, label %29
    i32 143, label %29
    i32 152, label %29
    i32 150, label %29
    i32 145, label %29
    i32 151, label %29
    i32 149, label %29
    i32 147, label %29
    i32 144, label %29
    i32 148, label %29
    i32 179, label %29
    i32 175, label %29
    i32 162, label %29
    i32 158, label %29
    i32 178, label %29
    i32 174, label %29
    i32 176, label %29
    i32 180, label %29
    i32 173, label %29
    i32 177, label %29
    i32 163, label %29
    i32 157, label %29
    i32 156, label %29
    i32 172, label %29
    i32 170, label %29
    i32 171, label %29
    i32 169, label %29
    i32 160, label %29
    i32 181, label %29
    i32 154, label %29
    i32 159, label %29
    i32 161, label %29
    i32 182, label %29
    i32 164, label %29
    i32 185, label %29
    i32 184, label %29
    i32 183, label %29
    i32 155, label %29
    i32 168, label %29
    i32 166, label %29
    i32 165, label %29
    i32 167, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  br label %31

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %34 [
    i32 194, label %33
    i32 197, label %33
    i32 195, label %33
    i32 193, label %33
    i32 196, label %33
    i32 198, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31, %31, %31
  br label %35

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %38 [
    i32 202, label %37
    i32 199, label %37
    i32 201, label %37
    i32 200, label %37
  ]

37:                                               ; preds = %35, %35, %35, %35
  br label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %34, %30, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_CHAN_TYPE(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_MODIFIER(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
