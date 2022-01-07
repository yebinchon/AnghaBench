; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { %struct.nfs_fattr* }
%struct.nfs_fattr = type { i32, i32 }
%struct.nfs4_label = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"nfs4_get_root: getcaps error = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"nfs4_get_root: getattr error = %d\0A\00", align 1
@NFS_ATTR_FATTR_FSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs4_proc_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_get_root(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fsinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca %struct.nfs4_label*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %7, align 8
  %11 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %7, align 8
  %12 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %11, i32 0, i32 0
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  store %struct.nfs_fattr* %13, %struct.nfs_fattr** %9, align 8
  store %struct.nfs4_label* null, %struct.nfs4_label** %10, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %15 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %16 = call i32 @nfs4_server_capabilities(%struct.nfs_server* %14, %struct.nfs_fh* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nfs4_label* @nfs4_label_alloc(%struct.nfs_server* %25, i32 %26)
  store %struct.nfs4_label* %27, %struct.nfs4_label** %10, align 8
  %28 = load %struct.nfs4_label*, %struct.nfs4_label** %10, align 8
  %29 = call i64 @IS_ERR(%struct.nfs4_label* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.nfs4_label*, %struct.nfs4_label** %10, align 8
  %33 = call i32 @PTR_ERR(%struct.nfs4_label* %32)
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %24
  %35 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %36 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %38 = load %struct.nfs4_label*, %struct.nfs4_label** %10, align 8
  %39 = call i32 @nfs4_proc_getattr(%struct.nfs_server* %35, %struct.nfs_fh* %36, %struct.nfs_fattr* %37, %struct.nfs4_label* %38, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %67

46:                                               ; preds = %34
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %48 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NFS_ATTR_FATTR_FSID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %54, i32 0, i32 0
  %56 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %57 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %56, i32 0, i32 1
  %58 = call i32 @nfs_fsid_equal(i32* %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %62 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %61, i32 0, i32 0
  %63 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %64 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %63, i32 0, i32 1
  %65 = call i32 @memcpy(i32* %62, i32* %64, i32 4)
  br label %66

66:                                               ; preds = %60, %53, %46
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.nfs4_label*, %struct.nfs4_label** %10, align 8
  %69 = call i32 @nfs4_label_free(%struct.nfs4_label* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %31, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @nfs4_server_capabilities(%struct.nfs_server*, %struct.nfs_fh*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(%struct.nfs_server*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @nfs4_proc_getattr(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*, i32*) #1

declare dso_local i32 @nfs_fsid_equal(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
