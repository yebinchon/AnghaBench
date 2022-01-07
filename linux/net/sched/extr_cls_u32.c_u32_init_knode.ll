; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_init_knode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_init_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tc_u_knode = type { i32, %struct.tc_u32_sel, i32, i32, i32, i32, %struct.tc_u_hnode*, i32, i32, i32, i32, %struct.tc_u_hnode*, i32, %struct.tc_u_hnode* }
%struct.tc_u32_sel = type { i32 }
%struct.tc_u_hnode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@TCA_U32_ACT = common dso_local global i32 0, align 4
@TCA_U32_POLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_u_knode* (%struct.net*, %struct.tcf_proto*, %struct.tc_u_knode*)* @u32_init_knode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_u_knode* @u32_init_knode(%struct.net* %0, %struct.tcf_proto* %1, %struct.tc_u_knode* %2) #0 {
  %4 = alloca %struct.tc_u_knode*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tc_u_knode*, align 8
  %8 = alloca %struct.tc_u_hnode*, align 8
  %9 = alloca %struct.tc_u32_sel*, align 8
  %10 = alloca %struct.tc_u_knode*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tc_u_knode* %2, %struct.tc_u_knode** %7, align 8
  %11 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %12 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %11, i32 0, i32 6
  %13 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %14 = call %struct.tc_u_hnode* @rtnl_dereference(%struct.tc_u_hnode* %13)
  store %struct.tc_u_hnode* %14, %struct.tc_u_hnode** %8, align 8
  %15 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %16 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %15, i32 0, i32 1
  store %struct.tc_u32_sel* %16, %struct.tc_u32_sel** %9, align 8
  %17 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %9, align 8
  %18 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 72, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tc_u_knode* @kzalloc(i32 %23, i32 %24)
  store %struct.tc_u_knode* %25, %struct.tc_u_knode** %10, align 8
  %26 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %27 = icmp ne %struct.tc_u_knode* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store %struct.tc_u_knode* null, %struct.tc_u_knode** %4, align 8
  br label %104

29:                                               ; preds = %3
  %30 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %31 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %30, i32 0, i32 13
  %32 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %31, align 8
  %33 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %34 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %33, i32 0, i32 13
  %35 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %34, align 8
  %36 = call i32 @RCU_INIT_POINTER(%struct.tc_u_hnode* %32, %struct.tc_u_hnode* %35)
  %37 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %38 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %41 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %43 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %42, i32 0, i32 11
  %44 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %43, align 8
  %45 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %46 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %45, i32 0, i32 11
  %47 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %46, align 8
  %48 = call i32 @RCU_INIT_POINTER(%struct.tc_u_hnode* %44, %struct.tc_u_hnode* %47)
  %49 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %50 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %53 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %55 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %58 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %60 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %63 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %65 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %68 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %70 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %69, i32 0, i32 6
  %71 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %70, align 8
  %72 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %73 = call i32 @RCU_INIT_POINTER(%struct.tc_u_hnode* %71, %struct.tc_u_hnode* %72)
  %74 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %75 = icmp ne %struct.tc_u_hnode* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %29
  %77 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %78 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %29
  %82 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %83 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %82, i32 0, i32 1
  %84 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %9, align 8
  %85 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %9, align 8
  %86 = load i32, i32* @keys, align 4
  %87 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %9, align 8
  %88 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @struct_size(%struct.tc_u32_sel* %85, i32 %86, i32 %89)
  %91 = call i32 @memcpy(%struct.tc_u32_sel* %83, %struct.tc_u32_sel* %84, i32 %90)
  %92 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %93 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %92, i32 0, i32 0
  %94 = load %struct.net*, %struct.net** %5, align 8
  %95 = load i32, i32* @TCA_U32_ACT, align 4
  %96 = load i32, i32* @TCA_U32_POLICE, align 4
  %97 = call i64 @tcf_exts_init(i32* %93, %struct.net* %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  %101 = call i32 @kfree(%struct.tc_u_knode* %100)
  store %struct.tc_u_knode* null, %struct.tc_u_knode** %4, align 8
  br label %104

102:                                              ; preds = %81
  %103 = load %struct.tc_u_knode*, %struct.tc_u_knode** %10, align 8
  store %struct.tc_u_knode* %103, %struct.tc_u_knode** %4, align 8
  br label %104

104:                                              ; preds = %102, %99, %28
  %105 = load %struct.tc_u_knode*, %struct.tc_u_knode** %4, align 8
  ret %struct.tc_u_knode* %105
}

declare dso_local %struct.tc_u_hnode* @rtnl_dereference(%struct.tc_u_hnode*) #1

declare dso_local %struct.tc_u_knode* @kzalloc(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.tc_u_hnode*, %struct.tc_u_hnode*) #1

declare dso_local i32 @memcpy(%struct.tc_u32_sel*, %struct.tc_u32_sel*, i32) #1

declare dso_local i32 @struct_size(%struct.tc_u32_sel*, i32, i32) #1

declare dso_local i64 @tcf_exts_init(i32*, %struct.net*, i32, i32) #1

declare dso_local i32 @kfree(%struct.tc_u_knode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
