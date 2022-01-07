; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_after_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_after_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32, i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"jid=%u: Replayed %u of %u blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_jdesc*, i32, i32)* @buf_lo_after_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_lo_after_scan(%struct.gfs2_jdesc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_jdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.gfs2_inode* @GFS2_I(i32 %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %7, align 8
  %13 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.gfs2_sbd* @GFS2_SB(i32 %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gfs2_meta_sync(i32 %22)
  br label %44

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %44

28:                                               ; preds = %24
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gfs2_meta_sync(i32 %31)
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %34 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fs_info(%struct.gfs2_sbd* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %28, %27, %19
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_meta_sync(i32) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
