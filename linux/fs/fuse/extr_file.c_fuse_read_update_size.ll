; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_read_update_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_read_update_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i64, i32, i32 }

@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i64)* @fuse_read_update_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_read_update_size(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %11)
  store %struct.fuse_inode* %12, %struct.fuse_inode** %8, align 8
  %13 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %14 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %18 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 0
  %36 = call i64 @atomic64_inc_return(i32* %35)
  %37 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %38 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @i_size_write(%struct.inode* %39, i64 %40)
  br label %42

42:                                               ; preds = %33, %27, %21, %3
  %43 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %44 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic64_inc_return(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
