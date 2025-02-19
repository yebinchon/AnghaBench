; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_add_to_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_add_to_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_chunk = type { i64, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_chunk*, %struct.buffer_head*, i32*, void (%struct.buffer_chunk*)*)* @add_to_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_chunk(%struct.buffer_chunk* %0, %struct.buffer_head* %1, i32* %2, void (%struct.buffer_chunk*)* %3) #0 {
  %5 = alloca %struct.buffer_chunk*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca void (%struct.buffer_chunk*)*, align 8
  %9 = alloca i32, align 4
  store %struct.buffer_chunk* %0, %struct.buffer_chunk** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store void (%struct.buffer_chunk*)* %3, void (%struct.buffer_chunk*)** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  %11 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHUNK_SIZE, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  %19 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %18, i32 0, i32 1
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %21 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  %22 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 %23
  store %struct.buffer_head* %17, %struct.buffer_head** %25, align 8
  %26 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  %27 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHUNK_SIZE, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load void (%struct.buffer_chunk*)*, void (%struct.buffer_chunk*)** %8, align 8
  %38 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  call void %37(%struct.buffer_chunk* %38)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @spin_lock(i32* %39)
  br label %44

41:                                               ; preds = %31
  %42 = load void (%struct.buffer_chunk*)*, void (%struct.buffer_chunk*)** %8, align 8
  %43 = load %struct.buffer_chunk*, %struct.buffer_chunk** %5, align 8
  call void %42(%struct.buffer_chunk* %43)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
