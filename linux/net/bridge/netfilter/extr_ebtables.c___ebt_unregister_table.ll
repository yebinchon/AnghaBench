; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c___ebt_unregister_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c___ebt_unregister_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ebt_table = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, i32 }

@ebt_mutex = common dso_local global i32 0, align 4
@ebt_cleanup_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.ebt_table*)* @__ebt_unregister_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ebt_unregister_table(%struct.net* %0, %struct.ebt_table* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.ebt_table*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.ebt_table* %1, %struct.ebt_table** %4, align 8
  %5 = call i32 @mutex_lock(i32* @ebt_mutex)
  %6 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %7 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @mutex_unlock(i32* @ebt_mutex)
  %10 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %11 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %16 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ebt_cleanup_entry, align 4
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = call i32 @EBT_ENTRY_ITERATE(%struct.TYPE_4__* %14, i32 %19, i32 %20, %struct.net* %21, i32* null)
  %23 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %24 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %31 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @module_put(i32 %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %36 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @vfree(%struct.TYPE_4__* %39)
  %41 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %42 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @ebt_free_table_info(%struct.TYPE_4__* %43)
  %45 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %46 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @vfree(%struct.TYPE_4__* %47)
  %49 = load %struct.ebt_table*, %struct.ebt_table** %4, align 8
  %50 = call i32 @kfree(%struct.ebt_table* %49)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @EBT_ENTRY_ITERATE(%struct.TYPE_4__*, i32, i32, %struct.net*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_4__*) #1

declare dso_local i32 @ebt_free_table_info(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.ebt_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
