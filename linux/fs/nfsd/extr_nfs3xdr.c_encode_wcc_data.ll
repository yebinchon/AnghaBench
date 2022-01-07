; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_wcc_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_wcc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32, i64, i64, i64, %struct.dentry* }
%struct.dentry = type { i32 }

@xdr_one = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*)* @encode_wcc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_wcc_data(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  %9 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %10 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 5
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %3
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = call i64 @d_really_is_positive(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %25 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load i32, i32* @xdr_one, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %34 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32* @xdr_encode_hyper(i32* %32, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %40 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %39, i32 0, i32 1
  %41 = call i32* @encode_time3(i32* %38, i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %44 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %43, i32 0, i32 0
  %45 = call i32* @encode_time3(i32* %42, i32* %44)
  store i32* %45, i32** %6, align 8
  br label %51

46:                                               ; preds = %23
  %47 = load i8*, i8** @xdr_zero, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %46, %28
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %55 = call i32* @encode_saved_post_attr(%struct.svc_rqst* %52, i32* %53, %struct.svc_fh* %54)
  store i32* %55, i32** %4, align 8
  br label %65

56:                                               ; preds = %18, %14, %3
  %57 = load i8*, i8** @xdr_zero, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %64 = call i32* @encode_post_op_attr(%struct.svc_rqst* %61, i32* %62, %struct.svc_fh* %63)
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %56, %51
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @encode_time3(i32*, i32*) #1

declare dso_local i32* @encode_saved_post_attr(%struct.svc_rqst*, i32*, %struct.svc_fh*) #1

declare dso_local i32* @encode_post_op_attr(%struct.svc_rqst*, i32*, %struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
