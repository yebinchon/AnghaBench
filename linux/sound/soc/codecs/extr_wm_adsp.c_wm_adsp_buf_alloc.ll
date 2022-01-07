; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp_buf = type { i32, i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wm_adsp_buf* (i8*, i64, %struct.list_head*)* @wm_adsp_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wm_adsp_buf* @wm_adsp_buf_alloc(i8* %0, i64 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.wm_adsp_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.wm_adsp_buf*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wm_adsp_buf* @kzalloc(i32 8, i32 %9)
  store %struct.wm_adsp_buf* %10, %struct.wm_adsp_buf** %8, align 8
  %11 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %12 = icmp eq %struct.wm_adsp_buf* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.wm_adsp_buf* null, %struct.wm_adsp_buf** %4, align 8
  br label %42

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @vmalloc(i64 %15)
  %17 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %18 = getelementptr inbounds %struct.wm_adsp_buf, %struct.wm_adsp_buf* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %20 = getelementptr inbounds %struct.wm_adsp_buf, %struct.wm_adsp_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %25 = call i32 @kfree(%struct.wm_adsp_buf* %24)
  store %struct.wm_adsp_buf* null, %struct.wm_adsp_buf** %4, align 8
  br label %42

26:                                               ; preds = %14
  %27 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %28 = getelementptr inbounds %struct.wm_adsp_buf, %struct.wm_adsp_buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcpy(i32 %29, i8* %30, i64 %31)
  %33 = load %struct.list_head*, %struct.list_head** %7, align 8
  %34 = icmp ne %struct.list_head* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  %37 = getelementptr inbounds %struct.wm_adsp_buf, %struct.wm_adsp_buf* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %7, align 8
  %39 = call i32 @list_add_tail(i32* %37, %struct.list_head* %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %8, align 8
  store %struct.wm_adsp_buf* %41, %struct.wm_adsp_buf** %4, align 8
  br label %42

42:                                               ; preds = %40, %23, %13
  %43 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %4, align 8
  ret %struct.wm_adsp_buf* %43
}

declare dso_local %struct.wm_adsp_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @kfree(%struct.wm_adsp_buf*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
