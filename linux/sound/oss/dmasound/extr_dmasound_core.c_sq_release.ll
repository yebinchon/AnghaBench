; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@dmasound_core_mutex = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@write_sq = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@shared_resource_owner = common dso_local global i32 0, align 4
@shared_resources_initialised = common dso_local global i64 0, align 8
@dmasound = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sq_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @dmasound_core_mutex)
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FMODE_WRITE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @write_sq, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @sq_fsync()
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = call i32 (...) @sq_reset_output()
  %20 = call i32 (...) @write_sq_release_buffers()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @write_sq, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @shared_resource_owner, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  store i32 0, i32* @shared_resource_owner, align 4
  store i64 0, i64* @shared_resources_initialised, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dmasound, i32 0, i32 0, i32 1), align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dmasound, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dmasound, i32 0, i32 0, i32 0), align 4
  %32 = call i32 @module_put(i32 %31)
  %33 = call i32 @mutex_unlock(i32* @dmasound_core_mutex)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sq_fsync(...) #1

declare dso_local i32 @sq_reset_output(...) #1

declare dso_local i32 @write_sq_release_buffers(...) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
