; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_claim_space_nodirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_claim_space_nodirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@dquot_srcu = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_claim_space_nodirty(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dquot**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dquot*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @dquot_active(%struct.inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32* @inode_reserved_space(%struct.inode* %18)
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @__inode_add_bytes(%struct.inode* %24, i64 %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %111

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.dquot** @i_dquot(%struct.inode* %31)
  store %struct.dquot** %32, %struct.dquot*** %6, align 8
  %33 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %90, %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MAXQUOTAS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dquot*, %struct.dquot** %42, i64 %44
  %46 = load %struct.dquot*, %struct.dquot** %45, align 8
  %47 = icmp ne %struct.dquot* %46, null
  br i1 %47, label %48, label %89

48:                                               ; preds = %41
  %49 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dquot*, %struct.dquot** %49, i64 %51
  %53 = load %struct.dquot*, %struct.dquot** %52, align 8
  store %struct.dquot* %53, %struct.dquot** %9, align 8
  %54 = load %struct.dquot*, %struct.dquot** %9, align 8
  %55 = getelementptr inbounds %struct.dquot, %struct.dquot* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.dquot*, %struct.dquot** %9, align 8
  %58 = getelementptr inbounds %struct.dquot, %struct.dquot* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp slt i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON_ONCE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %48
  %67 = load %struct.dquot*, %struct.dquot** %9, align 8
  %68 = getelementptr inbounds %struct.dquot, %struct.dquot* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %66, %48
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.dquot*, %struct.dquot** %9, align 8
  %74 = getelementptr inbounds %struct.dquot, %struct.dquot* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.dquot*, %struct.dquot** %9, align 8
  %82 = getelementptr inbounds %struct.dquot, %struct.dquot* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %80
  store i64 %85, i64* %83, align 8
  %86 = load %struct.dquot*, %struct.dquot** %9, align 8
  %87 = getelementptr inbounds %struct.dquot, %struct.dquot* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  br label %89

89:                                               ; preds = %71, %41
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %37

93:                                               ; preds = %37
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32* @inode_reserved_space(%struct.inode* %95)
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @__inode_add_bytes(%struct.inode* %101, i64 %102)
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %108 = call i32 @mark_all_dquot_dirty(%struct.dquot** %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %93, %13
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dquot_active(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @inode_reserved_space(%struct.inode*) #1

declare dso_local i32 @__inode_add_bytes(%struct.inode*, i64) #1

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
