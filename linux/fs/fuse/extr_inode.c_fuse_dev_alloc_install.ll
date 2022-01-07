; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_dev_alloc_install.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_dev_alloc_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dev = type { i32 }
%struct.fuse_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_dev* @fuse_dev_alloc_install(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_dev*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_dev*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %5 = call %struct.fuse_dev* (...) @fuse_dev_alloc()
  store %struct.fuse_dev* %5, %struct.fuse_dev** %4, align 8
  %6 = load %struct.fuse_dev*, %struct.fuse_dev** %4, align 8
  %7 = icmp ne %struct.fuse_dev* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.fuse_dev* null, %struct.fuse_dev** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.fuse_dev*, %struct.fuse_dev** %4, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %12 = call i32 @fuse_dev_install(%struct.fuse_dev* %10, %struct.fuse_conn* %11)
  %13 = load %struct.fuse_dev*, %struct.fuse_dev** %4, align 8
  store %struct.fuse_dev* %13, %struct.fuse_dev** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.fuse_dev*, %struct.fuse_dev** %2, align 8
  ret %struct.fuse_dev* %15
}

declare dso_local %struct.fuse_dev* @fuse_dev_alloc(...) #1

declare dso_local i32 @fuse_dev_install(%struct.fuse_dev*, %struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
