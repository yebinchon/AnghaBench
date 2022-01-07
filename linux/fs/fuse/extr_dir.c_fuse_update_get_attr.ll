; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_update_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_update_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.fuse_inode = type { i32, i32, i32, i32 }

@AT_STATX_FORCE_SYNC = common dso_local global i32 0, align 4
@AT_STATX_DONT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.kstat*, i32, i32)* @fuse_update_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_update_get_attr(%struct.inode* %0, %struct.file* %1, %struct.kstat* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kstat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.kstat* %2, %struct.kstat** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %14)
  store %struct.fuse_inode* %15, %struct.fuse_inode** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @AT_STATX_FORCE_SYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %44

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @AT_STATX_DONT_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @READ_ONCE(i32 %31)
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %38 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (...) @get_jiffies_64()
  %41 = call i32 @time_before64(i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %36, %35
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @forget_all_cached_acls(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load %struct.kstat*, %struct.kstat** %8, align 8
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = call i32 @fuse_do_getattr(%struct.inode* %50, %struct.kstat* %51, %struct.file* %52)
  store i32 %53, i32* %12, align 4
  br label %72

54:                                               ; preds = %44
  %55 = load %struct.kstat*, %struct.kstat** %8, align 8
  %56 = icmp ne %struct.kstat* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.kstat*, %struct.kstat** %8, align 8
  %60 = call i32 @generic_fillattr(%struct.inode* %58, %struct.kstat* %59)
  %61 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %62 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kstat*, %struct.kstat** %8, align 8
  %65 = getelementptr inbounds %struct.kstat, %struct.kstat* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %67 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kstat*, %struct.kstat** %8, align 8
  %70 = getelementptr inbounds %struct.kstat, %struct.kstat* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %57, %54
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %12, align 4
  ret i32 %73
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @time_before64(i32, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

declare dso_local i32 @fuse_do_getattr(%struct.inode*, %struct.kstat*, %struct.file*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
