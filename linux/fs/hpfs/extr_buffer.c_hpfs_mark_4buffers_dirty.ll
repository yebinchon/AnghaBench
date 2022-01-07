; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_mark_4buffers_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_mark_4buffers_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad_buffer_head = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %0) #0 {
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
  br i1 %16, label %17, label %66

17:                                               ; preds = %1
  %18 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %19 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %26 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 0
  %29 = call i32 @memcpy(i64 %24, i64 %28, i32 512)
  %30 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %31 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %38 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 512
  %41 = call i32 @memcpy(i64 %36, i64 %40, i32 512)
  %42 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %43 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %50 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1024
  %53 = call i32 @memcpy(i64 %48, i64 %52, i32 512)
  %54 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %55 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %62 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1536
  %65 = call i32 @memcpy(i64 %60, i64 %64, i32 512)
  br label %66

66:                                               ; preds = %17, %1
  %67 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %68 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %71)
  %73 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %74 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %77)
  %79 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %80 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %83)
  %85 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %86 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %87, i64 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %89)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
