; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_probe_fsinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_probe_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)* }
%struct.nfs_fsinfo = type { i32, i64, %struct.nfs_fattr* }
%struct.nfs_pathconf = type { i64, %struct.nfs_fattr* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs_fsinfo, align 8
  %9 = alloca %struct.nfs_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs_pathconf, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 1
  %14 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %14, %struct.nfs_client** %9, align 8
  %15 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %16 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*)** %18, align 8
  %20 = icmp ne i32 (%struct.nfs_server*, %struct.nfs_fh*)* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nfs_server*, %struct.nfs_fh*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*)** %25, align 8
  %27 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %28 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %29 = call i32 %26(%struct.nfs_server* %27, %struct.nfs_fh* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %82

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 2
  store %struct.nfs_fattr* %36, %struct.nfs_fattr** %37, align 8
  %38 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  %42 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %43 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)** %45, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %48 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %49 = call i32 %46(%struct.nfs_server* %47, %struct.nfs_fh* %48, %struct.nfs_fsinfo* %8)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %82

54:                                               ; preds = %35
  %55 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %56 = call i32 @nfs_server_set_fsinfo(%struct.nfs_server* %55, %struct.nfs_fsinfo* %8)
  %57 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %63 = getelementptr inbounds %struct.nfs_pathconf, %struct.nfs_pathconf* %11, i32 0, i32 1
  store %struct.nfs_fattr* %62, %struct.nfs_fattr** %63, align 8
  %64 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %65 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %64)
  %66 = load %struct.nfs_client*, %struct.nfs_client** %9, align 8
  %67 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)*, i64 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_pathconf*)** %69, align 8
  %71 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %72 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %73 = call i64 %70(%struct.nfs_server* %71, %struct.nfs_fh* %72, %struct.nfs_pathconf* %11)
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.nfs_pathconf, %struct.nfs_pathconf* %11, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %79 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %61
  br label %81

81:                                               ; preds = %80, %54
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %52, %32
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nfs_server_set_fsinfo(%struct.nfs_server*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
