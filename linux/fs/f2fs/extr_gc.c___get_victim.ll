; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c___get_victim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c___get_victim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.f2fs_sb_info*, i32*, i32, i32, i32)* }

@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32*, i32)* @__get_victim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_victim(%struct.f2fs_sb_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sit_info*, align 8
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %9)
  store %struct.sit_info* %10, %struct.sit_info** %7, align 8
  %11 = load %struct.sit_info*, %struct.sit_info** %7, align 8
  %12 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %15 = call %struct.TYPE_4__* @DIRTY_I(%struct.f2fs_sb_info* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.f2fs_sb_info*, i32*, i32, i32, i32)*, i32 (%struct.f2fs_sb_info*, i32*, i32, i32, i32)** %18, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NO_CHECK_TYPE, align 4
  %24 = load i32, i32* @LFS, align 4
  %25 = call i32 %19(%struct.f2fs_sb_info* %20, i32* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.sit_info*, %struct.sit_info** %7, align 8
  %27 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %26, i32 0, i32 0
  %28 = call i32 @up_write(i32* %27)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
