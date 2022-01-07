; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, %struct.bio*, %struct.bio* }
%struct.dio = type { i32, i32, i64, %struct.dio*, %struct.dio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @dio_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dio*, align 8
  %4 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 4
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = bitcast %struct.bio* %7 to %struct.dio*
  store %struct.dio* %8, %struct.dio** %3, align 8
  %9 = load %struct.dio*, %struct.dio** %3, align 8
  %10 = getelementptr inbounds %struct.dio, %struct.dio* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.dio*, %struct.dio** %3, align 8
  %14 = getelementptr inbounds %struct.dio, %struct.dio* %13, i32 0, i32 3
  %15 = load %struct.dio*, %struct.dio** %14, align 8
  %16 = bitcast %struct.dio* %15 to %struct.bio*
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 4
  store %struct.bio* %16, %struct.bio** %18, align 8
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = bitcast %struct.bio* %19 to %struct.dio*
  %21 = load %struct.dio*, %struct.dio** %3, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 3
  store %struct.dio* %20, %struct.dio** %22, align 8
  %23 = load %struct.dio*, %struct.dio** %3, align 8
  %24 = getelementptr inbounds %struct.dio, %struct.dio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.dio*, %struct.dio** %3, align 8
  %30 = getelementptr inbounds %struct.dio, %struct.dio* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.dio*, %struct.dio** %3, align 8
  %35 = getelementptr inbounds %struct.dio, %struct.dio* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wake_up_process(i64 %36)
  br label %38

38:                                               ; preds = %33, %28, %1
  %39 = load %struct.dio*, %struct.dio** %3, align 8
  %40 = getelementptr inbounds %struct.dio, %struct.dio* %39, i32 0, i32 1
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
