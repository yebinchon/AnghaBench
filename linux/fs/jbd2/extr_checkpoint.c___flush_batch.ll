; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___flush_batch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c___flush_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.blk_plug = type { i32 }

@REQ_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"brelse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @__flush_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__flush_batch(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_plug, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @blk_start_plug(%struct.blk_plug* %6)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.buffer_head**, %struct.buffer_head*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %17, i64 %19
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = load i32, i32* @REQ_SYNC, align 4
  %23 = call i32 @write_dirty_buffer(%struct.buffer_head* %21, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  %28 = call i32 @blk_finish_plug(%struct.blk_plug* %6)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %46, %27
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 %39
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %7, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = call i32 @BUFFER_TRACE(%struct.buffer_head* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = call i32 @__brelse(%struct.buffer_head* %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load i32*, i32** %4, align 8
  store i32 0, i32* %50, align 4
  ret void
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @write_dirty_buffer(%struct.buffer_head*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
