; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_ifdown_and_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_ifdown_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 (%struct.pneigh_entry*)*, i32, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.net_device*, %struct.pneigh_entry* }
%struct.net_device = type { i32 }

@PNEIGH_HASHMASK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.net_device*)* @pneigh_ifdown_and_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pneigh_ifdown_and_unlock(%struct.neigh_table* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pneigh_entry*, align 8
  %6 = alloca %struct.pneigh_entry**, align 8
  %7 = alloca %struct.pneigh_entry*, align 8
  %8 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store %struct.pneigh_entry* null, %struct.pneigh_entry** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @PNEIGH_HASHMASK, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %15 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %14, i32 0, i32 2
  %16 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %16, i64 %17
  store %struct.pneigh_entry** %18, %struct.pneigh_entry*** %6, align 8
  br label %19

19:                                               ; preds = %41, %32, %13
  %20 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %6, align 8
  %21 = load %struct.pneigh_entry*, %struct.pneigh_entry** %20, align 8
  store %struct.pneigh_entry* %21, %struct.pneigh_entry** %5, align 8
  %22 = icmp ne %struct.pneigh_entry* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %28 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = icmp eq %struct.net_device* %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26, %23
  %33 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %34 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %33, i32 0, i32 1
  %35 = load %struct.pneigh_entry*, %struct.pneigh_entry** %34, align 8
  %36 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %6, align 8
  store %struct.pneigh_entry* %35, %struct.pneigh_entry** %36, align 8
  %37 = load %struct.pneigh_entry*, %struct.pneigh_entry** %7, align 8
  %38 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %39 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %38, i32 0, i32 1
  store %struct.pneigh_entry* %37, %struct.pneigh_entry** %39, align 8
  %40 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  store %struct.pneigh_entry* %40, %struct.pneigh_entry** %7, align 8
  br label %19

41:                                               ; preds = %26
  %42 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %43 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %42, i32 0, i32 1
  store %struct.pneigh_entry** %43, %struct.pneigh_entry*** %6, align 8
  br label %19

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %50 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %49, i32 0, i32 1
  %51 = call i32 @write_unlock_bh(i32* %50)
  br label %52

52:                                               ; preds = %81, %48
  %53 = load %struct.pneigh_entry*, %struct.pneigh_entry** %7, align 8
  store %struct.pneigh_entry* %53, %struct.pneigh_entry** %5, align 8
  %54 = icmp ne %struct.pneigh_entry* %53, null
  br i1 %54, label %55, label %84

55:                                               ; preds = %52
  %56 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %57 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %56, i32 0, i32 1
  %58 = load %struct.pneigh_entry*, %struct.pneigh_entry** %57, align 8
  store %struct.pneigh_entry* %58, %struct.pneigh_entry** %7, align 8
  %59 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %60 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %59, i32 0, i32 1
  store %struct.pneigh_entry* null, %struct.pneigh_entry** %60, align 8
  %61 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %62 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %61, i32 0, i32 0
  %63 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %62, align 8
  %64 = icmp ne i32 (%struct.pneigh_entry*)* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %67 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %66, i32 0, i32 0
  %68 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %67, align 8
  %69 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %70 = call i32 %68(%struct.pneigh_entry* %69)
  br label %71

71:                                               ; preds = %65, %55
  %72 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %73 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %72, i32 0, i32 0
  %74 = load %struct.net_device*, %struct.net_device** %73, align 8
  %75 = icmp ne %struct.net_device* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %78 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %77, i32 0, i32 0
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  %80 = call i32 @dev_put(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %83 = call i32 @kfree(%struct.pneigh_entry* %82)
  br label %52

84:                                               ; preds = %52
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  ret i32 %86
}

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.pneigh_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
