; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_mv_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_mv_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@OCFS2_MAX_PATH_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_path*, %struct.ocfs2_path*)* @ocfs2_mv_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_mv_path(%struct.ocfs2_path* %0, %struct.ocfs2_path* %1) #0 {
  %3 = alloca %struct.ocfs2_path*, align 8
  %4 = alloca %struct.ocfs2_path*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %3, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %4, align 8
  %6 = load %struct.ocfs2_path*, %struct.ocfs2_path** %3, align 8
  %7 = call i64 @path_root_bh(%struct.ocfs2_path* %6)
  %8 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %9 = call i64 @path_root_bh(%struct.ocfs2_path* %8)
  %10 = icmp ne i64 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ocfs2_path*, %struct.ocfs2_path** %3, align 8
  %14 = call i64 @path_root_access(%struct.ocfs2_path* %13)
  %15 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %16 = call i64 @path_root_access(%struct.ocfs2_path* %15)
  %17 = icmp ne i64 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %78, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @OCFS2_MAX_PATH_DEPTH, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @brelse(i32* %32)
  %34 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ocfs2_path*, %struct.ocfs2_path** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32* %41, i32** %48, align 8
  %49 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* %56, i32** %63, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %65 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %72 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %24
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %20

81:                                               ; preds = %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @path_root_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @path_root_access(%struct.ocfs2_path*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
