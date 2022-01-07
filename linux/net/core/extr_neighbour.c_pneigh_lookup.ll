; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.net_device*, i32, i32, i64 }
%struct.neigh_table = type { i32, i32, %struct.pneigh_entry**, i64 (%struct.pneigh_entry*)* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table* %0, %struct.net* %1, i8* %2, %struct.net_device* %3, i32 %4) #0 {
  %6 = alloca %struct.neigh_table*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pneigh_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store i32 %4, i32* %10, align 4
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
  %22 = call i32 @read_lock_bh(i32* %21)
  %23 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %24 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %23, i32 0, i32 2
  %25 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %25, i64 %26
  %28 = load %struct.pneigh_entry*, %struct.pneigh_entry** %27, align 8
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = call %struct.pneigh_entry* @__pneigh_lookup_1(%struct.pneigh_entry* %28, %struct.net* %29, i8* %30, i32 %31, %struct.net_device* %32)
  store %struct.pneigh_entry* %33, %struct.pneigh_entry** %11, align 8
  %34 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %35 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %34, i32 0, i32 1
  %36 = call i32 @read_unlock_bh(i32* %35)
  %37 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %38 = icmp ne %struct.pneigh_entry* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %5
  br label %117

43:                                               ; preds = %39
  %44 = call i32 (...) @ASSERT_RTNL()
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = add i64 32, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.pneigh_entry* @kmalloc(i32 %48, i32 %49)
  store %struct.pneigh_entry* %50, %struct.pneigh_entry** %11, align 8
  %51 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %52 = icmp ne %struct.pneigh_entry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %117

54:                                               ; preds = %43
  %55 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %56 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %58 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %57, i32 0, i32 3
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = call i32 @write_pnet(i32* %58, %struct.net* %59)
  %61 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %62 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @memcpy(i32 %63, i8* %64, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %69 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %68, i32 0, i32 1
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = call i32 @dev_hold(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %54
  %76 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %77 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %76, i32 0, i32 3
  %78 = load i64 (%struct.pneigh_entry*)*, i64 (%struct.pneigh_entry*)** %77, align 8
  %79 = icmp ne i64 (%struct.pneigh_entry*)* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %82 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %81, i32 0, i32 3
  %83 = load i64 (%struct.pneigh_entry*)*, i64 (%struct.pneigh_entry*)** %82, align 8
  %84 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %85 = call i64 %83(%struct.pneigh_entry* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = icmp ne %struct.net_device* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = call i32 @dev_put(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %95 = call i32 @kfree(%struct.pneigh_entry* %94)
  store %struct.pneigh_entry* null, %struct.pneigh_entry** %11, align 8
  br label %117

96:                                               ; preds = %80, %75
  %97 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %98 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %97, i32 0, i32 1
  %99 = call i32 @write_lock_bh(i32* %98)
  %100 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %101 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %100, i32 0, i32 2
  %102 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %102, i64 %103
  %105 = load %struct.pneigh_entry*, %struct.pneigh_entry** %104, align 8
  %106 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %107 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %106, i32 0, i32 0
  store %struct.pneigh_entry* %105, %struct.pneigh_entry** %107, align 8
  %108 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  %109 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %110 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %109, i32 0, i32 2
  %111 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %111, i64 %112
  store %struct.pneigh_entry* %108, %struct.pneigh_entry** %113, align 8
  %114 = load %struct.neigh_table*, %struct.neigh_table** %6, align 8
  %115 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %114, i32 0, i32 1
  %116 = call i32 @write_unlock_bh(i32* %115)
  br label %117

117:                                              ; preds = %96, %93, %53, %42
  %118 = load %struct.pneigh_entry*, %struct.pneigh_entry** %11, align 8
  ret %struct.pneigh_entry* %118
}

declare dso_local i64 @pneigh_hash(i8*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.pneigh_entry* @__pneigh_lookup_1(%struct.pneigh_entry*, %struct.net*, i8*, i32, %struct.net_device*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.pneigh_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.pneigh_entry*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
