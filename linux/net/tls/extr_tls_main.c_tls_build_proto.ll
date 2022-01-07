; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_build_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_build_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@TLSV6 = common dso_local global i32 0, align 4
@TLSV4 = common dso_local global i32 0, align 4
@saved_tcpv6_prot = common dso_local global i64 0, align 8
@tcpv6_prot_mutex = common dso_local global i32 0, align 4
@tls_prots = common dso_local global i32* null, align 8
@saved_tcpv4_prot = common dso_local global i64 0, align 8
@tcpv4_prot_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tls_build_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_build_proto(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AF_INET6, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TLSV6, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TLSV4, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TLSV6, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @smp_load_acquire(i64* @saved_tcpv6_prot)
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %18
  %28 = call i32 @mutex_lock(i32* @tcpv6_prot_mutex)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @saved_tcpv6_prot, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load i32*, i32** @tls_prots, align 8
  %39 = load i32, i32* @TLSV6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @build_protos(i32 %42, i64 %45)
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @smp_store_release(i64* @saved_tcpv6_prot, i64 %49)
  br label %51

51:                                               ; preds = %37, %27
  %52 = call i32 @mutex_unlock(i32* @tcpv6_prot_mutex)
  br label %53

53:                                               ; preds = %51, %18, %13
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @TLSV4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %53
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @smp_load_acquire(i64* @saved_tcpv4_prot)
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %57
  %67 = call i32 @mutex_lock(i32* @tcpv4_prot_mutex)
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @saved_tcpv4_prot, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %66
  %77 = load i32*, i32** @tls_prots, align 8
  %78 = load i32, i32* @TLSV4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sock*, %struct.sock** %2, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @build_protos(i32 %81, i64 %84)
  %86 = load %struct.sock*, %struct.sock** %2, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @smp_store_release(i64* @saved_tcpv4_prot, i64 %88)
  br label %90

90:                                               ; preds = %76, %66
  %91 = call i32 @mutex_unlock(i32* @tcpv4_prot_mutex)
  br label %92

92:                                               ; preds = %90, %57, %53
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @smp_load_acquire(i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @build_protos(i32, i64) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
