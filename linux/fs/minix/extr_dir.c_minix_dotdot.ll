; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_dotdot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_dir_entry = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.minix_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minix_dir_entry* @minix_dotdot(%struct.inode* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.minix_sb_info*, align 8
  %7 = alloca %struct.minix_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page** %1, %struct.page*** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.page* @dir_get_page(%struct.inode* %8, i32 0)
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.minix_sb_info* @minix_sb(i32 %12)
  store %struct.minix_sb_info* %13, %struct.minix_sb_info** %6, align 8
  store %struct.minix_dir_entry* null, %struct.minix_dir_entry** %7, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i32 @IS_ERR(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @page_address(%struct.page* %18)
  %20 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %21 = call %struct.minix_dir_entry* @minix_next_entry(i32 %19, %struct.minix_sb_info* %20)
  store %struct.minix_dir_entry* %21, %struct.minix_dir_entry** %7, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = load %struct.page**, %struct.page*** %4, align 8
  store %struct.page* %22, %struct.page** %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %7, align 8
  ret %struct.minix_dir_entry* %25
}

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i32) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local %struct.minix_dir_entry* @minix_next_entry(i32, %struct.minix_sb_info*) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
