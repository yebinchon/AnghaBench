; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_do_init_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_do_init_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_dirent = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_dirent* (%struct.inode*, %struct.gfs2_dirent*, %struct.qstr*, %struct.buffer_head*, i32)* @do_init_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_dirent* @do_init_dirent(%struct.inode* %0, %struct.gfs2_dirent* %1, %struct.qstr* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.gfs2_dirent*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.gfs2_dirent* %1, %struct.gfs2_dirent** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %11, align 8
  %16 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %17 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16_to_cpu(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.qstr*, %struct.qstr** %8, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %20, %23
  %25 = load i32, i32* %13, align 4
  %26 = icmp ugt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = call i32 @gfs2_trans_add_meta(i32 %31, %struct.buffer_head* %32)
  %34 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %35 = bitcast %struct.gfs2_dirent* %34 to i8*
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %39, %struct.gfs2_dirent** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qstr*, %struct.qstr** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub i32 %45, %46
  %48 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %49 = call i32 @gfs2_qstr2dirent(%struct.qstr* %44, i32 %47, %struct.gfs2_dirent* %48)
  %50 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  ret %struct.gfs2_dirent* %50
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @gfs2_qstr2dirent(%struct.qstr*, i32, %struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
