; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_lookup_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32 }

@NFS_UINT_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i8*, i64, %struct.idmap*)* @nfs_idmap_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_idmap_lookup_name(i32 %0, i8* %1, i8* %2, i64 %3, %struct.idmap* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.idmap*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.idmap* %4, %struct.idmap** %11, align 8
  %17 = load i32, i32* @NFS_UINT_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = trunc i64 %18 to i32
  %23 = call i32 @nfs_map_numeric_to_string(i32 %21, i8* %20, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.idmap*, %struct.idmap** %11, align 8
  %29 = call i64 @nfs_idmap_get_key(i8* %20, i32 %24, i8* %25, i8* %26, i64 %27, %struct.idmap* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %6, align 8
  store i32 1, i32* %16, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %6, align 8
  store i32 1, i32* %16, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfs_map_numeric_to_string(i32, i8*, i32) #2

declare dso_local i64 @nfs_idmap_get_key(i8*, i32, i8*, i8*, i64, %struct.idmap*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
