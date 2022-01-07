; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_mig_lockres_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_mig_lockres_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_migratable_lockres = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DLM_MAX_MIGRATABLE_LOCKS = common dso_local global i64 0, align 8
@DLM_MRES_ALL_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s:%.*s: sending mig lockres (%s) to %u\0A\00", align 1
@DLM_MRES_MIGRATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@DLM_MIG_LOCKRES_MSG = common dso_local global i32 0, align 4
@ml = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"%s: res %.*s, Error %d send MIG_LOCKRES to node %u (%s)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"node %u told me to kill myself!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_migratable_lockres*, i32, %struct.dlm_lock_resource*, i32)* @dlm_send_mig_lockres_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_mig_lockres_msg(%struct.dlm_ctxt* %0, %struct.dlm_migratable_lockres* %1, i32 %2, %struct.dlm_lock_resource* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_migratable_lockres*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dlm_lock_resource* %3, %struct.dlm_lock_resource** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %19 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be64_to_cpu(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %23 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %27 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %16, align 4
  %29 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %30 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %33 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DLM_MAX_MIGRATABLE_LOCKS, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %40 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %151

44:                                               ; preds = %5
  %45 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %46 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32, i32* @DLM_MRES_ALL_DONE, align 4
  %58 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %59 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %44
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %64 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %67 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %71 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %69, i32 %73, i8* %79, i32 %80)
  %82 = load i32, i32* @DLM_MIG_LOCKRES_MSG, align 4
  %83 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %84 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %87 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %88 = load i32, i32* @ml, align 4
  %89 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %90 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @struct_size(%struct.dlm_migratable_lockres* %87, i32 %88, i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @o2net_send_message(i32 %82, i32 %85, %struct.dlm_migratable_lockres* %86, i32 %92, i32 %93, i32* %15)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %62
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %100 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %103 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %106 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %116 = call i32 (i32, i8*, i32, ...) @mlog(i32 %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %108, i32 %109, i8* %115)
  br label %135

117:                                              ; preds = %62
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @EFAULT, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load i32, i32* @ML_ERROR, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32, i8*, i32, ...) @mlog(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = call i32 (...) @BUG()
  br label %133

133:                                              ; preds = %128, %121
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %138 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %142 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @dlm_init_migratable_lockres(%struct.dlm_migratable_lockres* %136, i32 %140, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %135, %43
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_migratable_lockres*, i32, i32, i32*) #1

declare dso_local i32 @struct_size(%struct.dlm_migratable_lockres*, i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_init_migratable_lockres(%struct.dlm_migratable_lockres*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
