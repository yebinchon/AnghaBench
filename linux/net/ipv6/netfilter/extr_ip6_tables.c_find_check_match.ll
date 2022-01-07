; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_find_check_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_find_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_entry_match = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xt_mtchk_param = type { i32 }

@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_entry_match*, %struct.xt_mtchk_param*)* @find_check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_check_match(%struct.xt_entry_match* %0, %struct.xt_mtchk_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_entry_match*, align 8
  %5 = alloca %struct.xt_mtchk_param*, align 8
  %6 = alloca %struct.xt_match*, align 8
  %7 = alloca i32, align 4
  store %struct.xt_entry_match* %0, %struct.xt_entry_match** %4, align 8
  store %struct.xt_mtchk_param* %1, %struct.xt_mtchk_param** %5, align 8
  %8 = load i32, i32* @NFPROTO_IPV6, align 4
  %9 = load %struct.xt_entry_match*, %struct.xt_entry_match** %4, align 8
  %10 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xt_entry_match*, %struct.xt_entry_match** %4, align 8
  %15 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.xt_match* @xt_request_find_match(i32 %8, i32 %13, i32 %18)
  store %struct.xt_match* %19, %struct.xt_match** %6, align 8
  %20 = load %struct.xt_match*, %struct.xt_match** %6, align 8
  %21 = call i64 @IS_ERR(%struct.xt_match* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.xt_match*, %struct.xt_match** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.xt_match* %24)
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.xt_match*, %struct.xt_match** %6, align 8
  %28 = load %struct.xt_entry_match*, %struct.xt_entry_match** %4, align 8
  %29 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.xt_match* %27, %struct.xt_match** %31, align 8
  %32 = load %struct.xt_entry_match*, %struct.xt_entry_match** %4, align 8
  %33 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %5, align 8
  %34 = call i32 @check_match(%struct.xt_entry_match* %32, %struct.xt_mtchk_param* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %49

39:                                               ; preds = %37
  %40 = load %struct.xt_entry_match*, %struct.xt_entry_match** %4, align 8
  %41 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.xt_match*, %struct.xt_match** %43, align 8
  %45 = getelementptr inbounds %struct.xt_match, %struct.xt_match* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @module_put(i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %38, %23
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.xt_match* @xt_request_find_match(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_match*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_match*) #1

declare dso_local i32 @check_match(%struct.xt_entry_match*, %struct.xt_mtchk_param*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
