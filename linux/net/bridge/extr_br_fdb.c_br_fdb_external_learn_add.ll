; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_external_learn_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_external_learn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.net_bridge_fdb_entry = type { i32, i32, i8*, %struct.net_bridge_port*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_fdb_external_learn_add(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_bridge_fdb_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @trace_br_fdb_external_learn_add(%struct.net_bridge* %14, %struct.net_bridge_port* %15, i8* %16, i32 %17)
  %19 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %20 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %22, i8* %23, i32 %24)
  store %struct.net_bridge_fdb_entry* %25, %struct.net_bridge_fdb_entry** %11, align 8
  %26 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %27 = icmp ne %struct.net_bridge_fdb_entry* %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %5
  %29 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge* %29, %struct.net_bridge_port* %30, i8* %31, i32 %32, i32 0, i32 0)
  store %struct.net_bridge_fdb_entry* %33, %struct.net_bridge_fdb_entry** %11, align 8
  %34 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %35 = icmp ne %struct.net_bridge_fdb_entry* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  br label %101

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %44 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %47 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %49 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %50 = load i32, i32* @RTM_NEWNEIGH, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @fdb_notify(%struct.net_bridge* %48, %struct.net_bridge_fdb_entry* %49, i32 %50, i32 %51)
  br label %100

53:                                               ; preds = %5
  %54 = load i8*, i8** @jiffies, align 8
  %55 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %56 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %58 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %57, i32 0, i32 3
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %58, align 8
  %60 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %61 = icmp ne %struct.net_bridge_port* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %64 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %65 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %64, i32 0, i32 3
  store %struct.net_bridge_port* %63, %struct.net_bridge_port** %65, align 8
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %68 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i8*, i8** @jiffies, align 8
  %73 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %74 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %84

75:                                               ; preds = %66
  %76 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %77 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %82 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %89 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %95 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %96 = load i32, i32* @RTM_NEWNEIGH, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @fdb_notify(%struct.net_bridge* %94, %struct.net_bridge_fdb_entry* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %45
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %103 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock_bh(i32* %103)
  %105 = load i32, i32* %13, align 4
  ret i32 %105
}

declare dso_local i32 @trace_br_fdb_external_learn_add(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i8*, i32) #1

declare dso_local %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32, i32) #1

declare dso_local i32 @fdb_notify(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
