; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_lock_to_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_add_lock_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dlm_migratable_lockres = type { i32, %struct.dlm_migratable_lock* }
%struct.dlm_migratable_lock = type { i32, i32, i32, i32, i32, i32, i32 }

@DLM_MAX_MIGRATABLE_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lock*, %struct.dlm_migratable_lockres*, i32)* @dlm_add_lock_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_add_lock_to_array(%struct.dlm_lock* %0, %struct.dlm_migratable_lockres* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_lock*, align 8
  %6 = alloca %struct.dlm_migratable_lockres*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_migratable_lock*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_lock* %0, %struct.dlm_lock** %5, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %14 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %13, i32 0, i32 1
  %15 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %15, i64 %17
  store %struct.dlm_migratable_lock* %18, %struct.dlm_migratable_lock** %8, align 8
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %24 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %30 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %32 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %36 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %42 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %45 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %3
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %57 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %59 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dlm_prepare_lvb_for_migration(%struct.dlm_lock* %58, %struct.dlm_migratable_lockres* %59, i32 %60)
  br label %62

62:                                               ; preds = %50, %3
  %63 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dlm_migratable_lock*, %struct.dlm_migratable_lock** %8, align 8
  %68 = getelementptr inbounds %struct.dlm_migratable_lock, %struct.dlm_migratable_lock* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %70 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %6, align 8
  %74 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DLM_MAX_MIGRATABLE_LOCKS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @dlm_prepare_lvb_for_migration(%struct.dlm_lock*, %struct.dlm_migratable_lockres*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
