; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_glock2inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_glock2inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_glock = type { %struct.TYPE_2__, %struct.gfs2_inode* }
%struct.TYPE_2__ = type { i32 }

@GIF_GLOP_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_inode* (%struct.gfs2_glock*)* @gfs2_glock2inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_inode* @gfs2_glock2inode(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %8, i32 0, i32 1
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  store %struct.gfs2_inode* %10, %struct.gfs2_inode** %3, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = icmp ne %struct.gfs2_inode* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @GIF_GLOP_PENDING, align 4
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  ret %struct.gfs2_inode* %23
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
