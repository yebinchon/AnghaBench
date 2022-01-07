; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_select_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_select_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.sock_reuseport = type { i32, %struct.sock**, i32 }
%struct.bpf_prog = type { i64 }

@BPF_PROG_TYPE_SK_REUSEPORT = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @reuseport_select_sock(%struct.sock* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock_reuseport*, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.sock* null, %struct.sock** %11, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @rcu_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.sock_reuseport*
  store %struct.sock_reuseport* %20, %struct.sock_reuseport** %9, align 8
  %21 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %22 = icmp ne %struct.sock_reuseport* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %110

24:                                               ; preds = %4
  %25 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %26 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @rcu_dereference(i32 %27)
  %29 = bitcast i8* %28 to %struct.bpf_prog*
  store %struct.bpf_prog* %29, %struct.bpf_prog** %10, align 8
  %30 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %31 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @READ_ONCE(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %24
  %38 = call i32 (...) @smp_rmb()
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %40 = icmp ne %struct.bpf_prog* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %66

45:                                               ; preds = %41
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %47 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BPF_PROG_TYPE_SK_REUSEPORT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.sock* @bpf_run_sk_reuseport(%struct.sock_reuseport* %52, %struct.sock* %53, %struct.bpf_prog* %54, %struct.sk_buff* %55, i32 %56)
  store %struct.sock* %57, %struct.sock** %11, align 8
  br label %65

58:                                               ; preds = %45
  %59 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.sock* @run_bpf_filter(%struct.sock_reuseport* %59, i32 %60, %struct.bpf_prog* %61, %struct.sk_buff* %62, i32 %63)
  store %struct.sock* %64, %struct.sock** %11, align 8
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %44
  %67 = load %struct.sock*, %struct.sock** %11, align 8
  %68 = icmp ne %struct.sock* %67, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @reciprocal_scale(i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %99, %69
  %74 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %75 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %74, i32 0, i32 1
  %76 = load %struct.sock**, %struct.sock*** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sock*, %struct.sock** %76, i64 %78
  %80 = load %struct.sock*, %struct.sock** %79, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TCP_ESTABLISHED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %90 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %85
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %110

99:                                               ; preds = %94
  br label %73

100:                                              ; preds = %73
  %101 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %102 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %101, i32 0, i32 1
  %103 = load %struct.sock**, %struct.sock*** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sock*, %struct.sock** %103, i64 %105
  %107 = load %struct.sock*, %struct.sock** %106, align 8
  store %struct.sock* %107, %struct.sock** %11, align 8
  br label %108

108:                                              ; preds = %100, %66
  br label %109

109:                                              ; preds = %108, %24
  br label %110

110:                                              ; preds = %109, %98, %23
  %111 = call i32 (...) @rcu_read_unlock()
  %112 = load %struct.sock*, %struct.sock** %11, align 8
  ret %struct.sock* %112
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.sock* @bpf_run_sk_reuseport(%struct.sock_reuseport*, %struct.sock*, %struct.bpf_prog*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @run_bpf_filter(%struct.sock_reuseport*, i32, %struct.bpf_prog*, %struct.sk_buff*, i32) #1

declare dso_local i32 @reciprocal_scale(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
