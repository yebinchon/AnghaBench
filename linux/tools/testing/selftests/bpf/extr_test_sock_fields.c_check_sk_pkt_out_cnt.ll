; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_check_sk_pkt_out_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_check_sk_pkt_out_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_spinlock_cnt = type { i32 }

@sk_pkt_out_cnt_fd = common dso_local global i32 0, align 4
@sk_pkt_out_cnt10_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"bpf_map_lookup_elem(sk_pkt_out_cnt, &accept_fd)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"err:%d errno:%d pkt_out_cnt:%u pkt_out_cnt10:%u\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"bpf_map_lookup_elem(sk_pkt_out_cnt, &cli_fd)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @check_sk_pkt_out_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sk_pkt_out_cnt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_spinlock_cnt, align 4
  %6 = alloca %struct.bpf_spinlock_cnt, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.bpf_spinlock_cnt* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = bitcast %struct.bpf_spinlock_cnt* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* @sk_pkt_out_cnt_fd, align 4
  %13 = call i32 @bpf_map_lookup_elem(i32 %12, i32* %3, %struct.bpf_spinlock_cnt* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @sk_pkt_out_cnt10_fd, align 4
  %18 = call i32 @bpf_map_lookup_elem(i32 %17, i32* %3, %struct.bpf_spinlock_cnt* %6)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 40
  br label %30

30:                                               ; preds = %26, %22, %19
  %31 = phi i1 [ true, %22 ], [ true, %19 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CHECK(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %36, i32 %38)
  %40 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  %42 = load i32, i32* @sk_pkt_out_cnt_fd, align 4
  %43 = call i32 @bpf_map_lookup_elem(i32 %42, i32* %4, %struct.bpf_spinlock_cnt* %5)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @sk_pkt_out_cnt10_fd, align 4
  %48 = call i32 @bpf_map_lookup_elem(i32 %47, i32* %4, %struct.bpf_spinlock_cnt* %6)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %30
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 60323
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 60359
  br label %60

60:                                               ; preds = %56, %52, %49
  %61 = phi i1 [ true, %52 ], [ true, %49 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.bpf_spinlock_cnt, %struct.bpf_spinlock_cnt* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CHECK(i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %66, i32 %68)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.bpf_spinlock_cnt*) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
