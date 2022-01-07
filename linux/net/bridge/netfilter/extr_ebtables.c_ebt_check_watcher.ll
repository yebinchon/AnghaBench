; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_watcher.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_watcher = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xt_target*, i32 }
%struct.xt_target = type { i64, i32 }
%struct.xt_tgchk_param = type { i32, %struct.xt_target*, %struct.ebt_entry* }
%struct.ebt_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_watcher*, %struct.xt_tgchk_param*, i32*)* @ebt_check_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_watcher(%struct.ebt_entry_watcher* %0, %struct.xt_tgchk_param* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_entry_watcher*, align 8
  %6 = alloca %struct.xt_tgchk_param*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.xt_target*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ebt_entry_watcher* %0, %struct.ebt_entry_watcher** %5, align 8
  store %struct.xt_tgchk_param* %1, %struct.xt_tgchk_param** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %12, i32 0, i32 2
  %14 = load %struct.ebt_entry*, %struct.ebt_entry** %13, align 8
  store %struct.ebt_entry* %14, %struct.ebt_entry** %8, align 8
  %15 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %16 = bitcast %struct.ebt_entry* %15 to i8*
  %17 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %18 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %23 = bitcast %struct.ebt_entry_watcher* %22 to i8*
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 32
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 32
  %32 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %33 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %104

39:                                               ; preds = %29
  %40 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %41 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %42 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.xt_target* @xt_request_find_target(i64 %40, i32 %44, i32 0)
  store %struct.xt_target* %45, %struct.xt_target** %9, align 8
  %46 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %47 = call i64 @IS_ERR(%struct.xt_target* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.xt_target* %50)
  store i32 %51, i32* %4, align 4
  br label %104

52:                                               ; preds = %39
  %53 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %54 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %60 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @module_put(i32 %61)
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %104

65:                                               ; preds = %52
  %66 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %67 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %68 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.xt_target* %66, %struct.xt_target** %69, align 8
  %70 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %71 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %72 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %71, i32 0, i32 1
  store %struct.xt_target* %70, %struct.xt_target** %72, align 8
  %73 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %74 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %77 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %79 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %80 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %83 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %87 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EBT_IPROTO, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @xt_check_target(%struct.xt_tgchk_param* %78, i64 %81, i32 %85, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %65
  %95 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %96 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @module_put(i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %104

100:                                              ; preds = %65
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %101, align 4
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %94, %58, %49, %36
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.xt_target* @xt_request_find_target(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
