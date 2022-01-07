; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_drop_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_drop_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.config_item = type { i32 }
%struct.o2nm_node = type { i64, i32, i32, i64 }
%struct.o2nm_cluster = type { i64, i32, i32, %struct.o2nm_node**, i32, i64 }

@O2NM_INVALID_NODE_NUM = common dso_local global i64 0, align 8
@ML_CLUSTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"o2nm: Unregistered node %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @o2nm_node_group_drop_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2nm_node_group_drop_item(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca %struct.o2nm_cluster*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %7)
  store %struct.o2nm_node* %8, %struct.o2nm_node** %5, align 8
  %9 = load %struct.config_group*, %struct.config_group** %3, align 8
  %10 = getelementptr inbounds %struct.config_group, %struct.config_group* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.o2nm_cluster* @to_o2nm_cluster(i32 %12)
  store %struct.o2nm_cluster* %13, %struct.o2nm_cluster** %6, align 8
  %14 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %15 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %14, i32 0, i32 3
  %16 = load %struct.o2nm_node**, %struct.o2nm_node*** %15, align 8
  %17 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %18 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %16, i64 %19
  %21 = load %struct.o2nm_node*, %struct.o2nm_node** %20, align 8
  %22 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %23 = icmp eq %struct.o2nm_node* %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %26 = call i32 @o2net_disconnect_node(%struct.o2nm_node* %25)
  %27 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %28 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %33 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %36 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %41 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* @O2NM_INVALID_NODE_NUM, align 8
  %43 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %44 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %46 = call i32 @o2net_stop_listening(%struct.o2nm_node* %45)
  br label %47

47:                                               ; preds = %39, %31, %24
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %50 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %49, i32 0, i32 1
  %51 = call i32 @write_lock(i32* %50)
  %52 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %53 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %58 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %57, i32 0, i32 2
  %59 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %60 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %59, i32 0, i32 4
  %61 = call i32 @rb_erase(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %64 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %63, i32 0, i32 3
  %65 = load %struct.o2nm_node**, %struct.o2nm_node*** %64, align 8
  %66 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %67 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %65, i64 %68
  %70 = load %struct.o2nm_node*, %struct.o2nm_node** %69, align 8
  %71 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %72 = icmp eq %struct.o2nm_node* %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %75 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %74, i32 0, i32 3
  %76 = load %struct.o2nm_node**, %struct.o2nm_node*** %75, align 8
  %77 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %78 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %76, i64 %79
  store %struct.o2nm_node* null, %struct.o2nm_node** %80, align 8
  %81 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %82 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %85 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clear_bit(i64 %83, i32 %86)
  br label %88

88:                                               ; preds = %73, %62
  %89 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %90 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %89, i32 0, i32 1
  %91 = call i32 @write_unlock(i32* %90)
  %92 = load i32, i32* @ML_CLUSTER, align 4
  %93 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %94 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %93, i32 0, i32 1
  %95 = call i32 @config_item_name(i32* %94)
  %96 = call i32 @mlog(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.config_item*, %struct.config_item** %4, align 8
  %98 = call i32 @config_item_put(%struct.config_item* %97)
  ret void
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster(i32) #1

declare dso_local i32 @o2net_disconnect_node(%struct.o2nm_node*) #1

declare dso_local i32 @o2net_stop_listening(%struct.o2nm_node*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
