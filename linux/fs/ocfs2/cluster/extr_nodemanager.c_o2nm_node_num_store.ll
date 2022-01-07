; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_num_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_num_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2nm_node = type { i64, i32 }
%struct.o2nm_cluster = type { i32, i32, %struct.o2nm_node** }

@EINVAL = common dso_local global i32 0, align 4
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_ADDRESS = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_PORT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_NUM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @o2nm_node_num_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_node_num_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_node*, align 8
  %9 = alloca %struct.o2nm_cluster*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %13)
  store %struct.o2nm_node* %14, %struct.o2nm_node** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i8** %11, i32 0)
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %116

33:                                               ; preds = %25, %20
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @O2NM_MAX_NODES, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %116

40:                                               ; preds = %33
  %41 = load i32, i32* @O2NM_NODE_ATTR_ADDRESS, align 4
  %42 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %43 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @O2NM_NODE_ATTR_PORT, align 4
  %48 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %49 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %48, i32 0, i32 1
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %116

55:                                               ; preds = %46
  %56 = call i32 (...) @o2nm_lock_subsystem()
  %57 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %58 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %57)
  store %struct.o2nm_cluster* %58, %struct.o2nm_cluster** %9, align 8
  %59 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %60 = icmp ne %struct.o2nm_cluster* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = call i32 (...) @o2nm_unlock_subsystem()
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %116

65:                                               ; preds = %55
  %66 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %67 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %66, i32 0, i32 0
  %68 = call i32 @write_lock(i32* %67)
  %69 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %70 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %69, i32 0, i32 2
  %71 = load %struct.o2nm_node**, %struct.o2nm_node*** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %71, i64 %72
  %74 = load %struct.o2nm_node*, %struct.o2nm_node** %73, align 8
  %75 = icmp ne %struct.o2nm_node* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EEXIST, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %104

79:                                               ; preds = %65
  %80 = load i32, i32* @O2NM_NODE_ATTR_NUM, align 4
  %81 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %82 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %81, i32 0, i32 1
  %83 = call i64 @test_and_set_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %103

88:                                               ; preds = %79
  %89 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %90 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %91 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %90, i32 0, i32 2
  %92 = load %struct.o2nm_node**, %struct.o2nm_node*** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %92, i64 %93
  store %struct.o2nm_node* %89, %struct.o2nm_node** %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %97 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %100 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @set_bit(i64 %98, i32 %101)
  br label %103

103:                                              ; preds = %88, %85
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %106 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %105, i32 0, i32 0
  %107 = call i32 @write_unlock(i32* %106)
  %108 = call i32 (...) @o2nm_unlock_subsystem()
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %116

113:                                              ; preds = %104
  %114 = load i64, i64* %7, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %111, %61, %52, %37, %30
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @o2nm_lock_subsystem(...) #1

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i32 @o2nm_unlock_subsystem(...) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
