; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_rqst_exp_get_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_rqst_exp_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i64 }
%struct.svc_rqst = type { i32, i32*, i32* }
%struct.path = type { i32 }
%struct.nfsd_net = type { %struct.cache_detail* }
%struct.cache_detail = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.svc_export*, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca %struct.nfsd_net*, align 8
  %9 = alloca %struct.cache_detail*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.svc_export* @ERR_PTR(i32 %11)
  store %struct.svc_export* %12, %struct.svc_export** %7, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = call i32 @SVC_NET(%struct.svc_rqst* %13)
  %15 = load i32, i32* @nfsd_net_id, align 4
  %16 = call %struct.nfsd_net* @net_generic(i32 %14, i32 %15)
  store %struct.nfsd_net* %16, %struct.nfsd_net** %8, align 8
  %17 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %18 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %17, i32 0, i32 0
  %19 = load %struct.cache_detail*, %struct.cache_detail** %18, align 8
  store %struct.cache_detail* %19, %struct.cache_detail** %9, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.cache_detail*, %struct.cache_detail** %9, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.path*, %struct.path** %5, align 8
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  %33 = call %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %26, i32* %29, %struct.path* %30, i32* %32)
  store %struct.svc_export* %33, %struct.svc_export** %7, align 8
  %34 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.svc_export* %34)
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %54

40:                                               ; preds = %25
  %41 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %42 = call i64 @IS_ERR(%struct.svc_export* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %45, %struct.svc_export** %3, align 8
  br label %86

46:                                               ; preds = %40
  %47 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %48 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %52, %struct.svc_export** %3, align 8
  br label %86

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %39, %24
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %60, %struct.svc_export** %3, align 8
  br label %86

61:                                               ; preds = %54
  %62 = load %struct.cache_detail*, %struct.cache_detail** %9, align 8
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %64 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.path*, %struct.path** %5, align 8
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 0
  %69 = call %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %62, i32* %65, %struct.path* %66, i32* %68)
  store %struct.svc_export* %69, %struct.svc_export** %6, align 8
  %70 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %71 = call i32 @PTR_ERR(%struct.svc_export* %70)
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %76, %struct.svc_export** %3, align 8
  br label %86

77:                                               ; preds = %61
  %78 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %79 = call i64 @IS_ERR(%struct.svc_export* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %83 = call i32 @exp_put(%struct.svc_export* %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  store %struct.svc_export* %85, %struct.svc_export** %3, align 8
  br label %86

86:                                               ; preds = %84, %75, %59, %51, %44
  %87 = load %struct.svc_export*, %struct.svc_export** %3, align 8
  ret %struct.svc_export* %87
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.svc_export* @exp_get_by_name(%struct.cache_detail*, i32*, %struct.path*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
