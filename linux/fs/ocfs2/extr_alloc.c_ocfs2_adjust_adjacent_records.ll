; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_adjacent_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_adjacent_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_rec = type { i8*, i8* }
%struct.ocfs2_extent_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*)* @ocfs2_adjust_adjacent_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec* %0, %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_list* %2) #0 {
  %4 = alloca %struct.ocfs2_extent_rec*, align 8
  %5 = alloca %struct.ocfs2_extent_rec*, align 8
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ocfs2_extent_rec* %0, %struct.ocfs2_extent_rec** %4, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %5, align 8
  store %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_list** %6, align 8
  %9 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %10 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @le32_to_cpu(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %17 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %16, %struct.TYPE_2__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %3
  %24 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = icmp sle i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @le32_to_cpu(i8* %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %23, %3
  %43 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @le32_to_cpu(i8* %45)
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i8* @cpu_to_le32(i64 %49)
  %51 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @le32_to_cpu(i8* %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @le32_to_cpu(i8* %59)
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %67 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %68, i32 0, i32 1
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @le32_add_cpu(i8** %69, i64 %70)
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @le32_to_cpu(i8* %74)
  %76 = load i64, i64* %8, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i8* @cpu_to_le32(i64 %78)
  %80 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  ret void
}

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.TYPE_2__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
