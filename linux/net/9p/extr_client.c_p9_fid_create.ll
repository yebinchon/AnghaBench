; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fid_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fid_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i64, i32*, %struct.p9_client*, i32, i32 }
%struct.p9_client = type { i32, i32 }

@P9_DEBUG_FID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clnt %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@P9_NOFID = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_fid* (%struct.p9_client*)* @p9_fid_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_fid* @p9_fid_create(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  %6 = load i32, i32* @P9_DEBUG_FID, align 4
  %7 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %8 = call i32 @p9_debug(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.p9_fid* @kmalloc(i32 40, i32 %9)
  store %struct.p9_fid* %10, %struct.p9_fid** %5, align 8
  %11 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %12 = icmp ne %struct.p9_fid* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.p9_fid* null, %struct.p9_fid** %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %16 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %15, i32 0, i32 5
  %17 = call i32 @memset(i32* %16, i32 0, i32 4)
  %18 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %19 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = call i32 (...) @current_fsuid()
  %21 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %22 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %24 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %25 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %24, i32 0, i32 3
  store %struct.p9_client* %23, %struct.p9_client** %25, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %27 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %29 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @idr_preload(i32 %30)
  %32 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %33 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %36 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %35, i32 0, i32 1
  %37 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %38 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %39 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %38, i32 0, i32 1
  %40 = load i64, i64* @P9_NOFID, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load i32, i32* @GFP_NOWAIT, align 4
  %43 = call i32 @idr_alloc_u32(i32* %36, %struct.p9_fid* %37, i64* %39, i64 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %45 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = call i32 (...) @idr_preload_end()
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %14
  %51 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  store %struct.p9_fid* %51, %struct.p9_fid** %2, align 8
  br label %55

52:                                               ; preds = %14
  %53 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %54 = call i32 @kfree(%struct.p9_fid* %53)
  store %struct.p9_fid* null, %struct.p9_fid** %2, align 8
  br label %55

55:                                               ; preds = %52, %50, %13
  %56 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  ret %struct.p9_fid* %56
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_client*) #1

declare dso_local %struct.p9_fid* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_alloc_u32(i32*, %struct.p9_fid*, i64*, i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @kfree(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
