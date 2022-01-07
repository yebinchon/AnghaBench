; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@sort_qd = common dso_local global i32 0, align 4
@NO_FORCE = common dso_local global i32 0, align 4
@GIF_QD_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_quota_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 2
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %16 = call i64 @capable(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %109

26:                                               ; preds = %18
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %26
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %39, align 8
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @sort_qd, align 4
  %47 = call i32 @sort(%struct.gfs2_quota_data** %40, i64 %45, i32 8, i32 %46, i32* null)
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %79, %35
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %48
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %61, i64 %62
  %64 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %63, align 8
  store %struct.gfs2_quota_data* %64, %struct.gfs2_quota_data** %9, align 8
  %65 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %9, align 8
  %66 = load i32, i32* @NO_FORCE, align 4
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @do_glock(%struct.gfs2_quota_data* %65, i32 %66, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  br label %82

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %48

82:                                               ; preds = %77, %48
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @GIF_QD_LOCKED, align 4
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %88 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  br label %107

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %95, %90
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %10, align 8
  %94 = icmp ne i64 %92, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %97 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i32 @gfs2_glock_dq_uninit(i32* %102)
  br label %91

104:                                              ; preds = %91
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %106 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %105)
  br label %107

107:                                              ; preds = %104, %85
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %33, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @sort(%struct.gfs2_quota_data**, i64, i32, i32, i32*) #1

declare dso_local i32 @do_glock(%struct.gfs2_quota_data*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
