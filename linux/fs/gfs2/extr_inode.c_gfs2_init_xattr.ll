; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_init_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_init_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32, i32 }

@GFS2_METATYPE_EA = common dso_local global i32 0, align 4
@GFS2_FORMAT_EA = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*)* @gfs2_init_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_init_xattr(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_ea_header*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %6, i32 0, i32 2
  %8 = call %struct.gfs2_sbd* @GFS2_SB(i32* %7)
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %3, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.buffer_head* @gfs2_meta_new(i32 %11, i32 %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %4, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = call i32 @gfs2_trans_add_meta(i32 %18, %struct.buffer_head* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = load i32, i32* @GFS2_METATYPE_EA, align 4
  %23 = load i32, i32* @GFS2_FORMAT_EA, align 4
  %24 = call i32 @gfs2_metatype_set(%struct.buffer_head* %21, i32 %22, i32 %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %25, i32 4)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %28 = call %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head* %27)
  store %struct.gfs2_ea_header* %28, %struct.gfs2_ea_header** %5, align 8
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %36 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local %struct.gfs2_ea_header* @GFS2_EA_BH2FIRST(%struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
