; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_data2host2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse-api.c_tep_data2host2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @tep_data2host2(%struct.tep_handle* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %8 = icmp ne %struct.tep_handle* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %11 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %14 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9, %2
  %18 = load i16, i16* %5, align 2
  store i16 %18, i16* %3, align 2
  br label %31

19:                                               ; preds = %9
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i64
  %22 = and i64 %21, 255
  %23 = shl i64 %22, 8
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i64
  %26 = and i64 %25, 65280
  %27 = lshr i64 %26, 8
  %28 = or i64 %23, %27
  %29 = trunc i64 %28 to i16
  store i16 %29, i16* %6, align 2
  %30 = load i16, i16* %6, align 2
  store i16 %30, i16* %3, align 2
  br label %31

31:                                               ; preds = %19, %17
  %32 = load i16, i16* %3, align 2
  ret i16 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
