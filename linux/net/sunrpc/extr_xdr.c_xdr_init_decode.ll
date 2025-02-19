; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_init_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_init_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.rpc_rqst*, i32*, i32, i32*, %struct.TYPE_3__, %struct.xdr_buf* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.xdr_buf = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.rpc_rqst = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_init_decode(%struct.xdr_stream* %0, %struct.xdr_buf* %1, i32* %2, %struct.rpc_rqst* %3) #0 {
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.rpc_rqst* %3, %struct.rpc_rqst** %8, align 8
  %9 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %10, i32 0, i32 5
  store %struct.xdr_buf* %9, %struct.xdr_buf** %11, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %16 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @XDR_QUADLEN(i32 %20)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %33 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %34 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xdr_set_iov(%struct.xdr_stream* %32, %struct.TYPE_4__* %35, i32 %38)
  br label %61

40:                                               ; preds = %4
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %47 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %48 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xdr_set_page_base(%struct.xdr_stream* %46, i32 0, i32 %49)
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %57 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @xdr_set_iov(%struct.xdr_stream* %52, %struct.TYPE_4__* %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %45
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %67 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ugt i32* %65, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %72 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp uge i32* %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %79 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = ptrtoint i32* %77 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %86 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %93 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  br label %94

94:                                               ; preds = %76, %70, %64, %61
  %95 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %96 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %97 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %96, i32 0, i32 0
  store %struct.rpc_rqst* %95, %struct.rpc_rqst** %97, align 8
  ret void
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_set_iov(%struct.xdr_stream*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @xdr_set_page_base(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
