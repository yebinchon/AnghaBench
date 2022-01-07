; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_jdesc_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_jdesc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_jdesc_check(%struct.gfs2_jdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_jdesc*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %3, align 8
  %7 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gfs2_inode* @GFS2_I(i32 %9)
  store %struct.gfs2_inode* %10, %struct.gfs2_inode** %4, align 8
  %11 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32 %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %5, align 8
  %15 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %16 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i_size_read(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 30)
  %23 = call i64 @gfs2_check_internal_file_size(i32 %21, i32 8388608, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %29, %33
  %35 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @gfs2_write_alloc_required(%struct.gfs2_inode* %37, i32 0, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %43 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %41, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @gfs2_check_internal_file_size(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
