; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_fill_dir.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_fill_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.flow_offload_tuple }
%struct.flow_offload_tuple = type { i32, i32, %struct.dst_entry*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dst_entry = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.nf_conn = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_14__, %struct.TYPE_23__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_20__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.nf_flow_route = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.dst_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_offload*, %struct.nf_conn*, %struct.nf_flow_route*, i32)* @flow_offload_fill_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_offload_fill_dir(%struct.flow_offload* %0, %struct.nf_conn* %1, %struct.nf_flow_route* %2, i32 %3) #0 {
  %5 = alloca %struct.flow_offload*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.nf_flow_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flow_offload_tuple*, align 8
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.dst_entry*, align 8
  store %struct.flow_offload* %0, %struct.flow_offload** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store %struct.nf_flow_route* %2, %struct.nf_flow_route** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %14 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store %struct.flow_offload_tuple* %19, %struct.flow_offload_tuple** %9, align 8
  %20 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %26, %struct.nf_conntrack_tuple** %10, align 8
  %27 = load %struct.nf_flow_route*, %struct.nf_flow_route** %7, align 8
  %28 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.dst_entry*, %struct.dst_entry** %36, align 8
  store %struct.dst_entry* %37, %struct.dst_entry** %11, align 8
  %38 = load %struct.nf_flow_route*, %struct.nf_flow_route** %7, align 8
  %39 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.dst_entry*, %struct.dst_entry** %44, align 8
  store %struct.dst_entry* %45, %struct.dst_entry** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %48 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %50 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %91 [
    i32 129, label %53
    i32 128, label %72
  ]

53:                                               ; preds = %4
  %54 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %55 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %60 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 8
  %61 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %67 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %69 = call i32 @ip_dst_mtu_maybe_forward(%struct.dst_entry* %68, i32 1)
  %70 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %71 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  br label %91

72:                                               ; preds = %4
  %73 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %74 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %79 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %81 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %86 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %88 = call i32 @ip6_dst_mtu_forward(%struct.dst_entry* %87)
  %89 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %90 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %4, %72, %53
  %92 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %93 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %97 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %99 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %103 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %105 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %111 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %113 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %119 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %121 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %126 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %128 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %9, align 8
  %129 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %128, i32 0, i32 2
  store %struct.dst_entry* %127, %struct.dst_entry** %129, align 8
  ret void
}

declare dso_local i32 @ip_dst_mtu_maybe_forward(%struct.dst_entry*, i32) #1

declare dso_local i32 @ip6_dst_mtu_forward(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
