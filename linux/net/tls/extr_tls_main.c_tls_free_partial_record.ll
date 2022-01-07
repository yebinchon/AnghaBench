; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_free_partial_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_free_partial_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_free_partial_record(%struct.sock* %0, %struct.tls_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  %7 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %8 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %7, i32 0, i32 0
  %9 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %9, %struct.scatterlist** %6, align 8
  %10 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %11 = icmp ne %struct.scatterlist* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %27
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = call i32 @sg_page(%struct.scatterlist* %15)
  %17 = call i32 @put_page(i32 %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sk_mem_uncharge(%struct.sock* %18, i32 %21)
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = call i64 @sg_is_last(%struct.scatterlist* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %30

27:                                               ; preds = %14
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 1
  store %struct.scatterlist* %29, %struct.scatterlist** %6, align 8
  br label %14

30:                                               ; preds = %26
  %31 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %32 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %31, i32 0, i32 0
  store %struct.scatterlist* null, %struct.scatterlist** %32, align 8
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
