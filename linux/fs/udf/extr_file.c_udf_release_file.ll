; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_release_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_file.c_udf_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @udf_release_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_release_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.file*, %struct.file** %4, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FMODE_WRITE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @inode_lock(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @udf_discard_prealloc(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @udf_truncate_tail_extent(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @up_write(i32* %29)
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @inode_unlock(%struct.inode* %31)
  br label %33

33:                                               ; preds = %16, %11, %2
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_discard_prealloc(%struct.inode*) #1

declare dso_local i32 @udf_truncate_tail_extent(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
