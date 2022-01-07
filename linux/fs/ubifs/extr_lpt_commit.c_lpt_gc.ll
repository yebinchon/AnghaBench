; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_lpt_gc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_lpt_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @lpt_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_gc(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 4
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %89, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %10
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubifs_assert(%struct.ubifs_info* %17, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %62, label %39

39:                                               ; preds = %16
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %47, %56
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %39, %16
  br label %89

63:                                               ; preds = %39
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %63
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %74, %63
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %10

92:                                               ; preds = %10
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 4
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @lpt_gc_lnum(%struct.ubifs_info* %102, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lpt_gc_lnum(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
