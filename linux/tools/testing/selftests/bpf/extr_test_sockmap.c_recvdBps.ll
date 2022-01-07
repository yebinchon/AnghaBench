; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_recvdBps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_recvdBps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_stats = type { float, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { float }
%struct.TYPE_3__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (<2 x float>, float)* @recvdBps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @recvdBps(<2 x float> %0, float %1) #0 {
  %3 = alloca %struct.msg_stats, align 4
  %4 = alloca { <2 x float>, float }, align 4
  %5 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %4, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %5, align 4
  %6 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %4, i32 0, i32 1
  store float %1, float* %6, align 4
  %7 = bitcast %struct.msg_stats* %3 to i8*
  %8 = bitcast { <2 x float>, float }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %3, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.msg_stats, %struct.msg_stats* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fsub float %13, %16
  %18 = fdiv float %10, %17
  ret float %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
