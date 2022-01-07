; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_set_system_param_int.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_set_system_param_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_pod = type { i32 }

@pod_set_system_param_int.size = internal constant i32 5, align 4
@POD_SYSEX_SYSTEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_pod*, i32, i32)* @pod_set_system_param_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_set_system_param_int(%struct.usb_line6_pod* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6_pod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.usb_line6_pod* %0, %struct.usb_line6_pod** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %5, align 8
  %10 = load i32, i32* @POD_SYSEX_SYSTEM, align 4
  %11 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %9, i32 %10, i32 5)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 12
  %25 = and i32 %24, 15
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 15
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %37 = add i64 %36, 2
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 %34, i8* %38, align 1
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 15
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %45 = add i64 %44, 3
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 15
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %52 = add i64 %51, 4
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 %49, i8* %53, align 1
  %54 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %5, align 8
  %55 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %54, i32 0, i32 0
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @line6_send_sysex_message(i32* %55, i8* %56, i32 5)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @kfree(i8* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %17, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
