; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_find_root_sec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_find_root_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }

@nfs4_find_root_sec.flav_array = internal constant [5 x i32] [i32 130, i32 131, i32 132, i32 128, i32 129], align 16
@EPERM = common dso_local global i32 0, align 4
@NFS4ERR_WRONGSEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs4_find_root_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_find_root_sec(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %17
  %25 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %26 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %27 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %28 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfs4_lookup_root_sec(%struct.nfs_server* %25, %struct.nfs_fh* %26, %struct.nfs_fsinfo* %27, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %24
  br label %47

46:                                               ; preds = %40
  br label %50

47:                                               ; preds = %45
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %17

50:                                               ; preds = %46, %17
  br label %79

51:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %75, %51
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @nfs4_find_root_sec.flav_array, i64 0, i64 0))
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %58 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %59 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* @nfs4_find_root_sec.flav_array, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nfs4_lookup_root_sec(%struct.nfs_server* %57, %struct.nfs_fh* %58, %struct.nfs_fsinfo* %59, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %56
  br label %75

74:                                               ; preds = %68
  br label %78

75:                                               ; preds = %73
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %52

78:                                               ; preds = %74, %52
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EACCES, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @nfs4_lookup_root_sec(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
