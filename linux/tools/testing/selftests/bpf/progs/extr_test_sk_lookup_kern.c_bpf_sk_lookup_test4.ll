; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sk_lookup_kern.c_bpf_sk_lookup_test4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_sk_lookup_kern.c_bpf_sk_lookup_test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.bpf_sock_tuple = type { i32 }
%struct.bpf_sock = type { i32 }

@BPF_F_CURRENT_NETNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_sk_lookup_test4(%struct.__sk_buff* %0) #0 {
  %2 = alloca %struct.__sk_buff*, align 8
  %3 = alloca %struct.bpf_sock_tuple, align 4
  %4 = alloca %struct.bpf_sock*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %2, align 8
  %5 = bitcast %struct.bpf_sock_tuple* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load %struct.__sk_buff*, %struct.__sk_buff** %2, align 8
  %7 = load i32, i32* @BPF_F_CURRENT_NETNS, align 4
  %8 = call %struct.bpf_sock* @bpf_sk_lookup_tcp(%struct.__sk_buff* %6, %struct.bpf_sock_tuple* %3, i32 4, i32 %7, i32 0)
  store %struct.bpf_sock* %8, %struct.bpf_sock** %4, align 8
  %9 = load %struct.bpf_sock*, %struct.bpf_sock** %4, align 8
  %10 = call i32 @bpf_sk_release(%struct.bpf_sock* %9)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bpf_sock* @bpf_sk_lookup_tcp(%struct.__sk_buff*, %struct.bpf_sock_tuple*, i32, i32, i32) #2

declare dso_local i32 @bpf_sk_release(%struct.bpf_sock*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
