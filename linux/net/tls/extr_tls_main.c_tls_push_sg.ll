; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_push_sg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_tls_push_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32, i32, i8* }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_push_sg(%struct.sock* %0, %struct.tls_context* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.tls_context*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.tls_context* %1, %struct.tls_context** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %15, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %28 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %16, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %16, align 4
  %32 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %33 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %5, %96
  %35 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %36 = call i64 @sg_is_last(%struct.scatterlist* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = call i32 @tcp_rate_check_app_limited(%struct.sock* %41)
  %43 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %44 = call %struct.page* @sg_page(%struct.scatterlist* %43)
  store %struct.page* %44, %struct.page** %14, align 8
  br label %45

45:                                               ; preds = %59, %40
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = load %struct.page*, %struct.page** %14, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i64, i64* %15, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @do_tcp_sendpages(%struct.sock* %46, %struct.page* %47, i32 %48, i64 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %15, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %15, align 8
  br label %45

67:                                               ; preds = %56
  %68 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %75 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %77 = bitcast %struct.scatterlist* %76 to i8*
  %78 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %79 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %81 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %107

83:                                               ; preds = %45
  %84 = load %struct.page*, %struct.page** %14, align 8
  %85 = call i32 @put_page(%struct.page* %84)
  %86 = load %struct.sock*, %struct.sock** %7, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sk_mem_uncharge(%struct.sock* %86, i32 %89)
  %91 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %92 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %91)
  store %struct.scatterlist* %92, %struct.scatterlist** %9, align 8
  %93 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %94 = icmp ne %struct.scatterlist* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %104

96:                                               ; preds = %83
  %97 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %15, align 8
  br label %34

104:                                              ; preds = %95
  %105 = load %struct.tls_context*, %struct.tls_context** %8, align 8
  %106 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %67
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32 @tcp_rate_check_app_limited(%struct.sock*) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @do_tcp_sendpages(%struct.sock*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
