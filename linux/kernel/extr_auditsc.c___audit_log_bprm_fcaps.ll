; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_log_bprm_fcaps.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_log_bprm_fcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cred = type { i32, i32, i32, i32 }
%struct.audit_aux_data_bprm_fcaps = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.audit_context = type { i8* }
%struct.cpu_vfs_cap_data = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_BPRM_FCAPS = common dso_local global i32 0, align 4
@VFS_CAP_FLAGS_EFFECTIVE = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_MASK = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__audit_log_bprm_fcaps(%struct.linux_binprm* %0, %struct.cred* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.audit_aux_data_bprm_fcaps*, align 8
  %9 = alloca %struct.audit_context*, align 8
  %10 = alloca %struct.cpu_vfs_cap_data, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store %struct.cred* %2, %struct.cred** %7, align 8
  %11 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %11, %struct.audit_context** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.audit_aux_data_bprm_fcaps* @kmalloc(i32 72, i32 %12)
  store %struct.audit_aux_data_bprm_fcaps* %13, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %14 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %15 = icmp ne %struct.audit_aux_data_bprm_fcaps* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %123

19:                                               ; preds = %3
  %20 = load i32, i32* @AUDIT_BPRM_FCAPS, align 4
  %21 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %22 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %25 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %28 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %31 = bitcast %struct.audit_aux_data_bprm_fcaps* %30 to i8*
  %32 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %33 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %35 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_vfs_caps_from_disk(i32 %39, %struct.cpu_vfs_cap_data* %10)
  %41 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %44 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %49 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %60 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %65 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VFS_CAP_REVISION_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @VFS_CAP_REVISION_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %74 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cred*, %struct.cred** %7, align 8
  %76 = getelementptr inbounds %struct.cred, %struct.cred* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %79 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.cred*, %struct.cred** %7, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %85 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.cred*, %struct.cred** %7, align 8
  %88 = getelementptr inbounds %struct.cred, %struct.cred* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %91 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.cred*, %struct.cred** %7, align 8
  %94 = getelementptr inbounds %struct.cred, %struct.cred* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %97 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.cred*, %struct.cred** %6, align 8
  %100 = getelementptr inbounds %struct.cred, %struct.cred* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %103 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load %struct.cred*, %struct.cred** %6, align 8
  %106 = getelementptr inbounds %struct.cred, %struct.cred* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %109 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.cred*, %struct.cred** %6, align 8
  %112 = getelementptr inbounds %struct.cred, %struct.cred* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %115 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.cred*, %struct.cred** %6, align 8
  %118 = getelementptr inbounds %struct.cred, %struct.cred* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %121 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %19, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local %struct.audit_aux_data_bprm_fcaps* @kmalloc(i32, i32) #1

declare dso_local i32 @get_vfs_caps_from_disk(i32, %struct.cpu_vfs_cap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
