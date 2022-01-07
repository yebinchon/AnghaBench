; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_sort_mirrors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_sort_mirrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layout_segment = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_ff_layout_segment*)* @ff_layout_sort_mirrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_sort_mirrors(%struct.nfs4_ff_layout_segment* %0) #0 {
  %2 = alloca %struct.nfs4_ff_layout_segment*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfs4_ff_layout_segment* %0, %struct.nfs4_ff_layout_segment** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %62, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %58, %12
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %23 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %32 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %30, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %21
  %42 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %43 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %2, align 8
  %50 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @swap(%struct.TYPE_3__* %48, %struct.TYPE_3__* %55)
  br label %57

57:                                               ; preds = %41, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %15

61:                                               ; preds = %15
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %5

65:                                               ; preds = %5
  ret void
}

declare dso_local i32 @swap(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
