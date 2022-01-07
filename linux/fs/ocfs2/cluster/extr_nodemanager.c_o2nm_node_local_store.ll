; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_local_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_local_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2nm_node = type { i64, i64, i32 }
%struct.o2nm_cluster = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@O2NM_NODE_ATTR_ADDRESS = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_NUM = common dso_local global i32 0, align 4
@O2NM_NODE_ATTR_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@O2NM_INVALID_NODE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @o2nm_node_local_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2nm_node_local_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_node*, align 8
  %9 = alloca %struct.o2nm_cluster*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %13)
  store %struct.o2nm_node* %14, %struct.o2nm_node** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
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
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %148

33:                                               ; preds = %25, %20
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* @O2NM_NODE_ATTR_ADDRESS, align 4
  %41 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %42 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %41, i32 0, i32 2
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load i32, i32* @O2NM_NODE_ATTR_NUM, align 4
  %47 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %48 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %47, i32 0, i32 2
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @O2NM_NODE_ATTR_PORT, align 4
  %53 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %54 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %53, i32 0, i32 2
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51, %45, %33
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %4, align 8
  br label %148

60:                                               ; preds = %51
  %61 = call i32 (...) @o2nm_lock_subsystem()
  %62 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %63 = call %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node* %62)
  store %struct.o2nm_cluster* %63, %struct.o2nm_cluster** %9, align 8
  %64 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %65 = icmp ne %struct.o2nm_cluster* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %12, align 8
  br label %145

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %75 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %80 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %83 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i64, i64* @EBUSY, align 8
  %88 = sub i64 0, %87
  store i64 %88, i64* %12, align 8
  br label %145

89:                                               ; preds = %78, %72, %69
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %94 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %99 = call i64 @o2net_start_listening(%struct.o2nm_node* %98)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %145

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %92, %89
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %126, label %107

107:                                              ; preds = %104
  %108 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %109 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %114 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %117 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %122 = call i32 @o2net_stop_listening(%struct.o2nm_node* %121)
  %123 = load i64, i64* @O2NM_INVALID_NODE_NUM, align 8
  %124 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %125 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %112, %107, %104
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %129 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %131 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %126
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %137 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %139 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %9, align 8
  %142 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %134, %126
  %144 = load i64, i64* %7, align 8
  store i64 %144, i64* %12, align 8
  br label %145

145:                                              ; preds = %143, %102, %86, %66
  %146 = call i32 (...) @o2nm_unlock_subsystem()
  %147 = load i64, i64* %12, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %145, %57, %30
  %149 = load i64, i64* %4, align 8
  ret i64 %149
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @o2nm_lock_subsystem(...) #1

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster_from_node(%struct.o2nm_node*) #1

declare dso_local i64 @o2net_start_listening(%struct.o2nm_node*) #1

declare dso_local i32 @o2net_stop_listening(%struct.o2nm_node*) #1

declare dso_local i32 @o2nm_unlock_subsystem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
