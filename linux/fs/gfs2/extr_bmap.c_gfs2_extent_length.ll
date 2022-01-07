; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_extent_length.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_extent_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, i32*, i64, i32*)* @gfs2_extent_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_extent_length(%struct.buffer_head* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64_to_cpu(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %35, %4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp uge i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be64_to_cpu(i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %25, label %41

41:                                               ; preds = %35, %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp uge i32* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
