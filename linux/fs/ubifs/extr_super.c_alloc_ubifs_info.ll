; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_alloc_ubifs_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_alloc_ubifs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_volume_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@ASSACT_RO = common dso_local global i32 0, align 4
@UBIFS_FIRST_INO = common dso_local global i32 0, align 4
@UBIFS_LOG_LNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_info* (%struct.ubi_volume_desc*)* @alloc_ubifs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_info* @alloc_ubifs_info(%struct.ubi_volume_desc* %0) #0 {
  %2 = alloca %struct.ubi_volume_desc*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ubifs_info* @kzalloc(i32 168, i32 %4)
  store %struct.ubifs_info* %5, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = icmp ne %struct.ubifs_info* %6, null
  br i1 %7, label %8, label %120

8:                                                ; preds = %1
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 35
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 34
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 33
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 32
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 31
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 30
  %26 = call i32 @init_rwsem(i32* %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 29
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 28
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 27
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 26
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 25
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 24
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 23
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load i8*, i8** @RB_ROOT, align 8
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 22
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @RB_ROOT, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 21
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @RB_ROOT, align 8
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 20
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @RB_ROOT, align 8
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 19
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 18
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 17
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 16
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 15
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 14
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 13
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 12
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 11
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 10
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 9
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 8
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 7
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* @ASSACT_RO, align 4
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @UBIFS_FIRST_INO, align 4
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @UBIFS_LOG_LNUM, align 4
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 4
  store i32 %104, i32* %108, align 8
  %109 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 2
  %112 = call i32 @ubi_get_volume_info(%struct.ubi_volume_desc* %109, %struct.TYPE_2__* %111)
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 1
  %119 = call i32 @ubi_get_device_info(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %8, %1
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  ret %struct.ubifs_info* %121
}

declare dso_local %struct.ubifs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ubi_get_volume_info(%struct.ubi_volume_desc*, %struct.TYPE_2__*) #1

declare dso_local i32 @ubi_get_device_info(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
