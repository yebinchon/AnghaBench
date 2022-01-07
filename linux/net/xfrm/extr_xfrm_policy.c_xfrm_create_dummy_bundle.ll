; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_create_dummy_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_create_dummy_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.dst_entry*, %struct.dst_entry*, %struct.TYPE_4__ }
%struct.dst_entry = type { i32, %struct.net_device*, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.dst_entry }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfrm_flo = type { i32, %struct.dst_entry* }
%struct.flowi = type { i32 }

@XFRM_LOOKUP_QUEUE = common dso_local global i32 0, align 4
@DST_OBSOLETE_FORCE_CHK = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@DST_XFRM_QUEUE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@xdst_queue_output = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_dst* (%struct.net*, %struct.xfrm_flo*, %struct.flowi*, i32, i32)* @xfrm_create_dummy_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_dst* @xfrm_create_dummy_bundle(%struct.net* %0, %struct.xfrm_flo* %1, %struct.flowi* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfrm_dst*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xfrm_flo*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca %struct.dst_entry*, align 8
  %16 = alloca %struct.xfrm_dst*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.xfrm_flo* %1, %struct.xfrm_flo** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.xfrm_dst* @xfrm_alloc_dst(%struct.net* %17, i32 %18)
  store %struct.xfrm_dst* %19, %struct.xfrm_dst** %16, align 8
  %20 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %21 = call i64 @IS_ERR(%struct.xfrm_dst* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  store %struct.xfrm_dst* %24, %struct.xfrm_dst** %6, align 8
  br label %113

25:                                               ; preds = %5
  %26 = load %struct.xfrm_flo*, %struct.xfrm_flo** %8, align 8
  %27 = getelementptr inbounds %struct.xfrm_flo, %struct.xfrm_flo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XFRM_LOOKUP_QUEUE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %32, %25
  %42 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  store %struct.xfrm_dst* %42, %struct.xfrm_dst** %6, align 8
  br label %113

43:                                               ; preds = %38
  %44 = load %struct.xfrm_flo*, %struct.xfrm_flo** %8, align 8
  %45 = getelementptr inbounds %struct.xfrm_flo, %struct.xfrm_flo* %44, i32 0, i32 1
  %46 = load %struct.dst_entry*, %struct.dst_entry** %45, align 8
  store %struct.dst_entry* %46, %struct.dst_entry** %14, align 8
  %47 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %48 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.dst_entry* %49, %struct.dst_entry** %15, align 8
  %50 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %51 = call i32 @dst_hold(%struct.dst_entry* %50)
  %52 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %53 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %54 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %53, i32 0, i32 1
  store %struct.dst_entry* %52, %struct.dst_entry** %54, align 8
  %55 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %56 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %57 = call i32 @dst_copy_metrics(%struct.dst_entry* %55, %struct.dst_entry* %56)
  %58 = load i32, i32* @DST_OBSOLETE_FORCE_CHK, align 4
  %59 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %60 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @DST_HOST, align 4
  %62 = load i32, i32* @DST_XFRM_QUEUE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %65 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %70 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @dst_discard, align 4
  %72 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %73 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @xdst_queue_output, align 4
  %75 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %76 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %78 = call i32 @dst_hold(%struct.dst_entry* %77)
  %79 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %80 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %81 = call i32 @xfrm_dst_set_child(%struct.xfrm_dst* %79, %struct.dst_entry* %80)
  %82 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %83 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %84 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %83, i32 0, i32 0
  store %struct.dst_entry* %82, %struct.dst_entry** %84, align 8
  %85 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %86 = bitcast %struct.dst_entry* %85 to %struct.xfrm_dst*
  %87 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %88 = call i32 @xfrm_init_path(%struct.xfrm_dst* %86, %struct.dst_entry* %87, i32 0)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %92 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %91, i32 0, i32 1
  %93 = load %struct.net_device*, %struct.net_device** %92, align 8
  store %struct.net_device* %93, %struct.net_device** %13, align 8
  %94 = load %struct.net_device*, %struct.net_device** %13, align 8
  %95 = icmp ne %struct.net_device* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %43
  br label %108

97:                                               ; preds = %43
  %98 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %99 = load %struct.net_device*, %struct.net_device** %13, align 8
  %100 = load %struct.flowi*, %struct.flowi** %9, align 8
  %101 = call i32 @xfrm_fill_dst(%struct.xfrm_dst* %98, %struct.net_device* %99, %struct.flowi* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %108

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %108, %105
  %107 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  store %struct.xfrm_dst* %107, %struct.xfrm_dst** %6, align 8
  br label %113

108:                                              ; preds = %104, %96
  %109 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %110 = call i32 @dst_release(%struct.dst_entry* %109)
  %111 = load i32, i32* %12, align 4
  %112 = call %struct.xfrm_dst* @ERR_PTR(i32 %111)
  store %struct.xfrm_dst* %112, %struct.xfrm_dst** %16, align 8
  br label %106

113:                                              ; preds = %106, %41, %23
  %114 = load %struct.xfrm_dst*, %struct.xfrm_dst** %6, align 8
  ret %struct.xfrm_dst* %114
}

declare dso_local %struct.xfrm_dst* @xfrm_alloc_dst(%struct.net*, i32) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_dst*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i32 @dst_copy_metrics(%struct.dst_entry*, %struct.dst_entry*) #1

declare dso_local i32 @xfrm_dst_set_child(%struct.xfrm_dst*, %struct.dst_entry*) #1

declare dso_local i32 @xfrm_init_path(%struct.xfrm_dst*, %struct.dst_entry*, i32) #1

declare dso_local i32 @xfrm_fill_dst(%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.xfrm_dst* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
