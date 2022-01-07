; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_uniform_client_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_init_uniform_client_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i8*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@nfs4_client_id_uniquifier = common dso_local global i8* null, align 8
@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Linux NFSv%u.%u %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*)* @nfs4_init_uniform_client_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_init_uniform_client_string(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %6 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

11:                                               ; preds = %1
  %12 = load i8*, i8** @nfs4_client_id_uniquifier, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %19 = call i32 @nfs4_init_uniquifier_client_string(%struct.nfs_client* %18)
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %11
  %21 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = add nsw i32 32, %26
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %20
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i64 %39, i32 %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %38
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %56 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scnprintf(i8* %48, i64 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %66 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %47, %44, %35, %17, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @nfs4_init_uniquifier_client_string(%struct.nfs_client*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
