; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_alloc_enc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_alloc_enc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, {}*, i32**, %struct.xdr_buf }
%struct.xdr_buf = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*)* @alloc_enc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_enc_pages(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 3
  store %struct.xdr_buf* %9, %struct.xdr_buf** %4, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 1
  %12 = bitcast {}** %11 to i32 (%struct.rpc_rqst*)**
  %13 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %12, align 8
  %14 = icmp ne i32 (%struct.rpc_rqst*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.rpc_rqst*)**
  %19 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %18, align 8
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %21 = call i32 %19(%struct.rpc_rqst* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %107

30:                                               ; preds = %22
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = add nsw i32 %49, 1
  %51 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %52 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %54 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = call i32** @kmalloc_array(i32 %55, i32 8, i32 %56)
  %58 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %58, i32 0, i32 2
  store i32** %57, i32*** %59, align 8
  %60 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %61 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %30
  br label %104

65:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %69 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %66
  %73 = load i32, i32* @GFP_NOFS, align 4
  %74 = call i32* @alloc_page(i32 %73)
  %75 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %76 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* %74, i32** %80, align 8
  %81 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %82 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %81, i32 0, i32 2
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %98

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %96 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %95, i32 0, i32 1
  %97 = bitcast {}** %96 to i32 (%struct.rpc_rqst*)**
  store i32 (%struct.rpc_rqst*)* @priv_release_snd_buf, i32 (%struct.rpc_rqst*)** %97, align 8
  store i32 0, i32* %2, align 4
  br label %107

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %101 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %103 = call i32 @priv_release_snd_buf(%struct.rpc_rqst* %102)
  br label %104

104:                                              ; preds = %98, %64
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %94, %27
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @priv_release_snd_buf(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
