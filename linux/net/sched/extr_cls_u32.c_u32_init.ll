; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common*, i32, i32 }
%struct.tc_u_common = type { i32, i32, i32, i32, i8* }
%struct.tc_u_hnode = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*)* @u32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_init(%struct.tcf_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tc_u_hnode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_u_common*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  %7 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %8 = call i8* @tc_u_common_ptr(%struct.tcf_proto* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.tc_u_common* @tc_u_common_find(i8* %9)
  store %struct.tc_u_common* %10, %struct.tc_u_common** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 24, i32 %11)
  %13 = bitcast i8* %12 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %13, %struct.tc_u_hnode** %4, align 8
  %14 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %15 = icmp eq %struct.tc_u_hnode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOBUFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %102

19:                                               ; preds = %1
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %21 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %25 = icmp ne %struct.tc_u_common* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %28 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %29 = call i32 @gen_new_htid(%struct.tc_u_common* %27, %struct.tc_u_hnode* %28)
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ -2147483648, %30 ]
  %33 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %34 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %36 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %39 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %41 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %43 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %42, i32 0, i32 4
  %44 = call i32 @idr_init(i32* %43)
  %45 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %46 = icmp eq %struct.tc_u_common* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %31
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kzalloc(i32 24, i32 %48)
  %50 = bitcast i8* %49 to %struct.tc_u_common*
  store %struct.tc_u_common* %50, %struct.tc_u_common** %6, align 8
  %51 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %52 = icmp eq %struct.tc_u_common* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %55 = call i32 @kfree(%struct.tc_u_hnode* %54)
  %56 = load i32, i32* @ENOBUFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %102

58:                                               ; preds = %47
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %61 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %63 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %62, i32 0, i32 2
  %64 = call i32 @INIT_HLIST_NODE(i32* %63)
  %65 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %66 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %65, i32 0, i32 3
  %67 = call i32 @idr_init(i32* %66)
  %68 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %69 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %68, i32 0, i32 2
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @tc_u_hash(i8* %70)
  %72 = call i32 @hlist_add_head(i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %58, %31
  %74 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %75 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %79 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %82 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @RCU_INIT_POINTER(i32 %80, i32 %83)
  %85 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %86 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %89 = call i32 @rcu_assign_pointer(i32 %87, %struct.tc_u_hnode* %88)
  %90 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %91 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %95 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %98 = call i32 @rcu_assign_pointer(i32 %96, %struct.tc_u_hnode* %97)
  %99 = load %struct.tc_u_common*, %struct.tc_u_common** %6, align 8
  %100 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %101 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %100, i32 0, i32 0
  store %struct.tc_u_common* %99, %struct.tc_u_common** %101, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %73, %53, %16
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i8* @tc_u_common_ptr(%struct.tcf_proto*) #1

declare dso_local %struct.tc_u_common* @tc_u_common_find(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @gen_new_htid(%struct.tc_u_common*, %struct.tc_u_hnode*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @kfree(%struct.tc_u_hnode*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @tc_u_hash(i8*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tc_u_hnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
