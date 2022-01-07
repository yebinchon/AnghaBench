; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_fastopen_cache_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_fastopen_cache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_fastopen_cookie = type { i64, i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_metrics_block = type { %struct.tcp_fastopen_metrics }
%struct.tcp_fastopen_metrics = type { i64, i64, i32, %struct.tcp_fastopen_cookie, i64 }

@fastopen_seqlock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_cache_set(%struct.sock* %0, i64 %1, %struct.tcp_fastopen_cookie* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcp_fastopen_cookie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.tcp_metrics_block*, align 8
  %13 = alloca %struct.tcp_fastopen_metrics*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.tcp_fastopen_cookie* %2, %struct.tcp_fastopen_cookie** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %14)
  store %struct.dst_entry* %15, %struct.dst_entry** %11, align 8
  %16 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %17 = icmp ne %struct.dst_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %91

19:                                               ; preds = %5
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %23 = call %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock* %21, %struct.dst_entry* %22, i32 1)
  store %struct.tcp_metrics_block* %23, %struct.tcp_metrics_block** %12, align 8
  %24 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %12, align 8
  %25 = icmp ne %struct.tcp_metrics_block* %24, null
  br i1 %25, label %26, label %89

26:                                               ; preds = %19
  %27 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %12, align 8
  %28 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %27, i32 0, i32 0
  store %struct.tcp_fastopen_metrics* %28, %struct.tcp_fastopen_metrics** %13, align 8
  %29 = call i32 @write_seqlock_bh(i32* @fastopen_seqlock)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %35 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %8, align 8
  %38 = icmp ne %struct.tcp_fastopen_cookie* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %8, align 8
  %41 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %46 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %45, i32 0, i32 3
  %47 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %8, align 8
  %48 = bitcast %struct.tcp_fastopen_cookie* %46 to i8*
  %49 = bitcast %struct.tcp_fastopen_cookie* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %73

50:                                               ; preds = %39, %36
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %53 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %58 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %64 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %71 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %62, %56, %50
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %78 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* @jiffies, align 4
  %82 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %83 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %87

84:                                               ; preds = %73
  %85 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %13, align 8
  %86 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %76
  %88 = call i32 @write_sequnlock_bh(i32* @fastopen_seqlock)
  br label %89

89:                                               ; preds = %87, %19
  %90 = call i32 (...) @rcu_read_unlock()
  br label %91

91:                                               ; preds = %89, %18
  ret void
}

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock*, %struct.dst_entry*, i32) #1

declare dso_local i32 @write_seqlock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_sequnlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
