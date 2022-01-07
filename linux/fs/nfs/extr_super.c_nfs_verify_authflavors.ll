; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_verify_authflavors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_verify_authflavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"NFS: specified auth flavors not supported by server\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"NFS: using auth flavor %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_parsed_mount_data*, i64*, i32)* @nfs_verify_authflavors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_verify_authflavors(%struct.nfs_parsed_mount_data* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i64*, i64** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %22, i32 0, i32 1
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @nfs_auth_info_match(%struct.TYPE_2__* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %52

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @RPC_AUTH_NULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  br label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @MOUNT, align 4
  %49 = call i32 (i32, i8*, ...) @dfprintk(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %40, %27
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @MOUNT, align 4
  %57 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dfprintk(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @nfs_auth_info_match(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @dfprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
