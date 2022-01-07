; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_read_layout_has_available_ds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_read_layout_has_available_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfs4_deviceid_node }
%struct.nfs4_deviceid_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*)* @ff_read_layout_has_available_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_read_layout_has_available_ds(%struct.pnfs_layout_segment* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnfs_layout_segment*, align 8
  %4 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %5 = alloca %struct.nfs4_deviceid_node*, align 8
  %6 = alloca i64, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %3, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %10 = call i64 @FF_LAYOUT_MIRROR_COUNT(%struct.pnfs_layout_segment* %9)
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %7
  %13 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment* %13, i64 %14)
  store %struct.nfs4_ff_layout_mirror* %15, %struct.nfs4_ff_layout_mirror** %4, align 8
  %16 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %17 = icmp ne %struct.nfs4_ff_layout_mirror* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i64 @IS_ERR(%struct.TYPE_2__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %4, align 8
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.nfs4_deviceid_node* %35, %struct.nfs4_deviceid_node** %5, align 8
  %36 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %5, align 8
  %37 = call i32 @nfs4_test_deviceid_unavailable(%struct.nfs4_deviceid_node* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %46

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %12
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %7

45:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @FF_LAYOUT_MIRROR_COUNT(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment*, i64) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_2__*) #1

declare dso_local i32 @nfs4_test_deviceid_unavailable(%struct.nfs4_deviceid_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
