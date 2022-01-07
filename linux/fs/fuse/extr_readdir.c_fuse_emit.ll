; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_emit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.dir_context = type { i32 }
%struct.fuse_dirent = type { i32, i32, i32, i32 }

@FOPEN_CACHE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, %struct.fuse_dirent*)* @fuse_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_emit(%struct.file* %0, %struct.dir_context* %1, %struct.fuse_dirent* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.fuse_dirent*, align 8
  %7 = alloca %struct.fuse_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  store %struct.fuse_dirent* %2, %struct.fuse_dirent** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.fuse_file*, %struct.fuse_file** %9, align 8
  store %struct.fuse_file* %10, %struct.fuse_file** %7, align 8
  %11 = load %struct.fuse_file*, %struct.fuse_file** %7, align 8
  %12 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FOPEN_CACHE_DIR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load %struct.fuse_dirent*, %struct.fuse_dirent** %6, align 8
  %20 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %21 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fuse_add_dirent_to_cache(%struct.file* %18, %struct.fuse_dirent* %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %3
  %25 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %26 = load %struct.fuse_dirent*, %struct.fuse_dirent** %6, align 8
  %27 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fuse_dirent*, %struct.fuse_dirent** %6, align 8
  %30 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fuse_dirent*, %struct.fuse_dirent** %6, align 8
  %33 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fuse_dirent*, %struct.fuse_dirent** %6, align 8
  %36 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dir_emit(%struct.dir_context* %25, i32 %28, i32 %31, i32 %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @fuse_add_dirent_to_cache(%struct.file*, %struct.fuse_dirent*, i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
