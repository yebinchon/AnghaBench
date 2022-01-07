; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_adjust_max.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_adjust_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_filecheck_sysfs_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OCFS2_FILECHECK_MINSIZE = common dso_local global i32 0, align 4
@OCFS2_FILECHECK_MAXSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"Cannot set online file check maximum entry number to %u due to too many pending entries(%u)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_filecheck_sysfs_entry*, i32)* @ocfs2_filecheck_adjust_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_filecheck_adjust_max(%struct.ocfs2_filecheck_sysfs_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_filecheck_sysfs_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_filecheck_sysfs_entry* %0, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OCFS2_FILECHECK_MINSIZE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @OCFS2_FILECHECK_MAXSIZE, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %10
  %18 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %28, %33
  %35 = icmp ult i32 %23, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %17
  %37 = load i32, i32* @ML_NOTICE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %43, %48
  %50 = call i32 @mlog(i32 %37, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %81

53:                                               ; preds = %17
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %56 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %63 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub i32 %67, %68
  %70 = call i32 @ocfs2_filecheck_erase_entries(%struct.ocfs2_filecheck_sysfs_entry* %62, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  br label %75

75:                                               ; preds = %61, %53
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %78 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 4
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %36
  %82 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %4, align 8
  %83 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_filecheck_erase_entries(%struct.ocfs2_filecheck_sysfs_entry*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
