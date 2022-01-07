; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_acceptable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.c_nfsd_acceptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }

@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfsd_acceptable failed at %p %pd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dentry*)* @nfsd_acceptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_acceptable(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.svc_export*
  store %struct.svc_export* %12, %struct.svc_export** %6, align 8
  %13 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %14 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.dentry* @dget(%struct.dentry* %21)
  store %struct.dentry* %22, %struct.dentry** %8, align 8
  br label %23

23:                                               ; preds = %49, %20
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %26 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  %29 = icmp ne %struct.dentry* %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = call i32 @IS_ROOT(%struct.dentry* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i1 [ false, %23 ], [ %34, %30 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = call %struct.dentry* @dget_parent(%struct.dentry* %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = call i32 @d_inode(%struct.dentry* %40)
  %42 = load i32, i32* @MAY_EXEC, align 4
  %43 = call i32 @inode_permission(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = call i32 @dput(%struct.dentry* %47)
  br label %53

49:                                               ; preds = %37
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = call i32 @dput(%struct.dentry* %50)
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %52, %struct.dentry** %8, align 8
  br label %23

53:                                               ; preds = %46, %35
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %56 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.dentry*, %struct.dentry** %57, align 8
  %59 = icmp ne %struct.dentry* %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.dentry* %61, %struct.dentry* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %67 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %68, align 8
  %70 = icmp eq %struct.dentry* %65, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load %struct.dentry*, %struct.dentry** %8, align 8
  %73 = call i32 @dput(%struct.dentry* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @inode_permission(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @dprintk(i8*, %struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
