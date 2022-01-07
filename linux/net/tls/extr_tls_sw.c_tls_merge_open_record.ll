; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_merge_open_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_merge_open_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_rec = type { i32, %struct.sk_msg }
%struct.sk_msg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i8*, i8*, i8* }
%struct.scatterlist = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tls_rec*, %struct.tls_rec*, i8*)* @tls_merge_open_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_merge_open_record(%struct.sock* %0, %struct.tls_rec* %1, %struct.tls_rec* %2, i8* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tls_rec*, align 8
  %7 = alloca %struct.tls_rec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_msg*, align 8
  %10 = alloca %struct.sk_msg*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.tls_rec* %1, %struct.tls_rec** %6, align 8
  store %struct.tls_rec* %2, %struct.tls_rec** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.tls_rec*, %struct.tls_rec** %7, align 8
  %16 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %15, i32 0, i32 1
  store %struct.sk_msg* %16, %struct.sk_msg** %9, align 8
  %17 = load %struct.tls_rec*, %struct.tls_rec** %6, align 8
  %18 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %17, i32 0, i32 1
  store %struct.sk_msg* %18, %struct.sk_msg** %10, align 8
  %19 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %20 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @sk_msg_iter_var_prev(i8* %23)
  %25 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %26 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  %29 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %29, i8* %30)
  store %struct.scatterlist* %31, %struct.scatterlist** %11, align 8
  %32 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %32, i8* %33)
  store %struct.scatterlist* %34, %struct.scatterlist** %12, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %36 = call i64 @sg_page(%struct.scatterlist* %35)
  %37 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %38 = call i64 @sg_page(%struct.scatterlist* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %61 = call i64 @sg_page(%struct.scatterlist* %60)
  %62 = call i32 @put_page(i64 %61)
  br label %63

63:                                               ; preds = %52, %40, %4
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %66 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %70 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %73 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %76 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %80 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %85 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sk_msg*, %struct.sk_msg** %9, align 8
  %87 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sk_msg*, %struct.sk_msg** %10, align 8
  %91 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %89
  store i64 %94, i64* %92, align 8
  %95 = load %struct.sock*, %struct.sock** %5, align 8
  %96 = load %struct.tls_rec*, %struct.tls_rec** %6, align 8
  %97 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %96, i32 0, i32 0
  %98 = call i32 @sk_msg_free(%struct.sock* %95, i32* %97)
  %99 = load %struct.tls_rec*, %struct.tls_rec** %6, align 8
  %100 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %99, i32 0, i32 0
  %101 = load %struct.tls_rec*, %struct.tls_rec** %7, align 8
  %102 = getelementptr inbounds %struct.tls_rec, %struct.tls_rec* %101, i32 0, i32 0
  %103 = call i32 @sk_msg_xfer_full(i32* %100, i32* %102)
  %104 = load %struct.tls_rec*, %struct.tls_rec** %7, align 8
  %105 = call i32 @kfree(%struct.tls_rec* %104)
  ret void
}

declare dso_local i32 @sk_msg_iter_var_prev(i8*) #1

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i8*) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @sk_msg_free(%struct.sock*, i32*) #1

declare dso_local i32 @sk_msg_xfer_full(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tls_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
