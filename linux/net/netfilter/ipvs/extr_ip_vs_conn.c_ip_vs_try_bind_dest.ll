; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_try_bind_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_try_bind_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32, i32, i32*, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_proto_data = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_try_bind_dest(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 12
  %17 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %18 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %21 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %20, i32 0, i32 10
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %26 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %29 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.ip_vs_dest* @ip_vs_find_dest(i32 %8, i64 %11, i64 %14, i32* %16, i32 %19, i32* %21, i32 %24, i32 %27, i32 %30, i32 %33)
  store %struct.ip_vs_dest* %34, %struct.ip_vs_dest** %3, align 8
  %35 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %36 = icmp ne %struct.ip_vs_dest* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %1
  %38 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %39 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %38, i32 0, i32 4
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 4
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = call i32 (...) @rcu_read_unlock()
  br label %92

50:                                               ; preds = %37
  %51 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %52 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %57 = call i32 @ip_vs_unbind_app(%struct.ip_vs_conn* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %60 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %61 = call i32 @ip_vs_bind_dest(%struct.ip_vs_conn* %59, %struct.ip_vs_dest* %60)
  %62 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %63 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %62, i32 0, i32 4
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %66 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %68 = call i32 @ip_vs_bind_xmit(%struct.ip_vs_conn* %67)
  %69 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %70 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %73 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.ip_vs_proto_data* @ip_vs_proto_data_get(i32 %71, i32 %74)
  store %struct.ip_vs_proto_data* %75, %struct.ip_vs_proto_data** %4, align 8
  %76 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %4, align 8
  %77 = icmp ne %struct.ip_vs_proto_data* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %58
  %79 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %4, align 8
  %80 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %79, i32 0, i32 1
  %81 = call i64 @atomic_read(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %85 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %4, align 8
  %86 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ip_vs_bind_app(%struct.ip_vs_conn* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %78, %58
  br label %90

90:                                               ; preds = %89, %1
  %91 = call i32 (...) @rcu_read_unlock()
  br label %92

92:                                               ; preds = %90, %45
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_dest(i32, i64, i64, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ip_vs_unbind_app(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_bind_dest(%struct.ip_vs_conn*, %struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_bind_xmit(%struct.ip_vs_conn*) #1

declare dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ip_vs_bind_app(%struct.ip_vs_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
