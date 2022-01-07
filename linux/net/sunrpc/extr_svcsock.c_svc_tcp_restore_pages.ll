; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_restore_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_tcp_restore_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i32** }
%struct.svc_rqst = type { i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_sock*, %struct.svc_rqst*)* @svc_tcp_restore_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_tcp_restore_pages(%struct.svc_sock* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_sock*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %9 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %10 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %16 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %76, %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @put_page(i32* %44)
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %48 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %58 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %65 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %63, i32** %69, align 8
  %70 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %71 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %46
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %24

79:                                               ; preds = %24
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %81 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @page_address(i32* %84)
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %87 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %79, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
