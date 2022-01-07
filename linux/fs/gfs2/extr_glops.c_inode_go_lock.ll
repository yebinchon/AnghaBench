; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { i32, i64, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i64, %struct.gfs2_inode*, %struct.TYPE_2__ }
%struct.gfs2_inode = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32, i32 }

@GL_SKIP = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@LM_ST_DEFERRED = common dso_local global i64 0, align 8
@GFS2_DIF_TRUNC_IN_PROG = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_holder*)* @inode_go_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_go_lock(%struct.gfs2_holder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_holder*, align 8
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %3, align 8
  %8 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %8, i32 0, i32 2
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  store %struct.gfs2_glock* %10, %struct.gfs2_glock** %4, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %5, align 8
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %15, i32 0, i32 1
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %19 = icmp ne %struct.gfs2_inode* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GL_SKIP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %94

28:                                               ; preds = %20
  %29 = load i32, i32* @GIF_INVALID, align 4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 3
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %36 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %94

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LM_ST_DEFERRED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 2
  %51 = call i32 @inode_dio_wait(i32* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GFS2_DIF_TRUNC_IN_PROG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  %60 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 1
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %76 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %75, i32 0, i32 1
  %77 = call i64 @list_empty(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %81 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %80, i32 0, i32 1
  %82 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %83 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %82, i32 0, i32 2
  %84 = call i32 @list_add(i32* %81, i32* %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %87 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 0
  %91 = call i32 @wake_up(i32* %90)
  store i32 1, i32* %2, align 4
  br label %94

92:                                               ; preds = %65, %59, %52
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %85, %39, %27
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @inode_dio_wait(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
