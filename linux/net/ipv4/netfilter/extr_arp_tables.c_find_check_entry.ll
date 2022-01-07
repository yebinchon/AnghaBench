; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_find_check_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_find_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.xt_percpu_counter_alloc_state = type { i32 }
%struct.xt_entry_target = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFPROTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_entry*, i8*, i32, %struct.xt_percpu_counter_alloc_state*)* @find_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_check_entry(%struct.arpt_entry* %0, i8* %1, i32 %2, %struct.xt_percpu_counter_alloc_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arpt_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xt_percpu_counter_alloc_state*, align 8
  %10 = alloca %struct.xt_entry_target*, align 8
  %11 = alloca %struct.xt_target*, align 8
  %12 = alloca i32, align 4
  store %struct.arpt_entry* %0, %struct.arpt_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.xt_percpu_counter_alloc_state* %3, %struct.xt_percpu_counter_alloc_state** %9, align 8
  %13 = load %struct.xt_percpu_counter_alloc_state*, %struct.xt_percpu_counter_alloc_state** %9, align 8
  %14 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %15 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %14, i32 0, i32 0
  %16 = call i32 @xt_percpu_counter_alloc(%struct.xt_percpu_counter_alloc_state* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %23 = call %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry* %22)
  store %struct.xt_entry_target* %23, %struct.xt_entry_target** %10, align 8
  %24 = load i32, i32* @NFPROTO_ARP, align 4
  %25 = load %struct.xt_entry_target*, %struct.xt_entry_target** %10, align 8
  %26 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xt_entry_target*, %struct.xt_entry_target** %10, align 8
  %31 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.xt_target* @xt_request_find_target(i32 %24, i32 %29, i32 %34)
  store %struct.xt_target* %35, %struct.xt_target** %11, align 8
  %36 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %37 = call i64 @IS_ERR(%struct.xt_target* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %41 = call i32 @PTR_ERR(%struct.xt_target* %40)
  store i32 %41, i32* %12, align 4
  br label %64

42:                                               ; preds = %21
  %43 = load %struct.xt_target*, %struct.xt_target** %11, align 8
  %44 = load %struct.xt_entry_target*, %struct.xt_entry_target** %10, align 8
  %45 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store %struct.xt_target* %43, %struct.xt_target** %47, align 8
  %48 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @check_target(%struct.arpt_entry* %48, i8* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %55

54:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %69

55:                                               ; preds = %53
  %56 = load %struct.xt_entry_target*, %struct.xt_entry_target** %10, align 8
  %57 = getelementptr inbounds %struct.xt_entry_target, %struct.xt_entry_target* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.xt_target*, %struct.xt_target** %59, align 8
  %61 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @module_put(i32 %62)
  br label %64

64:                                               ; preds = %55, %39
  %65 = load %struct.arpt_entry*, %struct.arpt_entry** %6, align 8
  %66 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %65, i32 0, i32 0
  %67 = call i32 @xt_percpu_counter_free(i32* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %54, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @xt_percpu_counter_alloc(%struct.xt_percpu_counter_alloc_state*, i32*) #1

declare dso_local %struct.xt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local %struct.xt_target* @xt_request_find_target(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @check_target(%struct.arpt_entry*, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xt_percpu_counter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
