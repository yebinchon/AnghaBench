; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_requeue_pi_wake_futex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_requeue_pi_wake_futex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { i32, i32*, i32*, %union.futex_key }
%union.futex_key = type { i32 }
%struct.futex_hash_bucket = type { i32 }

@TASK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_q*, %union.futex_key*, %struct.futex_hash_bucket*)* @requeue_pi_wake_futex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requeue_pi_wake_futex(%struct.futex_q* %0, %union.futex_key* %1, %struct.futex_hash_bucket* %2) #0 {
  %4 = alloca %struct.futex_q*, align 8
  %5 = alloca %union.futex_key*, align 8
  %6 = alloca %struct.futex_hash_bucket*, align 8
  store %struct.futex_q* %0, %struct.futex_q** %4, align 8
  store %union.futex_key* %1, %union.futex_key** %5, align 8
  store %struct.futex_hash_bucket* %2, %struct.futex_hash_bucket** %6, align 8
  %7 = load %union.futex_key*, %union.futex_key** %5, align 8
  %8 = call i32 @get_futex_key_refs(%union.futex_key* %7)
  %9 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %10 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %9, i32 0, i32 3
  %11 = load %union.futex_key*, %union.futex_key** %5, align 8
  %12 = bitcast %union.futex_key* %10 to i8*
  %13 = bitcast %union.futex_key* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %15 = call i32 @__unqueue_futex(%struct.futex_q* %14)
  %16 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %17 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %24 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %6, align 8
  %26 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %25, i32 0, i32 0
  %27 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %28 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.futex_q*, %struct.futex_q** %4, align 8
  %30 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TASK_NORMAL, align 4
  %33 = call i32 @wake_up_state(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @get_futex_key_refs(%union.futex_key*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__unqueue_futex(%struct.futex_q*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wake_up_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
