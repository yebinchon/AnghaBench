; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_reclaim_space_nodirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_reclaim_space_nodirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@dquot_srcu = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dquot_reclaim_space_nodirty(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dquot**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dquot*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @dquot_active(%struct.inode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32* @inode_reserved_space(%struct.inode* %17)
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @__inode_sub_bytes(%struct.inode* %23, i64 %24)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  br label %110

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.dquot** @i_dquot(%struct.inode* %30)
  store %struct.dquot** %31, %struct.dquot*** %5, align 8
  %32 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %89, %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAXQUOTAS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load %struct.dquot**, %struct.dquot*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dquot*, %struct.dquot** %41, i64 %43
  %45 = load %struct.dquot*, %struct.dquot** %44, align 8
  %46 = icmp ne %struct.dquot* %45, null
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  %48 = load %struct.dquot**, %struct.dquot*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dquot*, %struct.dquot** %48, i64 %50
  %52 = load %struct.dquot*, %struct.dquot** %51, align 8
  store %struct.dquot* %52, %struct.dquot** %8, align 8
  %53 = load %struct.dquot*, %struct.dquot** %8, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.dquot*, %struct.dquot** %8, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp slt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON_ONCE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %47
  %66 = load %struct.dquot*, %struct.dquot** %8, align 8
  %67 = getelementptr inbounds %struct.dquot, %struct.dquot* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %65, %47
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.dquot*, %struct.dquot** %8, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.dquot*, %struct.dquot** %8, align 8
  %81 = getelementptr inbounds %struct.dquot, %struct.dquot* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %79
  store i64 %84, i64* %82, align 8
  %85 = load %struct.dquot*, %struct.dquot** %8, align 8
  %86 = getelementptr inbounds %struct.dquot, %struct.dquot* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %70, %40
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %36

92:                                               ; preds = %36
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = call i32* @inode_reserved_space(%struct.inode* %94)
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @__inode_sub_bytes(%struct.inode* %100, i64 %101)
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.dquot**, %struct.dquot*** %5, align 8
  %107 = call i32 @mark_all_dquot_dirty(%struct.dquot** %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %108)
  br label %110

110:                                              ; preds = %92, %12
  ret void
}

declare dso_local i32 @dquot_active(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @inode_reserved_space(%struct.inode*) #1

declare dso_local i32 @__inode_sub_bytes(%struct.inode*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mark_all_dquot_dirty(%struct.dquot**) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
