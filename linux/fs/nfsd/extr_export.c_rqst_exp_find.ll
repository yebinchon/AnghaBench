; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_rqst_exp_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_rqst_exp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i64 }
%struct.svc_rqst = type { i32, i32*, i32* }
%struct.nfsd_net = type { %struct.cache_detail* }
%struct.cache_detail = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_export* @rqst_exp_find(%struct.svc_rqst* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.svc_export*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.svc_export*, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  %11 = alloca %struct.cache_detail*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.svc_export* @ERR_PTR(i32 %13)
  store %struct.svc_export* %14, %struct.svc_export** %9, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = call i32 @SVC_NET(%struct.svc_rqst* %15)
  %17 = load i32, i32* @nfsd_net_id, align 4
  %18 = call %struct.nfsd_net* @net_generic(i32 %16, i32 %17)
  store %struct.nfsd_net* %18, %struct.nfsd_net** %10, align 8
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load %struct.cache_detail*, %struct.cache_detail** %20, align 8
  store %struct.cache_detail* %21, %struct.cache_detail** %11, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %57

27:                                               ; preds = %3
  %28 = load %struct.cache_detail*, %struct.cache_detail** %11, align 8
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 0
  %36 = call %struct.svc_export* @exp_find(%struct.cache_detail* %28, i32* %31, i32 %32, i32* %33, i32* %35)
  store %struct.svc_export* %36, %struct.svc_export** %9, align 8
  %37 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.svc_export* %37)
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %57

43:                                               ; preds = %27
  %44 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %45 = call i64 @IS_ERR(%struct.svc_export* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %48, %struct.svc_export** %4, align 8
  br label %90

49:                                               ; preds = %43
  %50 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %51 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %55, %struct.svc_export** %4, align 8
  br label %90

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %42, %26
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %63, %struct.svc_export** %4, align 8
  br label %90

64:                                               ; preds = %57
  %65 = load %struct.cache_detail*, %struct.cache_detail** %11, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %67 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %72 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %71, i32 0, i32 0
  %73 = call %struct.svc_export* @exp_find(%struct.cache_detail* %65, i32* %68, i32 %69, i32* %70, i32* %72)
  store %struct.svc_export* %73, %struct.svc_export** %8, align 8
  %74 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %75 = call i32 @PTR_ERR(%struct.svc_export* %74)
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %80, %struct.svc_export** %4, align 8
  br label %90

81:                                               ; preds = %64
  %82 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %83 = call i64 @IS_ERR(%struct.svc_export* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %87 = call i32 @exp_put(%struct.svc_export* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  store %struct.svc_export* %89, %struct.svc_export** %4, align 8
  br label %90

90:                                               ; preds = %88, %79, %62, %54, %47
  %91 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  ret %struct.svc_export* %91
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.svc_export* @exp_find(%struct.cache_detail*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
