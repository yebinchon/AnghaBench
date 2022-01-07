; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_do_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FI_NEW_INODE = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_do_tmpfile(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.page* @f2fs_init_inode_metadata(%struct.inode* %11, %struct.inode* %12, i32* null, i32* null, i32* null)
  store %struct.page* %13, %struct.page** %5, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i64 @IS_ERR(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.page* %18)
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i32 @f2fs_put_page(%struct.page* %21, i32 1)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load i32, i32* @FI_NEW_INODE, align 4
  %25 = call i32 @clear_inode_flag(%struct.inode* %23, i32 %24)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @F2FS_I_SB(%struct.inode* %26)
  %28 = load i32, i32* @REQ_TIME, align 4
  %29 = call i32 @f2fs_update_time(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %17
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @up_write(i32* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_init_inode_metadata(%struct.inode*, %struct.inode*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
