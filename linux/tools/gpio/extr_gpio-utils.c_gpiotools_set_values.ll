; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-utils.c_gpiotools_set_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-utils.c_gpiotools_set_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiohandle_data = type { i32 }

@GPIOHANDLE_SET_LINE_VALUES_IOCTL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to issue %s (%d), %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GPIOHANDLE_SET_LINE_VALUES_IOCTL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiotools_set_values(i32 %0, %struct.gpiohandle_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiohandle_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.gpiohandle_data* %1, %struct.gpiohandle_data** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GPIOHANDLE_SET_LINE_VALUES_IOCTL, align 4
  %8 = load %struct.gpiohandle_data*, %struct.gpiohandle_data** %4, align 8
  %9 = call i32 @ioctl(i32 %6, i32 %7, %struct.gpiohandle_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @ioctl(i32, i32, %struct.gpiohandle_data*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
