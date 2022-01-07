; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i32 }
%struct.orangefs_writepages = type { i32, %struct.orangefs_writepages*, %struct.orangefs_writepages*, i64 }
%struct.blk_plug = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@orangefs_writepages_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @orangefs_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.orangefs_writepages*, align 8
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.orangefs_writepages* @kzalloc(i32 32, i32 %9)
  store %struct.orangefs_writepages* %10, %struct.orangefs_writepages** %6, align 8
  %11 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %12 = icmp ne %struct.orangefs_writepages* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = call i32 (...) @orangefs_bufmap_size_query()
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sdiv i32 %17, %18
  %20 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %21 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %23 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kcalloc(i32 %24, i32 8, i32 %25)
  %27 = bitcast i8* %26 to %struct.orangefs_writepages*
  %28 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %29 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %28, i32 0, i32 2
  store %struct.orangefs_writepages* %27, %struct.orangefs_writepages** %29, align 8
  %30 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %31 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %30, i32 0, i32 2
  %32 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %31, align 8
  %33 = icmp ne %struct.orangefs_writepages* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %36 = call i32 @kfree(%struct.orangefs_writepages* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %16
  %40 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %41 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 4, i32 %43)
  %45 = bitcast i8* %44 to %struct.orangefs_writepages*
  %46 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %47 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %46, i32 0, i32 1
  store %struct.orangefs_writepages* %45, %struct.orangefs_writepages** %47, align 8
  %48 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %49 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %48, i32 0, i32 1
  %50 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %49, align 8
  %51 = icmp ne %struct.orangefs_writepages* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %39
  %53 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %54 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %53, i32 0, i32 2
  %55 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %54, align 8
  %56 = call i32 @kfree(%struct.orangefs_writepages* %55)
  %57 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %58 = call i32 @kfree(%struct.orangefs_writepages* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %89

61:                                               ; preds = %39
  %62 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  %63 = load %struct.address_space*, %struct.address_space** %4, align 8
  %64 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %65 = load i32, i32* @orangefs_writepages_callback, align 4
  %66 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %67 = call i32 @write_cache_pages(%struct.address_space* %63, %struct.writeback_control* %64, i32 %65, %struct.orangefs_writepages* %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %69 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %74 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %75 = call i32 @orangefs_writepages_work(%struct.orangefs_writepages* %73, %struct.writeback_control* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %61
  %77 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  %78 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %79 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %78, i32 0, i32 2
  %80 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %79, align 8
  %81 = call i32 @kfree(%struct.orangefs_writepages* %80)
  %82 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %83 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %82, i32 0, i32 1
  %84 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %83, align 8
  %85 = call i32 @kfree(%struct.orangefs_writepages* %84)
  %86 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %6, align 8
  %87 = call i32 @kfree(%struct.orangefs_writepages* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %76, %52, %34, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.orangefs_writepages* @kzalloc(i32, i32) #1

declare dso_local i32 @orangefs_bufmap_size_query(...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.orangefs_writepages*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.orangefs_writepages*) #1

declare dso_local i32 @orangefs_writepages_work(%struct.orangefs_writepages*, %struct.writeback_control*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
