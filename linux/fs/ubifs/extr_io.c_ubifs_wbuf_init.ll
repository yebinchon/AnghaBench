; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64 }
%struct.ubifs_wbuf = type { i32, i32, i64, i64, %struct.TYPE_2__, i64, %struct.ubifs_info*, i32, i32, i32*, i64, i32*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@wbuf_timer_callback_nolock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_init(%struct.ubifs_info* %0, %struct.ubifs_wbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_wbuf*, align 8
  %6 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_wbuf* %1, %struct.ubifs_wbuf** %5, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i64 %9, i32 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %13, i32 0, i32 11
  store i32* %12, i32** %14, align 8
  %15 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %15, i32 0, i32 11
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @UBIFS_CH_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %25, %27
  %29 = add i64 %28, 1
  %30 = mul i64 %29, 4
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i64 %31, i32 %32)
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %36, i32 0, i32 12
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %22
  %41 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %42 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %41, i32 0, i32 11
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 11
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %94

49:                                               ; preds = %22
  %50 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %55 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = urem i64 %61, %64
  %66 = sub i64 %58, %65
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %71 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %70, i32 0, i32 2
  store i64 %67, i64* %71, align 8
  %72 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %73 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %72, i32 0, i32 9
  store i32* null, i32** %73, align 8
  %74 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %75 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %74, i32 0, i32 8
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %78 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %77, i32 0, i32 7
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %82 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %81, i32 0, i32 6
  store %struct.ubifs_info* %80, %struct.ubifs_info** %82, align 8
  %83 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %84 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %86 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %85, i32 0, i32 4
  %87 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %88 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %89 = call i32 @hrtimer_init(%struct.TYPE_2__* %86, i32 %87, i32 %88)
  %90 = load i32, i32* @wbuf_timer_callback_nolock, align 4
  %91 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %49, %40, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
