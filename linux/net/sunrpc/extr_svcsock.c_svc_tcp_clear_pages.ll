; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_clear_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_clear_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i64, i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*)* @svc_tcp_clear_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_clear_pages(%struct.svc_sock* %0) #0 {
  %2 = alloca %struct.svc_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %2, align 8
  %6 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %7 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %13 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = add i32 %15, %16
  %18 = sub i32 %17, 1
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %51, %11
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %27 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @WARN_ON_ONCE(i32 1)
  br label %51

36:                                               ; preds = %25
  %37 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %38 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @put_page(i32* %43)
  %45 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %46 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %21

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54, %10
  %56 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %57 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %59 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
