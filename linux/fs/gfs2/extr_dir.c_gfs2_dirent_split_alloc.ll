; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_split_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dirent_split_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.qstr = type { i32 }

@gfs2_dirent_find_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, %struct.buffer_head*, %struct.qstr*, i8*)* @gfs2_dirent_split_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @gfs2_dirent_split_alloc(%struct.inode* %0, %struct.buffer_head* %1, %struct.qstr* %2, i8* %3) #0 {
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gfs2_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @gfs2_dirent_find_offset, align 4
  %19 = load %struct.qstr*, %struct.qstr** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %11, i32 %14, i32 %17, i32 %18, %struct.qstr* %19, i8* %20)
  store %struct.gfs2_dirent* %21, %struct.gfs2_dirent** %10, align 8
  %22 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  %23 = call i64 @IS_ERR_OR_NULL(%struct.gfs2_dirent* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  store %struct.gfs2_dirent* %26, %struct.gfs2_dirent** %5, align 8
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  %30 = load %struct.qstr*, %struct.qstr** %8, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %10, align 8
  %34 = bitcast %struct.gfs2_dirent* %33 to i8*
  %35 = ptrtoint i8* %32 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.gfs2_dirent* @do_init_dirent(%struct.inode* %28, %struct.gfs2_dirent* %29, %struct.qstr* %30, %struct.buffer_head* %31, i32 %38)
  store %struct.gfs2_dirent* %39, %struct.gfs2_dirent** %5, align 8
  br label %40

40:                                               ; preds = %27, %25
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  ret %struct.gfs2_dirent* %41
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i32, i32, i32, %struct.qstr*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.gfs2_dirent*) #1

declare dso_local %struct.gfs2_dirent* @do_init_dirent(%struct.inode*, %struct.gfs2_dirent*, %struct.qstr*, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
