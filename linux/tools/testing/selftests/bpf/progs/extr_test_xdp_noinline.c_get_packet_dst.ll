; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_get_packet_dst.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_get_packet_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_definition = type { i32 }
%struct.packet_description = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32* }
%struct.vip_meta = type { i32, i32 }
%struct.real_pos_lru = type { i32, i32 }
%struct.lb_stats = type { i32, i32 }

@ch_rings = common dso_local global i32 0, align 4
@reals = common dso_local global i32 0, align 4
@stats = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.real_definition**, %struct.packet_description*, %struct.vip_meta*, i32, i8*)* @get_packet_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_packet_dst(%struct.real_definition** %0, %struct.packet_description* %1, %struct.vip_meta* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.real_definition**, align 8
  %8 = alloca %struct.packet_description*, align 8
  %9 = alloca %struct.vip_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.real_pos_lru, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.lb_stats*, align 8
  store %struct.real_definition** %0, %struct.real_definition*** %7, align 8
  store %struct.packet_description* %1, %struct.packet_description** %8, align 8
  store %struct.vip_meta* %2, %struct.vip_meta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = bitcast %struct.real_pos_lru* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.vip_meta*, %struct.vip_meta** %9, align 8
  %23 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.vip_meta*, %struct.vip_meta** %9, align 8
  %30 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %36 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %42 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %47 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %49, i32 0, i32 16)
  br label %51

51:                                               ; preds = %34, %28
  %52 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @get_packet_hash(%struct.packet_description* %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 897866167
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 793495227
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %140

61:                                               ; preds = %57, %51
  %62 = load %struct.vip_meta*, %struct.vip_meta** %9, align 8
  %63 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 2, %64
  %66 = load i32, i32* %15, align 4
  %67 = srem i32 %66, 2
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %16, align 4
  %69 = call i8* @bpf_map_lookup_elem(i32* @ch_rings, i32* %16)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %140

74:                                               ; preds = %61
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  %77 = call i8* @bpf_map_lookup_elem(i32* @reals, i32* %16)
  %78 = bitcast i8* %77 to %struct.real_definition*
  %79 = load %struct.real_definition**, %struct.real_definition*** %7, align 8
  store %struct.real_definition* %78, %struct.real_definition** %79, align 8
  %80 = load %struct.real_definition**, %struct.real_definition*** %7, align 8
  %81 = load %struct.real_definition*, %struct.real_definition** %80, align 8
  %82 = icmp ne %struct.real_definition* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %140

84:                                               ; preds = %74
  %85 = load %struct.vip_meta*, %struct.vip_meta** %9, align 8
  %86 = getelementptr inbounds %struct.vip_meta, %struct.vip_meta* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %139, label %90

90:                                               ; preds = %84
  store i32 514, i32* %18, align 4
  %91 = call i8* @bpf_map_lookup_elem(i32* @stats, i32* %18)
  %92 = bitcast i8* %91 to %struct.lb_stats*
  store %struct.lb_stats* %92, %struct.lb_stats** %19, align 8
  %93 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %94 = icmp ne %struct.lb_stats* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 1, i32* %6, align 4
  br label %140

96:                                               ; preds = %90
  %97 = call i32 (...) @bpf_ktime_get_ns()
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %100 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = ashr i32 %102, 32
  %104 = icmp sgt i32 %103, 16777215
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %107 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %110 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %122

111:                                              ; preds = %96
  %112 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %113 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.lb_stats*, %struct.lb_stats** %19, align 8
  %117 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 1, i32* %6, align 4
  br label %140

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %124 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IPPROTO_UDP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %17, align 4
  %131 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %12, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = load i32, i32* %16, align 4
  %134 = getelementptr inbounds %struct.real_pos_lru, %struct.real_pos_lru* %12, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = load %struct.packet_description*, %struct.packet_description** %8, align 8
  %137 = getelementptr inbounds %struct.packet_description, %struct.packet_description* %136, i32 0, i32 0
  %138 = call i32 @bpf_map_update_elem(i8* %135, %struct.TYPE_2__* %137, %struct.real_pos_lru* %12, i32 0)
  br label %139

139:                                              ; preds = %132, %84
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %120, %95, %83, %73, %60
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @get_packet_hash(%struct.packet_description*, i32) #2

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #2

declare dso_local i32 @bpf_ktime_get_ns(...) #2

declare dso_local i32 @bpf_map_update_elem(i8*, %struct.TYPE_2__*, %struct.real_pos_lru*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
