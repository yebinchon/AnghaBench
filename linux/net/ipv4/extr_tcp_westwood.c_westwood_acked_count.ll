; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_westwood_acked_count.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_westwood.c_westwood_acked_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64 }
%struct.westwood = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*)* @westwood_acked_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @westwood_acked_count(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.westwood*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.westwood* @inet_csk_ca(%struct.sock* %7)
  store %struct.westwood* %8, %struct.westwood** %4, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.westwood*, %struct.westwood** %4, align 8
  %13 = getelementptr inbounds %struct.westwood, %struct.westwood* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.westwood*, %struct.westwood** %4, align 8
  %17 = getelementptr inbounds %struct.westwood, %struct.westwood* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.westwood*, %struct.westwood** %4, align 8
  %19 = getelementptr inbounds %struct.westwood, %struct.westwood* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %1
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.westwood*, %struct.westwood** %4, align 8
  %27 = getelementptr inbounds %struct.westwood, %struct.westwood* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.westwood*, %struct.westwood** %4, align 8
  %34 = getelementptr inbounds %struct.westwood, %struct.westwood* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %22, %1
  %36 = load %struct.westwood*, %struct.westwood** %4, align 8
  %37 = getelementptr inbounds %struct.westwood, %struct.westwood* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %35
  %44 = load %struct.westwood*, %struct.westwood** %4, align 8
  %45 = getelementptr inbounds %struct.westwood, %struct.westwood* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.westwood*, %struct.westwood** %4, align 8
  %48 = getelementptr inbounds %struct.westwood, %struct.westwood* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.westwood*, %struct.westwood** %4, align 8
  %53 = getelementptr inbounds %struct.westwood, %struct.westwood* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.westwood*, %struct.westwood** %4, align 8
  %56 = getelementptr inbounds %struct.westwood, %struct.westwood* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.westwood*, %struct.westwood** %4, align 8
  %63 = getelementptr inbounds %struct.westwood, %struct.westwood* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %74

64:                                               ; preds = %43
  %65 = load %struct.westwood*, %struct.westwood** %4, align 8
  %66 = getelementptr inbounds %struct.westwood, %struct.westwood* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.westwood*, %struct.westwood** %4, align 8
  %69 = getelementptr inbounds %struct.westwood, %struct.westwood* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.westwood*, %struct.westwood** %4, align 8
  %73 = getelementptr inbounds %struct.westwood, %struct.westwood* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %51
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.westwood*, %struct.westwood** %4, align 8
  %80 = getelementptr inbounds %struct.westwood, %struct.westwood* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.westwood*, %struct.westwood** %4, align 8
  %82 = getelementptr inbounds %struct.westwood, %struct.westwood* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  ret i64 %83
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.westwood* @inet_csk_ca(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
