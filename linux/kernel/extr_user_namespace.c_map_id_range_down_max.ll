; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down_max.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_map_id_range_down_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_extent = type { i32 }
%struct.uid_gid_map = type { i32 }
%struct.idmap_key = type { i32, i8*, i8* }

@cmp_map_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uid_gid_extent* (i32, %struct.uid_gid_map*, i8*, i8*)* @map_id_range_down_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uid_gid_extent* @map_id_range_down_max(i32 %0, %struct.uid_gid_map* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uid_gid_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.idmap_key, align 8
  store i32 %0, i32* %5, align 4
  store %struct.uid_gid_map* %1, %struct.uid_gid_map** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %9, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %9, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load %struct.uid_gid_map*, %struct.uid_gid_map** %6, align 8
  %16 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @cmp_map_id, align 4
  %20 = call %struct.uid_gid_extent* @bsearch(%struct.idmap_key* %9, i32 %17, i32 %18, i32 4, i32 %19)
  ret %struct.uid_gid_extent* %20
}

declare dso_local %struct.uid_gid_extent* @bsearch(%struct.idmap_key*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
