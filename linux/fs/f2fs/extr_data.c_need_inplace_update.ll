; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_need_inplace_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_need_inplace_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_io_info*)* @need_inplace_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_inplace_update(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %5 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %6 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %14 = call i64 @f2fs_should_update_outplace(%struct.inode* %12, %struct.f2fs_io_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %20 = call i32 @f2fs_should_update_inplace(%struct.inode* %18, %struct.f2fs_io_info* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @f2fs_should_update_outplace(%struct.inode*, %struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_should_update_inplace(%struct.inode*, %struct.f2fs_io_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
