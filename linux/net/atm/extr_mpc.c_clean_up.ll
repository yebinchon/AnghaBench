; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_clean_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_clean_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mpoa_client = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }

@SND_EGRESS_PURGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cache_id %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*, i32)* @clean_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_up(%struct.k_message* %0, %struct.mpoa_client* %1, i32 %2) #0 {
  %4 = alloca %struct.k_message*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.k_message* %0, %struct.k_message** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @SND_EGRESS_PURGE, align 4
  %9 = load %struct.k_message*, %struct.k_message** %4, align 8
  %10 = getelementptr inbounds %struct.k_message, %struct.k_message* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %12 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %11, i32 0, i32 0
  %13 = call i32 @read_lock_irq(i32* %12)
  %14 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %15 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  br label %17

17:                                               ; preds = %20, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.k_message*, %struct.k_message** %4, align 8
  %22 = getelementptr inbounds %struct.k_message, %struct.k_message* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = bitcast %struct.TYPE_5__* %23 to i8*
  %27 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %27, i64 4, i1 false)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.k_message*, %struct.k_message** %4, align 8
  %34 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %35 = call i32 @msg_to_mpoad(%struct.k_message* %33, %struct.mpoa_client* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %7, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %41 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %40, i32 0, i32 0
  %42 = call i32 @read_unlock_irq(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.k_message*, %struct.k_message** %4, align 8
  %45 = getelementptr inbounds %struct.k_message, %struct.k_message* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.k_message*, %struct.k_message** %4, align 8
  %47 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %48 = call i32 @msg_to_mpoad(%struct.k_message* %46, %struct.mpoa_client* %47)
  ret void
}

declare dso_local i32 @read_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
