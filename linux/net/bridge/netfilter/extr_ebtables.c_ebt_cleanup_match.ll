; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_match = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.xt_mtdtor_param*)* }
%struct.xt_mtdtor_param = type { %struct.TYPE_3__*, i32, i32, %struct.net* }
%struct.net = type { i32 }

@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_match*, %struct.net*, i32*)* @ebt_cleanup_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_cleanup_match(%struct.ebt_entry_match* %0, %struct.net* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_entry_match*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xt_mtdtor_param, align 8
  store %struct.ebt_entry_match* %0, %struct.ebt_entry_match** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %48

17:                                               ; preds = %11, %3
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 3
  store %struct.net* %18, %struct.net** %19, align 8
  %20 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %21 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 0
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %24, align 8
  %25 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %5, align 8
  %26 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %30 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %33, align 8
  %35 = icmp ne i32 (%struct.xt_mtdtor_param*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %39, align 8
  %41 = call i32 %40(%struct.xt_mtdtor_param* %8)
  br label %42

42:                                               ; preds = %36, %17
  %43 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %8, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @module_put(i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
