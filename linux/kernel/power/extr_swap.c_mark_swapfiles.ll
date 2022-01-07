; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_mark_swapfiles.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_mark_swapfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.swap_map_handle = type { i32, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@swsusp_resume_block = common dso_local global i32 0, align 4
@swsusp_header = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"SWAP-SPACE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SWAPSPACE2\00", align 1
@HIBERNATE_SIG = common dso_local global i32 0, align 4
@SF_CRC32_MODE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Swap header not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_map_handle*, i32)* @mark_swapfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_swapfiles(%struct.swap_map_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.swap_map_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.swap_map_handle* %0, %struct.swap_map_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @REQ_OP_READ, align 4
  %7 = load i32, i32* @swsusp_resume_block, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %9 = call i32 @hib_submit_io(i32 %6, i32 0, i32 %7, %struct.TYPE_3__* %8, i32* null)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, i32 10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 10)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HIBERNATE_SIG, align 4
  %33 = call i32 @memcpy(i32 %31, i32 %32, i32 10)
  %34 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %35 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SF_CRC32_MODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.swap_map_handle*, %struct.swap_map_handle** %3, align 8
  %48 = getelementptr inbounds %struct.swap_map_handle, %struct.swap_map_handle* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %21
  %53 = load i32, i32* @REQ_OP_WRITE, align 4
  %54 = load i32, i32* @REQ_SYNC, align 4
  %55 = load i32, i32* @swsusp_resume_block, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swsusp_header, align 8
  %57 = call i32 @hib_submit_io(i32 %53, i32 %54, i32 %55, %struct.TYPE_3__* %56, i32* null)
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %15
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @hib_submit_io(i32, i32, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
