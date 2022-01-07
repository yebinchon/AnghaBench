; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_others_may_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_others_may_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.gfs2_sbd*)* }

@.str = private unnamed_addr constant [16 x i8] c"FIRSTMOUNT=Done\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"first mount done, others may mount\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*)* @gfs2_others_may_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_others_may_mount(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i8*], align 16
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %5, i64 1
  store i8* null, i8** %7, align 8
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %9 = call i32 @fs_info(%struct.gfs2_sbd* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.gfs2_sbd*)*, i32 (%struct.gfs2_sbd*)** %14, align 8
  %16 = icmp ne i32 (%struct.gfs2_sbd*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.gfs2_sbd*)*, i32 (%struct.gfs2_sbd*)** %22, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %25 = call i32 %23(%struct.gfs2_sbd* %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 0
  %29 = load i32, i32* @KOBJ_CHANGE, align 4
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %31 = call i32 @kobject_uevent_env(i32* %28, i32 %29, i8** %30)
  ret void
}

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
