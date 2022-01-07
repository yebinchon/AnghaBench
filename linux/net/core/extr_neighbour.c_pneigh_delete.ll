; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, i32, i32 (%struct.pneigh_entry*)*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.net_device*, %struct.pneigh_entry*, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pneigh_delete(%struct.neigh_table* %0, %struct.net* %1, i8* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.neigh_table*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pneigh_entry*, align 8
  %11 = alloca %struct.pneigh_entry**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %15 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @pneigh_hash(i8* %17, i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %21 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %20, i32 0, i32 1
  %22 = call i32 @write_lock_bh(i32* %21)
  %23 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %24 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %23, i32 0, i32 3
  %25 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %25, i64 %26
  store %struct.pneigh_entry** %27, %struct.pneigh_entry*** %11, align 8
  br label %28

28:                                               ; preds = %84, %4
  %29 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %11, align 8
  %30 = load %struct.pneigh_entry*, %struct.pneigh_entry** %29, align 8
  store %struct.pneigh_entry* %30, %struct.pneigh_entry** %10, align 8
  %31 = icmp ne %struct.pneigh_entry* %30, null
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  %33 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %34 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @memcmp(i32 %35, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %32
  %41 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %42 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = icmp eq %struct.net_device* %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %48 = call i32 @pneigh_net(%struct.pneigh_entry* %47)
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = call i64 @net_eq(i32 %48, %struct.net* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %54 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %53, i32 0, i32 1
  %55 = load %struct.pneigh_entry*, %struct.pneigh_entry** %54, align 8
  %56 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %11, align 8
  store %struct.pneigh_entry* %55, %struct.pneigh_entry** %56, align 8
  %57 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %58 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %57, i32 0, i32 1
  %59 = call i32 @write_unlock_bh(i32* %58)
  %60 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %61 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %60, i32 0, i32 2
  %62 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %61, align 8
  %63 = icmp ne i32 (%struct.pneigh_entry*)* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %66 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %65, i32 0, i32 2
  %67 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %66, align 8
  %68 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %69 = call i32 %67(%struct.pneigh_entry* %68)
  br label %70

70:                                               ; preds = %64, %52
  %71 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %72 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %71, i32 0, i32 0
  %73 = load %struct.net_device*, %struct.net_device** %72, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %77 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %76, i32 0, i32 0
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = call i32 @dev_put(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %82 = call i32 @kfree(%struct.pneigh_entry* %81)
  store i32 0, i32* %5, align 4
  br label %93

83:                                               ; preds = %46, %40, %32
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %86 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %85, i32 0, i32 1
  store %struct.pneigh_entry** %86, %struct.pneigh_entry*** %11, align 8
  br label %28

87:                                               ; preds = %28
  %88 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %89 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %88, i32 0, i32 1
  %90 = call i32 @write_unlock_bh(i32* %89)
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %80
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @pneigh_hash(i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @pneigh_net(%struct.pneigh_entry*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.pneigh_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
