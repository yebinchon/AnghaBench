; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_root_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_adjust_root_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, i64)* @ocfs2_adjust_root_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_root_records(%struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list* %2, i64 %3) #0 {
  %5 = alloca %struct.ocfs2_extent_list*, align 8
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca %struct.ocfs2_extent_list*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %5, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %6, align 8
  store %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_list** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = icmp sle i32 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %43, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le64_to_cpu(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %21

46:                                               ; preds = %41, %21
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = sub nsw i32 %51, 1
  %53 = icmp sge i32 %47, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %67
  %69 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %70 = call i32 @ocfs2_adjust_adjacent_records(%struct.TYPE_3__* %61, %struct.TYPE_3__* %68, %struct.ocfs2_extent_list* %69)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_adjust_adjacent_records(%struct.TYPE_3__*, %struct.TYPE_3__*, %struct.ocfs2_extent_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
