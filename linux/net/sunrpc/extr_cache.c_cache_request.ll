; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 (%struct.cache_detail*, i32, i8**, i32*)* }
%struct.cache_request = type { i8*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.cache_request*)* @cache_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_request(%struct.cache_detail* %0, %struct.cache_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.cache_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.cache_request* %1, %struct.cache_request** %5, align 8
  %8 = load %struct.cache_request*, %struct.cache_request** %5, align 8
  %9 = getelementptr inbounds %struct.cache_request, %struct.cache_request* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %13 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %12, i32 0, i32 0
  %14 = load i32 (%struct.cache_detail*, i32, i8**, i32*)*, i32 (%struct.cache_detail*, i32, i8**, i32*)** %13, align 8
  %15 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %16 = load %struct.cache_request*, %struct.cache_request** %5, align 8
  %17 = getelementptr inbounds %struct.cache_request, %struct.cache_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(%struct.cache_detail* %15, i32 %18, i8** %6, i32* %7)
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
