; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_discard_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_discard_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i32* }

@BUFFER_FLAGS_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @discard_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = call i32 @lock_buffer(%struct.buffer_head* %5)
  %7 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %8 = call i32 @clear_buffer_dirty(%struct.buffer_head* %7)
  %9 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @BUFFER_FLAGS_DISCARD, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = call i64 @cmpxchg(i64* %16, i64 %17, i64 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %29

27:                                               ; preds = %14
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %3, align 8
  br label %14

29:                                               ; preds = %26
  %30 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %31 = call i32 @unlock_buffer(%struct.buffer_head* %30)
  ret void
}

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
