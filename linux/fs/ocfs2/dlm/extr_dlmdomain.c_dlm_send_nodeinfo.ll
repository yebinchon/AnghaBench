; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_send_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_query_nodeinfo = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.o2nm_node = type { i32, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Node %3d, %pI4:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Sending nodeinfo to node %d\0A\00", align 1
@DLM_QUERY_NODEINFO = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"node mismatch %d, node %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i64*)* @dlm_send_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_nodeinfo(%struct.dlm_ctxt* %0, i64* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.dlm_query_nodeinfo*, align 8
  %6 = alloca %struct.o2nm_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.dlm_query_nodeinfo* null, %struct.dlm_query_nodeinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = load i32, i32* @O2NM_MAX_NODES, align 4
  %13 = call i32 @find_next_bit(i64* %11, i32 %12, i32 0)
  %14 = load i32, i32* @O2NM_MAX_NODES, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %148

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dlm_query_nodeinfo* @kzalloc(i32 24, i32 %18)
  store %struct.dlm_query_nodeinfo* %19, %struct.dlm_query_nodeinfo** %5, align 8
  %20 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %21 = icmp ne %struct.dlm_query_nodeinfo* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %148

27:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %83, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @O2NM_MAX_NODES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.o2nm_node* @o2nm_get_node_by_num(i32 %33)
  store %struct.o2nm_node* %34, %struct.o2nm_node** %6, align 8
  %35 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %36 = icmp ne %struct.o2nm_node* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %83

38:                                               ; preds = %32
  %39 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %40 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %41, i32* %48, align 4
  %49 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %50 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %51, i32* %58, align 4
  %59 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %60 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %63 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %70 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %73 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %72, i32 0, i32 1
  %74 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %75 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %71, i32* %73, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %82 = call i32 @o2nm_node_put(%struct.o2nm_node* %81)
  br label %83

83:                                               ; preds = %38, %37
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %28

86:                                               ; preds = %28
  %87 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %88 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %91 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %94 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %96 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strlen(i32 %97)
  %99 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %100 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %102 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %105 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %108 = getelementptr inbounds %struct.dlm_query_nodeinfo, %struct.dlm_query_nodeinfo* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy(i32 %103, i32 %106, i32 %109)
  store i32 -1, i32* %10, align 4
  br label %111

111:                                              ; preds = %146, %125, %86
  %112 = load i64*, i64** %4, align 8
  %113 = load i32, i32* @O2NM_MAX_NODES, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i32 @find_next_bit(i64* %112, i32 %113, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @O2NM_MAX_NODES, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %122 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %111

126:                                              ; preds = %119
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @DLM_QUERY_NODEINFO, align 4
  %130 = load i32, i32* @DLM_MOD_KEY, align 4
  %131 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @o2net_send_message(i32 %129, i32 %130, %struct.dlm_query_nodeinfo* %131, i32 24, i32 %132, i32* %8)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %126
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @ML_ERROR, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (i32, i8*, i32, ...) @mlog(i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144)
  br label %147

146:                                              ; preds = %138
  br label %111

147:                                              ; preds = %141, %111
  br label %148

148:                                              ; preds = %147, %22, %16
  %149 = load %struct.dlm_query_nodeinfo*, %struct.dlm_query_nodeinfo** %5, align 8
  %150 = call i32 @kfree(%struct.dlm_query_nodeinfo* %149)
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local %struct.dlm_query_nodeinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_query_nodeinfo*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.dlm_query_nodeinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
