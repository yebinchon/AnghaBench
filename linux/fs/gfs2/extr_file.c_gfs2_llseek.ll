; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @gfs2_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.gfs2_inode* @GFS2_I(i32 %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %7, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %46 [
    i32 130, label %17
    i32 131, label %33
    i32 129, label %37
    i32 132, label %41
    i32 128, label %41
  ]

17:                                               ; preds = %3
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LM_ST_SHARED, align 4
  %22 = load i32, i32* @LM_FLAG_ANY, align 4
  %23 = call i32 @gfs2_glock_nq_init(i32 %20, i32 %21, i32 %22, %struct.gfs2_holder* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @generic_file_llseek(%struct.file* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  br label %32

32:                                               ; preds = %26, %17
  br label %49

33:                                               ; preds = %3
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @gfs2_seek_data(%struct.file* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @gfs2_seek_hole(%struct.file* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %49

41:                                               ; preds = %3, %3
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @generic_file_llseek(%struct.file* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %41, %37, %33, %32
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_seek_data(%struct.file*, i32) #1

declare dso_local i32 @gfs2_seek_hole(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
