; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_sort_idmaps.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_sort_idmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uid_gid_map = type { i32, i32, i32 }

@UID_GID_MAP_MAX_BASE_EXTENTS = common dso_local global i32 0, align 4
@cmp_extents_forward = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmp_extents_reverse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uid_gid_map*)* @sort_idmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_idmaps(%struct.uid_gid_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uid_gid_map*, align 8
  store %struct.uid_gid_map* %0, %struct.uid_gid_map** %3, align 8
  %4 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %5 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UID_GID_MAP_MAX_BASE_EXTENTS, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %12 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %15 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @cmp_extents_forward, align 4
  %18 = call i32 @sort(i32 %13, i32 %16, i32 4, i32 %17, i32* null)
  %19 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %20 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %23 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kmemdup(i32 %21, i32 %27, i32 %28)
  %30 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %31 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %33 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %10
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %10
  %40 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %41 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uid_gid_map*, %struct.uid_gid_map** %3, align 8
  %44 = getelementptr inbounds %struct.uid_gid_map, %struct.uid_gid_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @cmp_extents_reverse, align 4
  %47 = call i32 @sort(i32 %42, i32 %45, i32 4, i32 %46, i32* null)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %36, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @sort(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
