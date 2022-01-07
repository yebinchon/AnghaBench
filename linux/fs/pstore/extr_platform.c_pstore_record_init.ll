; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_record_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_record_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_record = type { i32, %struct.pstore_info* }
%struct.pstore_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pstore_record_init(%struct.pstore_record* %0, %struct.pstore_info* %1) #0 {
  %3 = alloca %struct.pstore_record*, align 8
  %4 = alloca %struct.pstore_info*, align 8
  store %struct.pstore_record* %0, %struct.pstore_record** %3, align 8
  store %struct.pstore_info* %1, %struct.pstore_info** %4, align 8
  %5 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %6 = call i32 @memset(%struct.pstore_record* %5, i32 0, i32 16)
  %7 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %8 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %9 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %8, i32 0, i32 1
  store %struct.pstore_info* %7, %struct.pstore_info** %9, align 8
  %10 = call i32 (...) @ktime_get_real_fast_ns()
  %11 = call i32 @ns_to_timespec64(i32 %10)
  %12 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %13 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  ret void
}

declare dso_local i32 @memset(%struct.pstore_record*, i32, i32) #1

declare dso_local i32 @ns_to_timespec64(i32) #1

declare dso_local i32 @ktime_get_real_fast_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
