; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_lookup_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_lookup_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32 }

@NFS_UINT_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64*, %struct.idmap*)* @nfs_idmap_lookup_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_lookup_id(i8* %0, i64 %1, i8* %2, i64* %3, %struct.idmap* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.idmap*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.idmap* %4, %struct.idmap** %10, align 8
  %16 = load i32, i32* @NFS_UINT_MAXLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @NFS_UINT_MAXLEN, align 4
  %24 = load %struct.idmap*, %struct.idmap** %10, align 8
  %25 = call i64 @nfs_idmap_get_key(i8* %20, i64 %21, i8* %22, i8* %19, i32 %23, %struct.idmap* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %15, align 4
  br label %39

31:                                               ; preds = %5
  %32 = call i32 @kstrtol(i8* %19, i32 10, i64* %13)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %13, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %15, align 4
  %41 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nfs_idmap_get_key(i8*, i64, i8*, i8*, i32, %struct.idmap*) #2

declare dso_local i32 @kstrtol(i8*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
