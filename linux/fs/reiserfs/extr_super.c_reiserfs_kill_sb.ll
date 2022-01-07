; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @reiserfs_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = load %struct.super_block*, %struct.super_block** %2, align 8
  %4 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %3)
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @reiserfs_proc_info_done(%struct.super_block* %7)
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i32 @shrink_dcache_sb(%struct.super_block* %9)
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dput(i32* %14)
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %2, align 8
  %20 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @dput(i32* %22)
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %6, %1
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = call i32 @kill_block_super(%struct.super_block* %28)
  ret void
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @reiserfs_proc_info_done(%struct.super_block*) #1

declare dso_local i32 @shrink_dcache_sb(%struct.super_block*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @kill_block_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
