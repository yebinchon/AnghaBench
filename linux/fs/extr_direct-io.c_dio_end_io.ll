; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.dio* }
%struct.dio = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load %struct.dio*, %struct.dio** %5, align 8
  store %struct.dio* %6, %struct.dio** %3, align 8
  %7 = load %struct.dio*, %struct.dio** %3, align 8
  %8 = getelementptr inbounds %struct.dio, %struct.dio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = call i32 @dio_bio_end_aio(%struct.bio* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = call i32 @dio_bio_end_io(%struct.bio* %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @dio_bio_end_aio(%struct.bio*) #1

declare dso_local i32 @dio_bio_end_io(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
