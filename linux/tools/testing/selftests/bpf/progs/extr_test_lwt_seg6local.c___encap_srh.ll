; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_lwt_seg6local.c___encap_srh.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_lwt_seg6local.c___encap_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.ip6_addr_t = type { i8*, i8* }
%struct.ip6_srh_t = type { i32, i32, i32, i32, i64, i64, i64 }

@BPF_DROP = common dso_local global i32 0, align 4
@BPF_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__encap_srh(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip6_addr_t*, align 8
  %6 = alloca %struct.ip6_srh_t*, align 8
  %7 = alloca [72 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i64 -216172782113783808, i64* %4, align 8
  %10 = getelementptr inbounds [72 x i8], [72 x i8]* %7, i64 0, i64 0
  %11 = bitcast i8* %10 to %struct.ip6_srh_t*
  store %struct.ip6_srh_t* %11, %struct.ip6_srh_t** %6, align 8
  %12 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %13 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %15 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %14, i32 0, i32 0
  store i32 8, i32* %15, align 8
  %16 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %17 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %16, i32 0, i32 1
  store i32 4, i32* %17, align 4
  %18 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %19 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %18, i32 0, i32 2
  store i32 3, i32* %19, align 8
  %20 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %21 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %20, i32 0, i32 3
  store i32 3, i32* %21, align 4
  %22 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %25 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %27 = bitcast %struct.ip6_srh_t* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 40
  %29 = bitcast i8* %28 to %struct.ip6_addr_t*
  store %struct.ip6_addr_t* %29, %struct.ip6_addr_t** %5, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %47, %1
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 4, %34
  %36 = call i8* @bpf_cpu_to_be64(i64 %35)
  %37 = load %struct.ip6_addr_t*, %struct.ip6_addr_t** %5, align 8
  %38 = getelementptr inbounds %struct.ip6_addr_t, %struct.ip6_addr_t* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i8* @bpf_cpu_to_be64(i64 %39)
  %41 = load %struct.ip6_addr_t*, %struct.ip6_addr_t** %5, align 8
  %42 = getelementptr inbounds %struct.ip6_addr_t, %struct.ip6_addr_t* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ip6_addr_t*, %struct.ip6_addr_t** %5, align 8
  %44 = bitcast %struct.ip6_addr_t* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 16
  %46 = bitcast i8* %45 to %struct.ip6_addr_t*
  store %struct.ip6_addr_t* %46, %struct.ip6_addr_t** %5, align 8
  br label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %30, !llvm.loop !2

50:                                               ; preds = %30
  %51 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %52 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %6, align 8
  %53 = bitcast %struct.ip6_srh_t* %52 to i8*
  %54 = call i32 @bpf_lwt_push_encap(%struct.__sk_buff* %51, i32 0, i8* %53, i32 72)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @BPF_DROP, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @BPF_REDIRECT, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @bpf_cpu_to_be64(i64) #1

declare dso_local i32 @bpf_lwt_push_encap(%struct.__sk_buff*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.full"}
