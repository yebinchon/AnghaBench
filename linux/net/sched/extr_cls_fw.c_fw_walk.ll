; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, %struct.fw_filter*, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque
%struct.fw_filter = type opaque
%struct.fw_head = type { i32* }
%struct.fw_filter.1 = type { i32 }

@HTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @fw_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_filter.1*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @rtnl_dereference(i32 %12)
  %14 = bitcast i8* %13 to %struct.fw_head*
  store %struct.fw_head* %14, %struct.fw_head** %7, align 8
  %15 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %16 = icmp eq %struct.fw_head* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %19 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %22 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %86

26:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @HTSIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %27
  %32 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %33 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @rtnl_dereference(i32 %38)
  %40 = bitcast i8* %39 to %struct.fw_filter.1*
  store %struct.fw_filter.1* %40, %struct.fw_filter.1** %9, align 8
  br label %41

41:                                               ; preds = %76, %31
  %42 = load %struct.fw_filter.1*, %struct.fw_filter.1** %9, align 8
  %43 = icmp ne %struct.fw_filter.1* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %46 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %49 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %54 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %76

57:                                               ; preds = %44
  %58 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %59 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %58, i32 0, i32 3
  %60 = load i64 (%struct.tcf_proto.0*, %struct.fw_filter*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.fw_filter*, %struct.tcf_walker*)** %59, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %62 = bitcast %struct.tcf_proto* %61 to %struct.tcf_proto.0*
  %63 = load %struct.fw_filter.1*, %struct.fw_filter.1** %9, align 8
  %64 = bitcast %struct.fw_filter.1* %63 to %struct.fw_filter*
  %65 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %66 = call i64 %60(%struct.tcf_proto.0* %62, %struct.fw_filter* %64, %struct.tcf_walker* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %70 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %86

71:                                               ; preds = %57
  %72 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %73 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %71, %52
  %77 = load %struct.fw_filter.1*, %struct.fw_filter.1** %9, align 8
  %78 = getelementptr inbounds %struct.fw_filter.1, %struct.fw_filter.1* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @rtnl_dereference(i32 %79)
  %81 = bitcast i8* %80 to %struct.fw_filter.1*
  store %struct.fw_filter.1* %81, %struct.fw_filter.1** %9, align 8
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %27

86:                                               ; preds = %25, %68, %27
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
