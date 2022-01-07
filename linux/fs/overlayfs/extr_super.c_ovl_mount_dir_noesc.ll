; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_mount_dir_noesc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_mount_dir_noesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"overlayfs: empty lowerdir\0A\00", align 1
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"overlayfs: failed to resolve '%s': %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"overlayfs: filesystem on '%s' not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"overlayfs: '%s' not a directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*)* @ovl_mount_dir_noesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_mount_dir_noesc(i8* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %17 = load %struct.path*, %struct.path** %5, align 8
  %18 = call i32 @kern_path(i8* %15, i32 %16, %struct.path* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  br label %49

25:                                               ; preds = %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.path*, %struct.path** %5, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ovl_dentry_weird(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.path*, %struct.path** %5, align 8
  %38 = getelementptr inbounds %struct.path, %struct.path* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @d_is_dir(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %42, %33
  %47 = load %struct.path*, %struct.path** %5, align 8
  %48 = call i32 @path_put_init(%struct.path* %47)
  br label %49

49:                                               ; preds = %46, %21, %12
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i64 @ovl_dentry_weird(i32) #1

declare dso_local i32 @d_is_dir(i32) #1

declare dso_local i32 @path_put_init(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
