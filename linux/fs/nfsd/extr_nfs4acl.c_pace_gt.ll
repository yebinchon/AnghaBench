; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_pace_gt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_pace_gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_entry = type { i64, i32, i32 }

@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.posix_acl_entry*, %struct.posix_acl_entry*)* @pace_gt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pace_gt(%struct.posix_acl_entry* %0, %struct.posix_acl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.posix_acl_entry*, align 8
  %5 = alloca %struct.posix_acl_entry*, align 8
  store %struct.posix_acl_entry* %0, %struct.posix_acl_entry** %4, align 8
  store %struct.posix_acl_entry* %1, %struct.posix_acl_entry** %5, align 8
  %6 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %7 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %5, align 8
  %10 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %15 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %5, align 8
  %18 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %24 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACL_USER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %30 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %5, align 8
  %33 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @uid_gt(i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %22
  %37 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %38 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ACL_GROUP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %4, align 8
  %44 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %5, align 8
  %47 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gid_gt(i32 %45, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %28, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @uid_gt(i32, i32) #1

declare dso_local i32 @gid_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
