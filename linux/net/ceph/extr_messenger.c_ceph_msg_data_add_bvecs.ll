; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_bvecs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_add_bvecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_bvec_iter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ceph_msg_data = type { %struct.ceph_bvec_iter, i32 }

@CEPH_MSG_DATA_BVECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_msg_data_add_bvecs(%struct.ceph_msg* %0, %struct.ceph_bvec_iter* %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_bvec_iter*, align 8
  %5 = alloca %struct.ceph_msg_data*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %3, align 8
  store %struct.ceph_bvec_iter* %1, %struct.ceph_bvec_iter** %4, align 8
  %6 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %7 = call %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg* %6)
  store %struct.ceph_msg_data* %7, %struct.ceph_msg_data** %5, align 8
  %8 = load i32, i32* @CEPH_MSG_DATA_BVECS, align 4
  %9 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ceph_msg_data*, %struct.ceph_msg_data** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_msg_data, %struct.ceph_msg_data* %11, i32 0, i32 0
  %13 = load %struct.ceph_bvec_iter*, %struct.ceph_bvec_iter** %4, align 8
  %14 = bitcast %struct.ceph_bvec_iter* %12 to i8*
  %15 = bitcast %struct.ceph_bvec_iter* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.ceph_bvec_iter*, %struct.ceph_bvec_iter** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_bvec_iter, %struct.ceph_bvec_iter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  ret void
}

declare dso_local %struct.ceph_msg_data* @ceph_msg_data_add(%struct.ceph_msg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
