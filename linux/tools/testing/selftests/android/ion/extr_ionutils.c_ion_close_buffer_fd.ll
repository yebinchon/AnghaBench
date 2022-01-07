; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/android/ion/extr_ionutils.c_ion_close_buffer_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/android/ion/extr_ionutils.c_ion_close_buffer_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer_info = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ion_close_buffer_fd(%struct.ion_buffer_info* %0) #0 {
  %2 = alloca %struct.ion_buffer_info*, align 8
  store %struct.ion_buffer_info* %0, %struct.ion_buffer_info** %2, align 8
  %3 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %4 = icmp ne %struct.ion_buffer_info* %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %7 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %10 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @munmap(i32 %8, i32 %11)
  %13 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %14 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %19 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @close(i64 %20)
  br label %22

22:                                               ; preds = %17, %5
  %23 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %24 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ion_buffer_info*, %struct.ion_buffer_info** %2, align 8
  %29 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @close(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
