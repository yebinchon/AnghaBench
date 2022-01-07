; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_sb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_sb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fuse_conn = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @fuse_sb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_sb_destroy(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %4)
  store %struct.fuse_conn* %5, %struct.fuse_conn** %3, align 8
  %6 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %7 = icmp ne %struct.fuse_conn* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %15 = call i32 @fuse_send_destroy(%struct.fuse_conn* %14)
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %18 = call i32 @fuse_abort_conn(%struct.fuse_conn* %17)
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %20 = call i32 @fuse_wait_aborted(%struct.fuse_conn* %19)
  %21 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %22 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %21, i32 0, i32 0
  %23 = call i32 @down_write(i32* %22)
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 0
  %28 = call i32 @up_write(i32* %27)
  br label %29

29:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @fuse_send_destroy(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_abort_conn(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_wait_aborted(%struct.fuse_conn*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
