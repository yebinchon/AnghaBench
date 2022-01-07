; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_init_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_init_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.aghdr_init_data = type { i32, i32, i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.aghdr_init_data*, i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)*, %struct.xfs_buf_ops*)* @xfs_ag_init_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_ag_init_hdr(%struct.xfs_mount* %0, %struct.aghdr_init_data* %1, i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* %2, %struct.xfs_buf_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.aghdr_init_data*, align 8
  %8 = alloca i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)*, align 8
  %9 = alloca %struct.xfs_buf_ops*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.aghdr_init_data* %1, %struct.aghdr_init_data** %7, align 8
  store i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)* %2, i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)** %8, align 8
  store %struct.xfs_buf_ops* %3, %struct.xfs_buf_ops** %9, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %12 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %7, align 8
  %13 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %7, align 8
  %16 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %9, align 8
  %19 = call %struct.xfs_buf* @xfs_get_aghdr_buf(%struct.xfs_mount* %11, i32 %14, i32 %17, %struct.xfs_buf_ops* %18)
  store %struct.xfs_buf* %19, %struct.xfs_buf** %10, align 8
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %21 = icmp ne %struct.xfs_buf* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)*, i32 (%struct.xfs_mount*, %struct.xfs_buf*, %struct.aghdr_init_data*)** %8, align 8
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %29 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %7, align 8
  %30 = call i32 %26(%struct.xfs_mount* %27, %struct.xfs_buf* %28, %struct.aghdr_init_data* %29)
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %32 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %7, align 8
  %33 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %32, i32 0, i32 0
  %34 = call i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %31, i32* %33)
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %36 = call i32 @xfs_buf_relse(%struct.xfs_buf* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.xfs_buf* @xfs_get_aghdr_buf(%struct.xfs_mount*, i32, i32, %struct.xfs_buf_ops*) #1

declare dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf*, i32*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
