; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_notify_retrieve.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_notify_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i64 }
%struct.fuse_copy_state = type { i32 }
%struct.fuse_notify_retrieve_out = type { i32 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@fuse_inode_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, i32, %struct.fuse_copy_state*)* @fuse_notify_retrieve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_notify_retrieve(%struct.fuse_conn* %0, i32 %1, %struct.fuse_copy_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_copy_state*, align 8
  %8 = alloca %struct.fuse_notify_retrieve_out, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fuse_copy_state* %2, %struct.fuse_copy_state** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %20 = call i32 @fuse_copy_one(%struct.fuse_copy_state* %19, %struct.fuse_notify_retrieve_out* %8, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %59

24:                                               ; preds = %18
  %25 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %26 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %25)
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %33 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.fuse_notify_retrieve_out, %struct.fuse_notify_retrieve_out* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @fuse_inode_eq, align 4
  %44 = call %struct.inode* @ilookup5(i64 %41, i32 %42, i32 %43, i32* %11)
  store %struct.inode* %44, %struct.inode** %9, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i32 @fuse_retrieve(%struct.fuse_conn* %48, %struct.inode* %49, %struct.fuse_notify_retrieve_out* %8)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  br label %53

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %56 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %55, i32 0, i32 0
  %57 = call i32 @up_read(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %23, %17
  %60 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %7, align 8
  %61 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @fuse_copy_one(%struct.fuse_copy_state*, %struct.fuse_notify_retrieve_out*, i32) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.inode* @ilookup5(i64, i32, i32, i32*) #1

declare dso_local i32 @fuse_retrieve(%struct.fuse_conn*, %struct.inode*, %struct.fuse_notify_retrieve_out*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
