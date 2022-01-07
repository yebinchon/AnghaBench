; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_init_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_init_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_dinode = type { i32 }
%struct.gfs2_dirent = type { i8*, i32 }

@gfs2_qdot = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DT_DIR = common dso_local global i32 0, align 4
@gfs2_qdotdot = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, %struct.gfs2_inode*)* @gfs2_init_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_init_dir(%struct.buffer_head* %0, %struct.gfs2_inode* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_dinode*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %4, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %10, %struct.gfs2_dinode** %5, align 8
  %11 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %11, i64 1
  %13 = bitcast %struct.gfs2_dinode* %12 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %13, %struct.gfs2_dirent** %6, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gfs2_qdot, i32 0, i32 0), align 4
  %15 = call i32 @GFS2_DIRENT_SIZE(i32 %14)
  %16 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %17 = call i32 @gfs2_qstr2dirent(%struct.TYPE_4__* @gfs2_qdot, i32 %15, %struct.gfs2_dirent* %16)
  %18 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @DT_DIR, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %26 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %28 = bitcast %struct.gfs2_dirent* %27 to i8*
  %29 = call i32 @GFS2_DIRENT_SIZE(i32 1)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %32, %struct.gfs2_dirent** %6, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @GFS2_DIRENT_SIZE(i32 1)
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %42 = call i32 @gfs2_qstr2dirent(%struct.TYPE_4__* @gfs2_qdotdot, i32 %40, %struct.gfs2_dirent* %41)
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %44 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %45 = call i32 @gfs2_inum_out(%struct.gfs2_inode* %43, %struct.gfs2_dirent* %44)
  %46 = load i32, i32* @DT_DIR, align 4
  %47 = call i8* @cpu_to_be16(i32 %46)
  %48 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %49 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  ret void
}

declare dso_local i32 @gfs2_qstr2dirent(%struct.TYPE_4__*, i32, %struct.gfs2_dirent*) #1

declare dso_local i32 @GFS2_DIRENT_SIZE(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @gfs2_inum_out(%struct.gfs2_inode*, %struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
