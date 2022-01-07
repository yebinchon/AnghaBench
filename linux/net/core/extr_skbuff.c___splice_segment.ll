; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___splice_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___splice_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.splice_pipe_desc = type { i32 }
%struct.sock = type { i32 }
%struct.pipe_inode_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32, i32*, i32*, %struct.splice_pipe_desc*, i32, %struct.sock*, %struct.pipe_inode_info*)* @__splice_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__splice_segment(%struct.page* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.splice_pipe_desc* %5, i32 %6, %struct.sock* %7, %struct.pipe_inode_info* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.splice_pipe_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sock*, align 8
  %19 = alloca %struct.pipe_inode_info*, align 8
  %20 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.splice_pipe_desc* %5, %struct.splice_pipe_desc** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.sock* %7, %struct.sock** %18, align 8
  store %struct.pipe_inode_info* %8, %struct.pipe_inode_info** %19, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %80

25:                                               ; preds = %9
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, %31
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %80

35:                                               ; preds = %25
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %14, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %77, %35
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %16, align 8
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %19, align 8
  %52 = load %struct.page*, %struct.page** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.sock*, %struct.sock** %18, align 8
  %56 = call i64 @spd_fill_page(%struct.splice_pipe_desc* %50, %struct.pipe_inode_info* %51, %struct.page* %52, i32* %20, i32 %53, i32 %54, %struct.sock* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %80

59:                                               ; preds = %45
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %59
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i1 [ false, %70 ], [ %76, %74 ]
  br i1 %78, label %45, label %79

79:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %58, %30, %24
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @spd_fill_page(%struct.splice_pipe_desc*, %struct.pipe_inode_info*, %struct.page*, i32*, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
