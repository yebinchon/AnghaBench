; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcpbpf_kern.c_update_event_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcpbpf_kern.c_update_event_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpbpf_globals = type { i32, i32 }

@global_map = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_event_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_event_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpbpf_globals, align 4
  %5 = alloca %struct.tcpbpf_globals*, align 8
  %6 = alloca %struct.tcpbpf_globals, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = call %struct.tcpbpf_globals* @bpf_map_lookup_elem(i32* @global_map, i32* %3)
  store %struct.tcpbpf_globals* %7, %struct.tcpbpf_globals** %5, align 8
  %8 = load %struct.tcpbpf_globals*, %struct.tcpbpf_globals** %5, align 8
  %9 = icmp eq %struct.tcpbpf_globals* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = bitcast %struct.tcpbpf_globals* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 1, %12
  %14 = getelementptr inbounds %struct.tcpbpf_globals, %struct.tcpbpf_globals* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @BPF_ANY, align 4
  %18 = call i32 @bpf_map_update_elem(i32* @global_map, i32* %3, %struct.tcpbpf_globals* %6, i32 %17)
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.tcpbpf_globals*, %struct.tcpbpf_globals** %5, align 8
  %21 = bitcast %struct.tcpbpf_globals* %4 to i8*
  %22 = bitcast %struct.tcpbpf_globals* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 1, %23
  %25 = getelementptr inbounds %struct.tcpbpf_globals, %struct.tcpbpf_globals* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @BPF_ANY, align 4
  %29 = call i32 @bpf_map_update_elem(i32* @global_map, i32* %3, %struct.tcpbpf_globals* %4, i32 %28)
  br label %30

30:                                               ; preds = %19, %10
  ret void
}

declare dso_local %struct.tcpbpf_globals* @bpf_map_lookup_elem(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bpf_map_update_elem(i32*, i32*, %struct.tcpbpf_globals*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
