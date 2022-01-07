; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_uniquifier_client_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_uniquifier_client_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i8*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@nfs4_client_id_uniquifier = common dso_local global i32 0, align 4
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Linux NFSv%u.%u %s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_init_uniquifier_client_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_init_uniquifier_client_string(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %6 = load i32, i32* @nfs4_client_id_uniquifier, align 4
  %7 = call i32 @strlen(i32 %6)
  %8 = add nsw i32 32, %7
  %9 = add nsw i32 %8, 1
  %10 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = add nsw i32 %9, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc(i64 %28, i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %57

36:                                               ; preds = %27
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %40 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @nfs4_client_id_uniquifier, align 4
  %48 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %49 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @scnprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %47, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %56 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %36, %33, %24
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
