; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_prepare_lvb_for_migration.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_prepare_lvb_for_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dlm_migratable_lockres = type { i32 }

@DLM_BLOCKED_LIST = common dso_local global i32 0, align 4
@LKM_EXMODE = common dso_local global i64 0, align 8
@LKM_PRMODE = common dso_local global i64 0, align 8
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Mismatched lvb in lock cookie=%u:%llu, name=%.*s, node=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock*, %struct.dlm_migratable_lockres*, i32)* @dlm_prepare_lvb_for_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_prepare_lvb_for_migration(%struct.dlm_lock* %0, %struct.dlm_migratable_lockres* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_lock*, align 8
  %5 = alloca %struct.dlm_migratable_lockres*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_lock* %0, %struct.dlm_lock** %4, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %98

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DLM_BLOCKED_LIST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %98

17:                                               ; preds = %12
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LKM_EXMODE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LKM_PRMODE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %98

32:                                               ; preds = %24, %17
  %33 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @dlm_lvb_is_empty(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %43 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DLM_LVB_LEN, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %46, i32 %47)
  br label %98

49:                                               ; preds = %32
  %50 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %54 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DLM_LVB_LEN, align 4
  %59 = call i32 @memcmp(i32 %52, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %98

62:                                               ; preds = %49
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %65 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be64_to_cpu(i32 %67)
  %69 = call i32 @dlm_get_lock_cookie_node(i32 %68)
  %70 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %71 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be64_to_cpu(i32 %73)
  %75 = call i32 @dlm_get_lock_cookie_seq(i32 %74)
  %76 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %77 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %83 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %89 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mlog(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %75, i32 %81, i32 %87, i32 %91)
  %93 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %94 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @dlm_print_one_lock_resource(%struct.TYPE_8__* %95)
  %97 = call i32 (...) @BUG()
  br label %98

98:                                               ; preds = %62, %61, %38, %31, %16, %11
  ret void
}

declare dso_local i64 @dlm_lvb_is_empty(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
