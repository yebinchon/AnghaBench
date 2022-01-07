; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_sync.c_sync_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_sync.c_sync_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_filesystem(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = call i32 @rwsem_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i64 @sb_rdonly(%struct.super_block* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call i32 @__sync_filesystem(%struct.super_block* %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = call i32 @__sync_filesystem(%struct.super_block* %24, i32 1)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @__sync_filesystem(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
