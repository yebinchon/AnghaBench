; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_update_sk_prot.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_update_sk_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32* }
%struct.tls_context = type { i64, i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@TLSV6 = common dso_local global i32 0, align 4
@TLSV4 = common dso_local global i32 0, align 4
@tls_prots = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tls_context*)* @update_sk_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sk_prot(%struct.sock* %0, %struct.tls_context* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tls_context* %1, %struct.tls_context** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET6, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TLSV6, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TLSV4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load i32***, i32**** @tls_prots, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32**, i32*** %17, i64 %19
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %23 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %28 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
