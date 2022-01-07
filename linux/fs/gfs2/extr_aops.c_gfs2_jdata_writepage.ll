; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_jdata_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_jdata_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @gfs2_jdata_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_jdata_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %8, align 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gfs2_glock_is_held_excl(i32 %22)
  %24 = call i64 @gfs2_assert_withdraw(%struct.gfs2_sbd* %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i64 @PageChecked(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %27
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %40 = call i32 @__gfs2_jdata_writepage(%struct.page* %38, %struct.writeback_control* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %43, %struct.page* %44)
  br label %46

46:                                               ; preds = %42, %26
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = call i32 @unlock_page(%struct.page* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_glock_is_held_excl(i32) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @__gfs2_jdata_writepage(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
