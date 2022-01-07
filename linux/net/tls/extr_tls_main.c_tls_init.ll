; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.tls_context = type { i8*, i8* }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TLS_BASE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tls_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_init(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call i64 @tls_hw_prot(%struct.sock* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_ESTABLISHED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %10
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @tls_build_proto(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = call i32 @write_lock_bh(i32* %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call %struct.tls_context* @create_ctx(%struct.sock* %25)
  store %struct.tls_context* %26, %struct.tls_context** %4, align 8
  %27 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %28 = icmp ne %struct.tls_context* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load i8*, i8** @TLS_BASE, align 8
  %34 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %35 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @TLS_BASE, align 8
  %37 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %38 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %41 = call i32 @update_sk_prot(%struct.sock* %39, %struct.tls_context* %40)
  br label %42

42:                                               ; preds = %32, %29
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = call i32 @write_unlock_bh(i32* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %16, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @tls_hw_prot(%struct.sock*) #1

declare dso_local i32 @tls_build_proto(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.tls_context* @create_ctx(%struct.sock*) #1

declare dso_local i32 @update_sk_prot(%struct.sock*, %struct.tls_context*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
