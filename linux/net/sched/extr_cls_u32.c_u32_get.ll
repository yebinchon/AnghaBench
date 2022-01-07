; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32, %struct.tc_u_common* }
%struct.tc_u_common = type { i32 }
%struct.tc_u_hnode = type opaque

@TC_U32_ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tcf_proto*, i32)* @u32_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @u32_get(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_u_hnode*, align 8
  %7 = alloca %struct.tc_u_common*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 1
  %10 = load %struct.tc_u_common*, %struct.tc_u_common** %9, align 8
  store %struct.tc_u_common* %10, %struct.tc_u_common** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TC_U32_HTID(i32 %11)
  %13 = load i64, i64* @TC_U32_ROOT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @rtnl_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %20, %struct.tc_u_hnode** %6, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TC_U32_HTID(i32 %23)
  %25 = call i8* @u32_lookup_ht(%struct.tc_u_common* %22, i64 %24)
  %26 = bitcast i8* %25 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %26, %struct.tc_u_hnode** %6, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %29 = icmp ne %struct.tc_u_hnode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @TC_U32_KEY(i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %37 = bitcast %struct.tc_u_hnode* %36 to i8*
  store i8* %37, i8** %3, align 8
  br label %43

38:                                               ; preds = %31
  %39 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %40 = bitcast %struct.tc_u_hnode* %39 to i8*
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @u32_lookup_key(i8* %40, i32 %41)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %38, %35, %30
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i64 @TC_U32_HTID(i32) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i8* @u32_lookup_ht(%struct.tc_u_common*, i64) #1

declare dso_local i64 @TC_U32_KEY(i32) #1

declare dso_local i8* @u32_lookup_key(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
