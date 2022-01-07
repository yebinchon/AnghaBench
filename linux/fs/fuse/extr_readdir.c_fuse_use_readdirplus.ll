; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_use_readdirplus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_use_readdirplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i64 }
%struct.fuse_conn = type { i32, i32 }
%struct.fuse_inode = type { i32 }

@FUSE_I_ADVISE_RDPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_context*)* @fuse_use_readdirplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_use_readdirplus(%struct.inode* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %8)
  store %struct.fuse_conn* %9, %struct.fuse_conn** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %10)
  store %struct.fuse_inode* %11, %struct.fuse_inode** %7, align 8
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %13 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load i32, i32* @FUSE_I_ADVISE_RDPLUS, align 4
  %25 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %25, i32 0, i32 0
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %32 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %29, %22, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
