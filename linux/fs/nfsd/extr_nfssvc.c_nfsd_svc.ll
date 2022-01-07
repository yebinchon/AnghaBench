; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_svc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.nfsd_net = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*, i32)* }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfsd_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nfsd: creating service\0A\00", align 1
@NFSD_MAXSERVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_svc(i32 %0, %struct.net* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsd_net*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.net* %1, %struct.net** %5, align 8
  store %struct.cred* %2, %struct.cred** %6, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load i32, i32* @nfsd_net_id, align 4
  %12 = call %struct.nfsd_net* @net_generic(%struct.net* %10, i32 %11)
  store %struct.nfsd_net* %12, %struct.nfsd_net** %9, align 8
  %13 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @max(i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NFSD_MAXSERVS, align 4
  %19 = call i32 @min(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.nfsd_net*, %struct.nfsd_net** %9, align 8
  %24 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %81

28:                                               ; preds = %22, %3
  %29 = load %struct.net*, %struct.net** %5, align 8
  %30 = call i32 @nfsd_create_serv(%struct.net* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %81

34:                                               ; preds = %28
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %9, align 8
  %36 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = load %struct.cred*, %struct.cred** %6, align 8
  %41 = call i32 @nfsd_startup_net(i32 %38, %struct.net* %39, %struct.cred* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %78

45:                                               ; preds = %34
  %46 = load %struct.nfsd_net*, %struct.nfsd_net** %9, align 8
  %47 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %51, align 8
  %53 = load %struct.nfsd_net*, %struct.nfsd_net** %9, align 8
  %54 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %52(%struct.TYPE_4__* %55, i32* null, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %68

61:                                               ; preds = %45
  %62 = load %struct.nfsd_net*, %struct.nfsd_net** %9, align 8
  %63 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %61, %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.net*, %struct.net** %5, align 8
  %76 = call i32 @nfsd_shutdown_net(%struct.net* %75)
  br label %77

77:                                               ; preds = %74, %71, %68
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.net*, %struct.net** %5, align 8
  %80 = call i32 @nfsd_destroy(%struct.net* %79)
  br label %81

81:                                               ; preds = %78, %33, %27
  %82 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nfsd_create_serv(%struct.net*) #1

declare dso_local i32 @nfsd_startup_net(i32, %struct.net*, %struct.cred*) #1

declare dso_local i32 @nfsd_shutdown_net(%struct.net*) #1

declare dso_local i32 @nfsd_destroy(%struct.net*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
