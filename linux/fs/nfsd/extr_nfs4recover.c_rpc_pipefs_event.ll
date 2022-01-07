; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_rpc_pipefs_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_rpc_pipefs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.super_block = type { %struct.net* }
%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.cld_net* }
%struct.cld_net = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rpc_pipefs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipefs_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.nfsd_net*, align 8
  %11 = alloca %struct.cld_net*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.super_block*
  store %struct.super_block* %15, %struct.super_block** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.net*, %struct.net** %17, align 8
  store %struct.net* %18, %struct.net** %9, align 8
  %19 = load %struct.net*, %struct.net** %9, align 8
  %20 = load i32, i32* @nfsd_net_id, align 4
  %21 = call %struct.nfsd_net* @net_generic(%struct.net* %19, i32 %20)
  store %struct.nfsd_net* %21, %struct.nfsd_net** %10, align 8
  %22 = load %struct.nfsd_net*, %struct.nfsd_net** %10, align 8
  %23 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %22, i32 0, i32 0
  %24 = load %struct.cld_net*, %struct.cld_net** %23, align 8
  store %struct.cld_net* %24, %struct.cld_net** %11, align 8
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = call i32 @try_module_get(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

29:                                               ; preds = %3
  %30 = load %struct.cld_net*, %struct.cld_net** %11, align 8
  %31 = icmp ne %struct.cld_net* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = call i32 @module_put(i32 %33)
  store i32 0, i32* %4, align 4
  br label %75

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  switch i64 %36, label %68 [
    i64 129, label %37
    i64 128, label %55
  ]

37:                                               ; preds = %35
  %38 = load %struct.super_block*, %struct.super_block** %8, align 8
  %39 = load %struct.cld_net*, %struct.cld_net** %11, align 8
  %40 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call %struct.dentry* @nfsd4_cld_register_sb(%struct.super_block* %38, %struct.TYPE_3__* %41)
  store %struct.dentry* %42, %struct.dentry** %12, align 8
  %43 = load %struct.dentry*, %struct.dentry** %12, align 8
  %44 = call i32 @IS_ERR(%struct.dentry* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.dentry*, %struct.dentry** %12, align 8
  %48 = call i32 @PTR_ERR(%struct.dentry* %47)
  store i32 %48, i32* %13, align 4
  br label %71

49:                                               ; preds = %37
  %50 = load %struct.dentry*, %struct.dentry** %12, align 8
  %51 = load %struct.cld_net*, %struct.cld_net** %11, align 8
  %52 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store %struct.dentry* %50, %struct.dentry** %54, align 8
  br label %71

55:                                               ; preds = %35
  %56 = load %struct.cld_net*, %struct.cld_net** %11, align 8
  %57 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.dentry*, %struct.dentry** %59, align 8
  %61 = icmp ne %struct.dentry* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.cld_net*, %struct.cld_net** %11, align 8
  %64 = getelementptr inbounds %struct.cld_net, %struct.cld_net* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = call i32 @nfsd4_cld_unregister_sb(%struct.TYPE_3__* %65)
  br label %67

67:                                               ; preds = %62, %55
  br label %71

68:                                               ; preds = %35
  %69 = load i32, i32* @ENOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %67, %49, %46
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = call i32 @module_put(i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %32, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.dentry* @nfsd4_cld_register_sb(%struct.super_block*, %struct.TYPE_3__*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @nfsd4_cld_unregister_sb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
