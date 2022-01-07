; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_del_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_del_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.audit_tree*, i64 }
%struct.audit_tree = type { i32 }
%struct.list_head = type { i32 }

@audit_filter_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@audit_free_rule_rcu = common dso_local global i32 0, align 4
@audit_n_rules = common dso_local global i32 0, align 4
@audit_signals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_del_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca %struct.audit_entry*, align 8
  %4 = alloca %struct.audit_tree*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_entry* %0, %struct.audit_entry** %2, align 8
  %7 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %8 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load %struct.audit_tree*, %struct.audit_tree** %9, align 8
  store %struct.audit_tree* %10, %struct.audit_tree** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %12 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %13 = call %struct.audit_entry* @audit_find_rule(%struct.audit_entry* %12, %struct.list_head** %5)
  store %struct.audit_entry* %13, %struct.audit_entry** %3, align 8
  %14 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %15 = icmp ne %struct.audit_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %21 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %27 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %26, i32 0, i32 1
  %28 = call i32 @audit_remove_watch_rule(%struct.TYPE_4__* %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %31 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.audit_tree*, %struct.audit_tree** %32, align 8
  %34 = icmp ne %struct.audit_tree* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %37 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %36, i32 0, i32 1
  %38 = call i32 @audit_remove_tree_rule(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %41 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %47 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %46, i32 0, i32 1
  %48 = call i32 @audit_remove_mark_rule(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %51 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %50, i32 0, i32 2
  %52 = call i32 @list_del_rcu(i32* %51)
  %53 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %54 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @list_del(i32* %55)
  %57 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %58 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %57, i32 0, i32 0
  %59 = load i32, i32* @audit_free_rule_rcu, align 4
  %60 = call i32 @call_rcu(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %16
  %62 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %63 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %64 = icmp ne %struct.audit_tree* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.audit_tree*, %struct.audit_tree** %4, align 8
  %67 = call i32 @audit_put_tree(%struct.audit_tree* %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.audit_entry* @audit_find_rule(%struct.audit_entry*, %struct.list_head**) #1

declare dso_local i32 @audit_remove_watch_rule(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_remove_tree_rule(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_remove_mark_rule(%struct.TYPE_4__*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @audit_put_tree(%struct.audit_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
