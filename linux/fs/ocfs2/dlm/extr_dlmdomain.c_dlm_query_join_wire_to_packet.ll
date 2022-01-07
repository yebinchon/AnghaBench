; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_wire_to_packet.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_wire_to_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_query_join_packet = type { i32 }
%union.dlm_query_join_response = type { %struct.dlm_query_join_packet }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dlm_query_join_packet*)* @dlm_query_join_wire_to_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_query_join_wire_to_packet(i32 %0, %struct.dlm_query_join_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_query_join_packet*, align 8
  %5 = alloca %union.dlm_query_join_response, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dlm_query_join_packet* %1, %struct.dlm_query_join_packet** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpu_to_be32(i32 %6)
  %8 = bitcast %union.dlm_query_join_response* %5 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load %struct.dlm_query_join_packet*, %struct.dlm_query_join_packet** %4, align 8
  %10 = bitcast %union.dlm_query_join_response* %5 to %struct.dlm_query_join_packet*
  %11 = bitcast %struct.dlm_query_join_packet* %9 to i8*
  %12 = bitcast %struct.dlm_query_join_packet* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
