; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_drop_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i64 }
%struct.gfs2_inode = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32, i32 }

@GIF_FREE_VFS_INODE = common dso_local global i32 0, align 4
@GLF_DEMOTE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @gfs2_drop_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca %struct.gfs2_glock*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %7)
  store %struct.gfs2_inode* %8, %struct.gfs2_inode** %4, align 8
  %9 = load i32, i32* @GIF_FREE_VFS_INODE, align 4
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = call i64 @gfs2_holder_initialized(%struct.TYPE_3__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.gfs2_glock*, %struct.gfs2_glock** %27, align 8
  store %struct.gfs2_glock* %28, %struct.gfs2_glock** %5, align 8
  %29 = load i32, i32* @GLF_DEMOTE, align 4
  %30 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @clear_nlink(%struct.inode* %35)
  br label %37

37:                                               ; preds = %34, %24
  br label %38

38:                                               ; preds = %37, %19, %14, %1
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PF_MEMALLOC, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %43
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = call i64 @gfs2_holder_initialized(%struct.TYPE_3__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.gfs2_glock*, %struct.gfs2_glock** %59, align 8
  store %struct.gfs2_glock* %60, %struct.gfs2_glock** %6, align 8
  %61 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %62 = call i32 @gfs2_glock_hold(%struct.gfs2_glock* %61)
  %63 = load i32, i32* @gfs2_delete_workqueue, align 4
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %65 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %64, i32 0, i32 0
  %66 = call i64 @queue_work(i32 %63, i32* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %70 = call i32 @gfs2_glock_queue_put(%struct.gfs2_glock* %69)
  br label %71

71:                                               ; preds = %68, %56
  store i32 0, i32* %2, align 4
  br label %75

72:                                               ; preds = %51, %43, %38
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = call i32 @generic_drop_inode(%struct.inode* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_glock_hold(%struct.gfs2_glock*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @gfs2_glock_queue_put(%struct.gfs2_glock*) #1

declare dso_local i32 @generic_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
