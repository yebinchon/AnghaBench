; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_allocate_cmdlines_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_allocate_cmdlines_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_cmdlines_buffer = type { i32, i32*, i32, i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@NO_CMDLINE_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.saved_cmdlines_buffer*)* @allocate_cmdlines_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_cmdlines_buffer(i32 %0, %struct.saved_cmdlines_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.saved_cmdlines_buffer*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.saved_cmdlines_buffer* %1, %struct.saved_cmdlines_buffer** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kmalloc_array(i32 %6, i32 4, i32 %7)
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @TASK_COMM_LEN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc_array(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %19
  %38 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %43, i32 0, i32 2
  %45 = load i32, i32* @NO_CMDLINE_MAP, align 4
  %46 = call i32 @memset(i32* %44, i32 %45, i32 4)
  %47 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.saved_cmdlines_buffer, %struct.saved_cmdlines_buffer* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @NO_CMDLINE_MAP, align 4
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %49, i32 %50, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %37, %30, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
