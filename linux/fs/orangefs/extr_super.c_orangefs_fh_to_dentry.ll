; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i64* }
%struct.orangefs_object_kref = type { i64, i32 }

@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"fh_to_dentry: handle %pU, fs_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @orangefs_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @orangefs_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.orangefs_object_kref, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %10, i32 0, i32 1
  %19 = load %struct.fid*, %struct.fid** %7, align 8
  %20 = getelementptr inbounds %struct.fid, %struct.fid* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = call i32 @ORANGEFS_khandle_from(i32* %18, i64* %21, i32 16)
  %23 = load %struct.fid*, %struct.fid** %7, align 8
  %24 = getelementptr inbounds %struct.fid, %struct.fid* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 4
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %10, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %30 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %10, i32 0, i32 1
  %31 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gossip_debug(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %30, i64 %32)
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = call i32 @orangefs_iget(%struct.super_block* %34, %struct.orangefs_object_kref* %10)
  %36 = call %struct.dentry* @d_obtain_alias(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %37

37:                                               ; preds = %17, %16
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %38
}

declare dso_local i32 @ORANGEFS_khandle_from(i32*, i64*, i32) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32*, i64) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @orangefs_iget(%struct.super_block*, %struct.orangefs_object_kref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
