; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_init_dent_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_init_dent_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i32 }

@NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qstr*, %struct.page*)* @init_dent_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dent_inode(%struct.qstr* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.qstr*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_inode*, align 8
  store %struct.qstr* %0, %struct.qstr** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = load i32, i32* @NODE, align 4
  %8 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %6, i32 %7, i32 1, i32 1)
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %9)
  store %struct.f2fs_inode* %10, %struct.f2fs_inode** %5, align 8
  %11 = load %struct.qstr*, %struct.qstr** %3, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qstr*, %struct.qstr** %3, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qstr*, %struct.qstr** %3, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @set_page_dirty(%struct.page* %27)
  ret void
}

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
