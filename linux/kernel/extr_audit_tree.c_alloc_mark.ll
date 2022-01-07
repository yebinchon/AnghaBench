; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_alloc_mark.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_alloc_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32 }
%struct.audit_tree_mark = type { %struct.fsnotify_mark }

@audit_tree_mark_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@audit_tree_group = common dso_local global i32 0, align 4
@FS_IN_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsnotify_mark* ()* @alloc_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsnotify_mark* @alloc_mark() #0 {
  %1 = alloca %struct.fsnotify_mark*, align 8
  %2 = alloca %struct.audit_tree_mark*, align 8
  %3 = load i32, i32* @audit_tree_mark_cachep, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.audit_tree_mark* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.audit_tree_mark* %5, %struct.audit_tree_mark** %2, align 8
  %6 = load %struct.audit_tree_mark*, %struct.audit_tree_mark** %2, align 8
  %7 = icmp ne %struct.audit_tree_mark* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.fsnotify_mark* null, %struct.fsnotify_mark** %1, align 8
  br label %20

9:                                                ; preds = %0
  %10 = load %struct.audit_tree_mark*, %struct.audit_tree_mark** %2, align 8
  %11 = getelementptr inbounds %struct.audit_tree_mark, %struct.audit_tree_mark* %10, i32 0, i32 0
  %12 = load i32, i32* @audit_tree_group, align 4
  %13 = call i32 @fsnotify_init_mark(%struct.fsnotify_mark* %11, i32 %12)
  %14 = load i32, i32* @FS_IN_IGNORED, align 4
  %15 = load %struct.audit_tree_mark*, %struct.audit_tree_mark** %2, align 8
  %16 = getelementptr inbounds %struct.audit_tree_mark, %struct.audit_tree_mark* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.audit_tree_mark*, %struct.audit_tree_mark** %2, align 8
  %19 = getelementptr inbounds %struct.audit_tree_mark, %struct.audit_tree_mark* %18, i32 0, i32 0
  store %struct.fsnotify_mark* %19, %struct.fsnotify_mark** %1, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %1, align 8
  ret %struct.fsnotify_mark* %21
}

declare dso_local %struct.audit_tree_mark* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @fsnotify_init_mark(%struct.fsnotify_mark*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
