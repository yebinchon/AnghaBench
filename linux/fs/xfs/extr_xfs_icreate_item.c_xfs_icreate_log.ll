; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icreate_item.c_xfs_icreate_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icreate_item.c_xfs_icreate_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, i32 }
%struct.xfs_icreate_item = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@xfs_icreate_zone = common dso_local global i32 0, align 4
@XFS_LI_ICREATE = common dso_local global i32 0, align 4
@xfs_icreate_item_ops = common dso_local global i32 0, align 4
@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_icreate_log(%struct.xfs_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfs_icreate_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @xfs_icreate_zone, align 4
  %17 = call %struct.xfs_icreate_item* @kmem_zone_zalloc(i32 %16, i32 0)
  store %struct.xfs_icreate_item* %17, %struct.xfs_icreate_item** %15, align 8
  %18 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %19 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %22 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %21, i32 0, i32 0
  %23 = load i32, i32* @XFS_LI_ICREATE, align 4
  %24 = call i32 @xfs_log_item_init(i32 %20, %struct.TYPE_5__* %22, i32 %23, i32* @xfs_icreate_item_ops)
  %25 = load i32, i32* @XFS_LI_ICREATE, align 4
  %26 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %27 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  store i32 %25, i32* %28, align 8
  %29 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %30 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %35 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %40 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %45 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %50 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %55 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %60 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %63 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %64 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %63, i32 0, i32 0
  %65 = call i32 @xfs_trans_add_item(%struct.xfs_trans* %62, %struct.TYPE_5__* %64)
  %66 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %67 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %68 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @XFS_LI_DIRTY, align 4
  %72 = load %struct.xfs_icreate_item*, %struct.xfs_icreate_item** %15, align 8
  %73 = getelementptr inbounds %struct.xfs_icreate_item, %struct.xfs_icreate_item* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %71, i32* %74)
  ret void
}

declare dso_local %struct.xfs_icreate_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_trans_add_item(%struct.xfs_trans*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
