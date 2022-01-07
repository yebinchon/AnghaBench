; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_nfsd_export_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_nfsd_export_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_net = type { i8*, i8* }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nfsd: initializing export module (net: %x).\0A\00", align 1
@svc_export_cache_template = common dso_local global i32 0, align 4
@svc_expkey_cache_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_export_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfsd_net_id, align 4
  %8 = call %struct.nfsd_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfsd_net* %8, %struct.nfsd_net** %5, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = call i8* @cache_create_net(i32* @svc_export_cache_template, %struct.net* %14)
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %1
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = call i32 @cache_register_net(i8* %31, %struct.net* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %74

37:                                               ; preds = %28
  %38 = load %struct.net*, %struct.net** %3, align 8
  %39 = call i8* @cache_create_net(i32* @svc_expkey_cache_template, %struct.net* %38)
  %40 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %41 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %37
  %53 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %54 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.net*, %struct.net** %3, align 8
  %57 = call i32 @cache_register_net(i8* %55, %struct.net* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %81

62:                                               ; preds = %60
  %63 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %64 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.net*, %struct.net** %3, align 8
  %67 = call i32 @cache_destroy_net(i8* %65, %struct.net* %66)
  br label %68

68:                                               ; preds = %62, %47
  %69 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %70 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.net*, %struct.net** %3, align 8
  %73 = call i32 @cache_unregister_net(i8* %71, %struct.net* %72)
  br label %74

74:                                               ; preds = %68, %36
  %75 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %76 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.net*, %struct.net** %3, align 8
  %79 = call i32 @cache_destroy_net(i8* %77, %struct.net* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %74, %61, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i8* @cache_create_net(i32*, %struct.net*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @cache_register_net(i8*, %struct.net*) #1

declare dso_local i32 @cache_destroy_net(i8*, %struct.net*) #1

declare dso_local i32 @cache_unregister_net(i8*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
