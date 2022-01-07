; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i64 }
%struct.net = type { i32 }
%struct.xt_tgdtor_param = type { %struct.TYPE_4__*, i32, i32, %struct.net* }
%struct.TYPE_4__ = type { i32, i32 (%struct.xt_tgdtor_param*)* }
%struct.ebt_entry_target = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@ebt_cleanup_watcher = common dso_local global i32 0, align 4
@ebt_cleanup_match = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.net*, i32*)* @ebt_cleanup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_cleanup_entry(%struct.ebt_entry* %0, %struct.net* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_entry*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xt_tgdtor_param, align 8
  %9 = alloca %struct.ebt_entry_target*, align 8
  store %struct.ebt_entry* %0, %struct.ebt_entry** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %11 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %65

24:                                               ; preds = %18, %15
  %25 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %26 = load i32, i32* @ebt_cleanup_watcher, align 4
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = call i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry* %25, i32 %26, %struct.net* %27, i32* null)
  %29 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %30 = load i32, i32* @ebt_cleanup_match, align 4
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = call i32 @EBT_MATCH_ITERATE(%struct.ebt_entry* %29, i32 %30, %struct.net* %31, i32* null)
  %33 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %34 = call %struct.ebt_entry_target* @ebt_get_target(%struct.ebt_entry* %33)
  store %struct.ebt_entry_target* %34, %struct.ebt_entry_target** %9, align 8
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 3
  store %struct.net* %35, %struct.net** %36, align 8
  %37 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %9, align 8
  %38 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %9, align 8
  %43 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %47 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %50, align 8
  %52 = icmp ne i32 (%struct.xt_tgdtor_param*)* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %24
  %54 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %56, align 8
  %58 = call i32 %57(%struct.xt_tgdtor_param* %8)
  br label %59

59:                                               ; preds = %53, %24
  %60 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %8, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @module_put(i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %23, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry*, i32, %struct.net*, i32*) #1

declare dso_local i32 @EBT_MATCH_ITERATE(%struct.ebt_entry*, i32, %struct.net*, i32*) #1

declare dso_local %struct.ebt_entry_target* @ebt_get_target(%struct.ebt_entry*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
