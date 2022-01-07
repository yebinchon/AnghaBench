; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_brelse4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_brelse4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad_buffer_head = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_brelse4(%struct.quad_buffer_head* %0) #0 {
  %2 = alloca %struct.quad_buffer_head*, align 8
  store %struct.quad_buffer_head* %0, %struct.quad_buffer_head** %2, align 8
  %3 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %4 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %7 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %5, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %19 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @kfree(i64 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %24 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @brelse(%struct.TYPE_2__* %27)
  %29 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %30 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @brelse(%struct.TYPE_2__* %33)
  %35 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %36 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @brelse(%struct.TYPE_2__* %39)
  %41 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %42 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @brelse(%struct.TYPE_2__* %45)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @brelse(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
