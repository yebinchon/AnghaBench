; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_spd_fill_page.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_spd_fill_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splice_pipe_desc = type { i32, %struct.TYPE_2__*, %struct.page** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pipe_inode_info = type { i32 }
%struct.page = type { i32 }
%struct.sock = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.splice_pipe_desc*, %struct.pipe_inode_info*, %struct.page*, i32*, i32, i32, %struct.sock*)* @spd_fill_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spd_fill_page(%struct.splice_pipe_desc* %0, %struct.pipe_inode_info* %1, %struct.page* %2, i32* %3, i32 %4, i32 %5, %struct.sock* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.splice_pipe_desc*, align 8
  %10 = alloca %struct.pipe_inode_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sock*, align 8
  store %struct.splice_pipe_desc* %0, %struct.splice_pipe_desc** %9, align 8
  store %struct.pipe_inode_info* %1, %struct.pipe_inode_info** %10, align 8
  store %struct.page* %2, %struct.page** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.sock* %6, %struct.sock** %15, align 8
  %16 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %17 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %95

25:                                               ; preds = %7
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.sock*, %struct.sock** %15, align 8
  %32 = call %struct.page* @linear_to_page(%struct.page* %29, i32* %30, i32* %13, %struct.sock* %31)
  store %struct.page* %32, %struct.page** %11, align 8
  %33 = load %struct.page*, %struct.page** %11, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %95

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @spd_can_coalesce(%struct.splice_pipe_desc* %38, %struct.page* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %47 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %50 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %45
  store i32 %57, i32* %55, align 4
  store i32 0, i32* %8, align 4
  br label %95

58:                                               ; preds = %37
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = call i32 @get_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %63 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %62, i32 0, i32 2
  %64 = load %struct.page**, %struct.page*** %63, align 8
  %65 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %66 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.page*, %struct.page** %64, i64 %68
  store %struct.page* %61, %struct.page** %69, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %73 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %76 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %71, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %83 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %86 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %81, i32* %90, align 4
  %91 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %9, align 8
  %92 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %58, %43, %35, %24
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @linear_to_page(%struct.page*, i32*, i32*, %struct.sock*) #1

declare dso_local i64 @spd_can_coalesce(%struct.splice_pipe_desc*, %struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
