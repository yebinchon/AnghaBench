; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_init_sk_storage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_init_sk_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_spinlock_cnt = type { i32 }

@sk_pkt_out_cnt_fd = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bpf_map_update_elem(sk_pkt_out_cnt_fd)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"err:%d errno:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@sk_pkt_out_cnt10_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bpf_map_update_elem(sk_pkt_out_cnt10_fd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @init_sk_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sk_storage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_spinlock_cnt, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.bpf_spinlock_cnt* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @sk_pkt_out_cnt_fd, align 4
  %11 = load i32, i32* @BPF_NOEXIST, align 4
  %12 = call i32 @bpf_map_update_elem(i32 %10, i32* %3, %struct.bpf_spinlock_cnt* %5, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @CHECK(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 10
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @sk_pkt_out_cnt10_fd, align 4
  %21 = load i32, i32* @BPF_NOEXIST, align 4
  %22 = call i32 @bpf_map_update_elem(i32 %20, i32* %3, %struct.bpf_spinlock_cnt* %5, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @CHECK(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, %struct.bpf_spinlock_cnt*, i32) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
