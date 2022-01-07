; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_calc_d_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_calc_d_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_readdir_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ovl_cache_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OVL_IMPURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_readdir_data*, %struct.ovl_cache_entry*)* @ovl_calc_d_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_calc_d_ino(%struct.ovl_readdir_data* %0, %struct.ovl_cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_readdir_data*, align 8
  %5 = alloca %struct.ovl_cache_entry*, align 8
  store %struct.ovl_readdir_data* %0, %struct.ovl_readdir_data** %4, align 8
  store %struct.ovl_cache_entry* %1, %struct.ovl_cache_entry** %5, align 8
  %6 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %7 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %13 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ovl_xino_bits(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %56

20:                                               ; preds = %11
  %21 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %56

27:                                               ; preds = %20
  %28 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %29 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %56

33:                                               ; preds = %27
  %34 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %54, label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* @OVL_IMPURE, align 4
  %48 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %4, align 8
  %49 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @d_inode(%struct.TYPE_2__* %50)
  %52 = call i64 @ovl_test_flag(i32 %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %41
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %32, %26, %19, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @ovl_xino_bits(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ovl_test_flag(i32, i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
