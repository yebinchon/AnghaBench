; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_address_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2nm_node = type { i32, i32, i32 }
%struct.o2nm_cluster = type { i32, i32 }
%struct.rb_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%3u.%3u.%3u.%3u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_ADDRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @o2nm_node_ipv4_address_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_node_ipv4_address_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_node*, align 8
  %9 = alloca %struct.o2nm_cluster*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rb_node**, align 8
  %13 = alloca %struct.rb_node*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.config_item*, %struct.config_item** %5, align 8
  %17 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %16)
  store %struct.o2nm_node* %17, %struct.o2nm_node** %8, align 8
  store i32 0, i32* %15, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %23 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %113

29:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ugt i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %113

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 8
  %51 = shl i32 %48, %50
  %52 = call i32 @be32_add_cpu(i32* %15, i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %30

56:                                               ; preds = %30
  %57 = call i32 (...) @o2nm_lock_subsystem()
  %58 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %59 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %58)
  store %struct.o2nm_cluster* %59, %struct.o2nm_cluster** %9, align 8
  %60 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %61 = icmp ne %struct.o2nm_cluster* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = call i32 (...) @o2nm_unlock_subsystem()
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %113

66:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  %67 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %68 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %67, i32 0, i32 0
  %69 = call i32 @write_lock(i32* %68)
  %70 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster* %70, i32 %71, %struct.rb_node*** %12, %struct.rb_node** %13)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EEXIST, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %98

77:                                               ; preds = %66
  %78 = load i32, i32* @O2NM_NODE_ATTR_ADDRESS, align 4
  %79 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %80 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %79, i32 0, i32 2
  %81 = call i64 @test_and_set_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %97

86:                                               ; preds = %77
  %87 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %88 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %87, i32 0, i32 1
  %89 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %90 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %91 = call i32 @rb_link_node(i32* %88, %struct.rb_node* %89, %struct.rb_node** %90)
  %92 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %93 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %92, i32 0, i32 1
  %94 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %95 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %94, i32 0, i32 1
  %96 = call i32 @rb_insert_color(i32* %93, i32* %95)
  br label %97

97:                                               ; preds = %86, %83
  br label %98

98:                                               ; preds = %97, %74
  %99 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %100 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %99, i32 0, i32 0
  %101 = call i32 @write_unlock(i32* %100)
  %102 = call i32 (...) @o2nm_unlock_subsystem()
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %113

107:                                              ; preds = %98
  %108 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %109 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %108, i32 0, i32 0
  %110 = call i32 @memcpy(i32* %109, i32* %15, i32 4)
  %111 = load i64, i64* %7, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %107, %105, %62, %41, %26
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @o2nm_lock_subsystem(...) #1

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i32 @o2nm_unlock_subsystem(...) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @o2nm_node_ip_tree_lookup(%struct.o2nm_cluster*, i32, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
