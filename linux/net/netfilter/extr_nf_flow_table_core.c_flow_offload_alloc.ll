; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { i32 }
%struct.nf_conn = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nf_flow_route = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.flow_offload_entry = type { %struct.nf_conn*, %struct.flow_offload }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_DIR_ORIGINAL = common dso_local global i64 0, align 8
@FLOW_OFFLOAD_DIR_REPLY = common dso_local global i64 0, align 8
@IPS_SRC_NAT = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_SNAT = common dso_local global i32 0, align 4
@IPS_DST_NAT = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_DNAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flow_offload* @flow_offload_alloc(%struct.nf_conn* %0, %struct.nf_flow_route* %1) #0 {
  %3 = alloca %struct.flow_offload*, align 8
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.nf_flow_route*, align 8
  %6 = alloca %struct.flow_offload_entry*, align 8
  %7 = alloca %struct.flow_offload*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %4, align 8
  store %struct.nf_flow_route* %1, %struct.nf_flow_route** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %9 = call i64 @nf_ct_is_dying(%struct.nf_conn* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc_not_zero(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ true, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.flow_offload* null, %struct.flow_offload** %3, align 8
  br label %110

24:                                               ; preds = %18
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.flow_offload_entry* @kzalloc(i32 16, i32 %25)
  store %struct.flow_offload_entry* %26, %struct.flow_offload_entry** %6, align 8
  %27 = load %struct.flow_offload_entry*, %struct.flow_offload_entry** %6, align 8
  %28 = icmp ne %struct.flow_offload_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %107

30:                                               ; preds = %24
  %31 = load %struct.flow_offload_entry*, %struct.flow_offload_entry** %6, align 8
  %32 = getelementptr inbounds %struct.flow_offload_entry, %struct.flow_offload_entry* %31, i32 0, i32 1
  store %struct.flow_offload* %32, %struct.flow_offload** %7, align 8
  %33 = load %struct.nf_flow_route*, %struct.nf_flow_route** %5, align 8
  %34 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @FLOW_OFFLOAD_DIR_ORIGINAL, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dst_hold_safe(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %104

43:                                               ; preds = %30
  %44 = load %struct.nf_flow_route*, %struct.nf_flow_route** %5, align 8
  %45 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @FLOW_OFFLOAD_DIR_REPLY, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dst_hold_safe(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %95

54:                                               ; preds = %43
  %55 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %56 = load %struct.flow_offload_entry*, %struct.flow_offload_entry** %6, align 8
  %57 = getelementptr inbounds %struct.flow_offload_entry, %struct.flow_offload_entry* %56, i32 0, i32 0
  store %struct.nf_conn* %55, %struct.nf_conn** %57, align 8
  %58 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %59 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %60 = load %struct.nf_flow_route*, %struct.nf_flow_route** %5, align 8
  %61 = load i64, i64* @FLOW_OFFLOAD_DIR_ORIGINAL, align 8
  %62 = call i32 @flow_offload_fill_dir(%struct.flow_offload* %58, %struct.nf_conn* %59, %struct.nf_flow_route* %60, i64 %61)
  %63 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %64 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %65 = load %struct.nf_flow_route*, %struct.nf_flow_route** %5, align 8
  %66 = load i64, i64* @FLOW_OFFLOAD_DIR_REPLY, align 8
  %67 = call i32 @flow_offload_fill_dir(%struct.flow_offload* %63, %struct.nf_conn* %64, %struct.nf_flow_route* %65, i64 %66)
  %68 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %69 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IPS_SRC_NAT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %54
  %75 = load i32, i32* @FLOW_OFFLOAD_SNAT, align 4
  %76 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %77 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %54
  %81 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %82 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IPS_DST_NAT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @FLOW_OFFLOAD_DNAT, align 4
  %89 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %90 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  store %struct.flow_offload* %94, %struct.flow_offload** %3, align 8
  br label %110

95:                                               ; preds = %53
  %96 = load %struct.nf_flow_route*, %struct.nf_flow_route** %5, align 8
  %97 = getelementptr inbounds %struct.nf_flow_route, %struct.nf_flow_route* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @FLOW_OFFLOAD_DIR_ORIGINAL, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dst_release(i32 %102)
  br label %104

104:                                              ; preds = %95, %42
  %105 = load %struct.flow_offload_entry*, %struct.flow_offload_entry** %6, align 8
  %106 = call i32 @kfree(%struct.flow_offload_entry* %105)
  br label %107

107:                                              ; preds = %104, %29
  %108 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  %109 = call i32 @nf_ct_put(%struct.nf_conn* %108)
  store %struct.flow_offload* null, %struct.flow_offload** %3, align 8
  br label %110

110:                                              ; preds = %107, %93, %23
  %111 = load %struct.flow_offload*, %struct.flow_offload** %3, align 8
  ret %struct.flow_offload* %111
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nf_ct_is_dying(%struct.nf_conn*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local %struct.flow_offload_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @dst_hold_safe(i32) #1

declare dso_local i32 @flow_offload_fill_dir(%struct.flow_offload*, %struct.nf_conn*, %struct.nf_flow_route*, i64) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @kfree(%struct.flow_offload_entry*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
